### DOCKER
# ¯¯¯¯¯¯¯¯¯¯¯


docker.build: ##
	docker build -t reactjs-sample:latest .

docker.run: ##
	docker run -it -p 8081:8081 --rm reactjs-sample:latest

docker.tag: ## vars: version
	docker tag reactjs-sample:latest kfirfer/reactjs-sample:${version}

docker.push: ## vars: version
	docker push kfirfer/reactjs-sample:${version}

docker.build.tag.push: ## vars: version
	$(MAKE) docker.build
	$(MAKE) docker.tag
	$(MAKE) docker.push
