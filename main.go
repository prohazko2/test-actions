package main

import (
	"fmt"
	"time"
)

func main() {
	for {
		fmt.Print(".")
		time.Sleep(1 * time.Second)
	}
}
