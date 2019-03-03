# makefile hh

all :
	docker restart beautiful-jekyll
	
build-docker :
	docker build -t beautiful-jekyll "$(PWD)"

run-docker :
	docker run -d -p 4000:4000 --name beautiful-jekyll -v "$(PWD)":/srv/jekyll beautiful-jekyll
