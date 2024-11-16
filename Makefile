.PHONY: build buildmac run nohuprun clean help

BIN_FILE="jenkins-test"

build:
	CGO_ENABLED=1 go build -v -o bin/ ${BIN_FILE}

buildmac:
	go build -o bin/ ${BIN_FILE}

run:
	@go run ./bin/exchange

nohuprun:
	nohup ./bin/exchange &

clean:
	@if [ -f ${BINARY} ] ; then rm ${BINARY} ; fi

help:
	@echo "make build - 编译 Go 代码, 生成二进制文件"
	@echo "make run - 直接运行 Go 代码"
	@echo "make nohuprun - nohup 模式运行 Go 代码"
	@echo "make clean - 移除二进制文件和 vim swap files"
