# Use the official Golang image as the base image
FROM golang:1.21

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the source code to the container
COPY . .

# Build the Go app
RUN go build -o url-shortener .

# Expose port 5000 to the outside world
EXPOSE 5000

# Command to run the executable
CMD ["./url-shortener"]

