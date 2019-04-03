package main

import (
	"fmt"
	"io/ioutil"
	"log"
)

func main() {
	files, err := ioutil.ReadDir("./")
	if err != nil {
		log.Fatal(err)
	}

	baseStr := "# docker/docker-compose/kubernetes scripts\n"

	r := ""
	for _, f := range files {
		if f.IsDir() && f.Name() != ".git" {
			r += fmt.Sprintf("- [%s](./%s)\n", f.Name(), f.Name())
		}
	}
	ret := baseStr + "\n" + r
	ioutil.WriteFile("README.md", []byte(ret), 0666)
}
