# Sử dụng image chính thức của Golang
FROM golang:1.22-alpine

# Đặt thư mục làm việc
WORKDIR /app

# Sao chép file go vào container
COPY . .

# Biên dịch chương trình Go
RUN go build -o main .

# Chạy chương trình
CMD ["./main"]
