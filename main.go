package main

import (
	"fmt"
	"github.com/joho/godotenv"
	"log"
	"os"
)

func main() {
	// Load environment variables from .env file
	err := godotenv.Load()
	if err != nil {
		log.Fatal("Error loading .env file")
	}

	// Get environment variables
	a := os.Getenv("A")
	b := os.Getenv("B")
	fmt.Printf("%s, %s!\n", a, b)
}
