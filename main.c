#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>

/* Include linux specific libraries */
#ifdef linux
#   include <sys/socket.h>
#   include <netinet/ip.h>
#   include <netinet/in.h>
#   include <arpa/inet.h>
#   include <netdb.h>
#else
    LOG_ERROR("Must be running a Linux distribution to compile this source.");
#endif

#include "vendor/logging/logging.h"

/* Implementation specific constants; can be changed. */
#define PORT 8080
#define MAX_CLIENTS 8
#define BUFFER_LEN 2048

int main(int argc, char* argv[])
{
    int socket_fd; // Hold id for socket file descriptor
    int client_fd[MAX_CLIENTS] = { NULL };
    int opt_val; // Used for `const void* option_value` in setsockopt
    char buffer[BUFFER_LEN] = { 0 }; // Buffer for out data
    struct hostent* host;
    struct sockaddr_in addr;
    int addrlen = sizeof(addr);
    char status = 0; // A byte to contain status codes

    memset(&addr, 0, sizeof(addr)); // Ensure the memory is zeroed before use

    socket_fd = socket(AF_INET, SOCK_STREAM, IPPROTO_IP); // Create socket file descriptor
    if (socket_fd == -1) LOG_ERROR("Error in creation of socket.  %s", strerror(errno));

    status = setsockopt(socket_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt_val, sizeof(opt_val));
    LOG_IF_ERROR(status, "Failed to set socket options.  %s", strerror(errno));

    addr.sin_addr.s_addr = INADDR_ANY;
    addr.sin_family = AF_INET;
    addr.sin_port = htons( PORT );

    status = bind(socket_fd, (struct sockaddr*) &addr, sizeof(addr));

    if (status < 0)
    {
        LOG_ERROR("Unable to bind server socket! %s", strerror(errno));
        return EXIT_FAILURE;
    }

    status = listen(socket_fd, MAX_CLIENTS);

    if (status < 0)
    {
        LOG_ERROR("Failed to start listening for clients!  %s", strerror(errno));
        return EXIT_FAILURE;
    }

    client_fd[0] = accept(socket_fd, (struct sockaddr*)&addr, (socklen_t*)&addrlen);

    if (client_fd[0] < 0)
    {
        LOG_ERROR("Error when accepting client to socket!  %s", strerror(errno));
        return EXIT_FAILURE;
    }

    read(client_fd[0], buffer, BUFFER_LEN);
    printf("%s\n", buffer);

    return EXIT_SUCCESS;
}