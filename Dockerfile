# Use the official Alpine base image
FROM golang:1.22.3-alpine

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Build the Go app
RUN go build -o myapp .

# Command to run the executable
CMD ["./myapp"]