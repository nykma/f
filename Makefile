prepare :
	cp stack{-sample,}.yml
	faas-cli template pull https://github.com/nykma/openfaas-templates

build :
	faas-cli build --parallel 2

push :
	faas-cli up --gateway $$OPENFAAS_URL

delete :
	faas-cli remove --gateway $$OPENFAAS_URL

.PHONY: prepare build push delete
