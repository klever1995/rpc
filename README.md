# RPC with Ruby in Docker

A simple RPC server using Ruby, Sinatra, and Dockerized for easy execution in any environment.

## Description

This is a basic RPC server implemented with Ruby using the Sinatra framework. The server listens for HTTP POST requests at the `/rpc` endpoint and responds with a `"Hello, World!"` message. The `/` endpoint serves an HTML page (`index.html`) for client interaction.

## Technologies Used

- Ruby
- Sinatra (Ruby web framework)
- Docker

## Prerequisites

To run this project, you need to have Docker installed on your machine. If you don't have it, you can download it from [here](https://www.docker.com/products/docker-desktop).

## Instructions to Run the Project

1. **Clone this repository:**

   If you haven't cloned the repository yet, you can do so with the following command:

   ```bash
   git clone git clone git clone https://github.com/klever1995/rpc.git

2. **Build the Docker image:**

   Before running the container, build the Docker image using the following command:

   ```bash
   docker build -t ksrobalino/rpc:v1 .

3. **Push the image to Docker Hub (if needed):**

   If you'd like to upload the image to Docker Hub for others to use, you can do so with:

   ```bash
   docker push ksrobalino/rpc:v1

4. **Run the Docker container:**

   After building the image, run the container with the following command:

   ```bash
   docker run -d -p 4567:4567 --name rpc_container ksrobalino/rpc:v1

5. **Access the WebSocket server:**

   Once the container is running, you can access the server at the following URL
   ```bash
   http://localhost:4567
   
   The server will serve an HTML page and respond to RPC requests at /rpc

6. **Test the connection:**

- **When you send a POST request to the /rpc endpoint**, the server will respond with:
```json
  { "message": "Hello, World!" }
```

### Example of RPC Communication:

#### Client:
Send a POST request to `http://localhost:4567/rpc`.

Example using `curl`:

```bash
curl -X POST http://localhost:4567/rpc
```

#### Server:
The server will respond with the following JSON message:

```json
{ "message": "Hello, World!" }




