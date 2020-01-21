**Project structure**
* proxy - TCP proxy handles sentinel, redis and client connections (written in Golang)
* redis - contains Redis modules
    * e
* redis-sentinel-proxy-charm





**kubernetes rights:**
```
cat <<EOF | kubectl apply -f -
apiVersion: rbac.authorization.k8s.io/v1beta1
kind: ClusterRoleBinding
metadata:
  name: read-pods
  namespace: kube-system
subjects:
  - kind: ServiceAccount
    name: default
    namespace: gitlab-managed-apps
roleRef:
  kind: ClusterRole
  name: cluster-admin
  apiGroup: rbac.authorization.k8s.io
EOF
```