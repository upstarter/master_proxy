ZIPKIN_POD_NAME=$(shell kubectl -n istio-system get-pod -l app=zipkin -o jsonpath='{.items[0].metadata.name}')
SERVICEGRAPH_POD_NAME=$(shell kubectl -n istio-system get pod -l app=servicegraph -o jsonpath='{.items[0].metadata.name}')
GRAFANA_POD_NAME=$(shell kubectl -n istio-system get pod -l app=grafana -o jsonpath='{.items[0].metadata.name}')

deploy:
	kubectl apply -f ./kube/services.yaml
	kubectl apply -f ./kube/services-ingress.yaml
	kubectl apply -f ./kube/pod-<%= @master_proxy_name %>.yaml
deploy-info:
	kubectl get pods && kubetcl get svc && kubectl get ingress

egress:
	istioctl create -f ./istio/networking/egress.yaml
route:
	istioctl create -f ./istio/networking/routing.yaml
retry:
	istioctl replace -f ./istio/networking/routing-retries.yaml

start-monitoring-services:
	$(shell kubectl -n isio-system port-forward $(ZIPKIN_POD_NAME) 9411:9411 & kubectl -n istio-system port-forward
	 (SERVICEGRAPH_POD_NAME) 8088:8088 & kubectl -n istio-system port-forward $(GRAFANA_POD_NAME) 3010:3010)
