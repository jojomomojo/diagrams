all: go-diagrams/app.png
	open go-diagrams/app.png

go-diagrams/app.dot: main
	rm -rf go-diagrams
	./main

go-diagrams/app.png: go-diagrams/app.dot
	cd go-diagrams && dot -Tpng app.dot > app.png.1 && mv app.png1 app.png

main: main.go
	go build main.go


