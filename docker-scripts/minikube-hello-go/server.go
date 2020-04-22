package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func (w http.ResponseWriter, r *http.Request) {
        fmt.Println("[v1] A request.")
		fmt.Fprintf(w, "Welcome to minikube go server v1!")
	})

	http.ListenAndServe(":8080", nil)
}
