### DOCKER
# ¯¯¯¯¯¯¯¯¯¯¯


docker.build: ##
	docker build -t reactjs-sample:latest .

docker.run: ##
	docker run -it -p 80:80 --rm reactjs-sample:latest

docker.tag: ## vars: version
	docker tag reactjs-sample:latest kfirfer/reactjs-sample:${version}

docker.push: ## vars: version
	docker push kfirfer/reactjs-sample:${version}

