package main

import (
	"github.com/aws/aws-xray-sdk-go/xray"
	"net/http"
)

func main() {
	xray.Configure(xray.Config{
		DaemonAddr:     "127.0.0.1:2000", // default
		ServiceVersion: "1.2.3",
	})

	http.Handle("/", xray.Handler(xray.NewFixedSegmentNamer("myApp"), http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Hello!"))
	})))
	http.ListenAndServe(":80", nil)
}
