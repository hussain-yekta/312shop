

db:
	kubectl apply -f db-templates/master-configmap.yaml
	kubectl apply -f db-templates/master-svc.yaml
	kubectl apply -f db-templates/secrets.yaml
	kubectl apply -f db-templates/master-statefulset.yaml

opencart:
	kubectl apply -f opencart-templates/svc.yaml
	kubectl apply -f opencart-templates/secrets.yaml
	kubectl apply -f opencart-templates/opencart-pvc.yaml
	kubectl apply -f opencart-templates/deployment.yaml

delete-db:
	kubectl delete -f db-templates/master-configmap.yaml --ignore-not-found
	kubectl delete -f db-templates/master-svc.yaml --ignore-not-found
	kubectl delete -f db-templates/secrets.yaml --ignore-not-found
	kubectl delete -f db-templates/master-statefulset.yaml --ignore-not-found

delete-opencart:
	kubectl delete -f opencart-templates/svc.yaml --ignore-not-found
	kubectl delete -f opencart-templates/secrets.yaml --ignore-not-found
	kubectl delete -f opencart-templates/deployment.yaml --ignore-not-found
	kubectl delete -f opencart-templates/opencart-pvc.yaml --ignore-not-found
