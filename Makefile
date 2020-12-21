.DEFAULT_GOAL := help


### QUICK
# ¯¯¯¯¯¯¯

build: docker.build
start: docker.run

include attachments/makefiles/help.mk
include attachments/makefiles/docker.mk
include attachments/makefiles/helm.mk
