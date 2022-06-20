# # Create build stage based on buster image
# FROM golang:1.16-buster AS builder
# # Create working directory under /app
# WORKDIR /app
# # Copy over all go config (go.mod, go.sum etc.)
# COPY helloworld.go /
# # Install any required modules
# RUN go build -o /helloworld /helloworld.go


FROM golang:1.16-alpine
COPY helloworld.go /
RUN go build -o /helloworld /helloworld.go
CMD /helloworld