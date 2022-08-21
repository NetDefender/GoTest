package main

/*
	In console write:
	go env GO111MODULE=off

	It is when you write code outside of GO path
*/

import "fmt"

func Worker(values map[string]float64) float64 {
	v := values["hola"]
	fmt.Printf("%v", v)
	return v
}

func main() {
	v := map[string]float64{
		"hola": 0.1,
	}
	Worker(v)
	fmt.Println("Hello World")
}
