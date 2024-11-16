package main

import (
	"fmt"
	"time"
)

func main() {
	for {
		fmt.Println("Hello, World!")
		time.Sleep(7 * time.Second)
	}
}
