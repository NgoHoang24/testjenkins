FROM golang:latest
LABEL authors="ACER"
# Set the working directory
WORKDIR /go/src/app

 # Copy mã nguồn vào container
COPY . .
 # Biên dịch ứng dụng Go
RUN go build -o hello.

 # Chạy ứng dụng khi container được khởi động
 CMD ["./hello"]
ENTRYPOINT ["top", "-b"]