# use official golang image as the base image
FROM golang:1.22-alpine 
# Install build dependencies for CGO and SQLite
RUN apk add --no-cache gcc musl-dev sqlite

# set working directory inside the container
WORKDIR /app 

# copy go.mod and go.sum files first (for dependency caching)
COPY go.mod go.sum ./ 

# download all dependencies 
RUN go mod download 

# copy the rest of application code 
COPY . .

# build the GO application with CGO enabled
ENV CGO_ENABLED=1
RUN go build -o main . 

# expose the port on which the application will run 
EXPOSE 8081

# command to run the executable 
CMD ["./main"]