# beego 开发环境
FROM wzshiming/golang:latest
RUN go get github.com/beego/bee
RUN go install github.com/beego/bee
WORKDIR /tmp/src/app
CMD bee run -gendoc=true -downdoc=true