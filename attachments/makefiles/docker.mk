### DOCKER
# ¯¯¯¯¯¯¯¯¯¯¯


docker.build: ##
	docker build -t reactjs-sample:latest .

docker.run: ##
	docker run -it -p 80:80 --rm reactjs-sample:latest

