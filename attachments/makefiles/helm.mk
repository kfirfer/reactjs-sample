### HELM
# ¯¯¯¯¯¯¯¯


helm.charts.reactjs-sample.install: ##
	helm upgrade -i reactjs-sample attachments/kubernetes/reactjs-sample --namespace reactjs-sample --create-namespace


