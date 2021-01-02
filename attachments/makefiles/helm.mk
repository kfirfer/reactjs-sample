### HELM
# ¯¯¯¯¯¯¯¯


helm.charts.reactjs-sample.install: ##
	helm upgrade -i reactjs-sample attachments/kubernetes/reactjs-sample --namespace reactjs-sample --create-namespace

helm.charts.reactjs-sample.install.hardcoded: ##
	helm upgrade -i reactjs-sample attachments/kubernetes/reactjs-sample --values attachments/kubernetes/reactjs-sample/values-custom.yaml --namespace reactjs-sample


