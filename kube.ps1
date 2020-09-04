PS C:\Users\Virginia Aquino\kube> kubectl cluster-info
Kubernetes master is running at https://34.67.16.21
GLBCDefaultBackend is running at https://34.67.16.21/api/v1/namespaces/kube-system/services/default-http-backend:http/prHeapster is running at https://34.67.16.21/api/v1/namespaces/kube-system/services/heapster/proxy
KubeDNS is running at https://34.67.16.21/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://34.67.16.21/api/v1/namespaces/kube-system/services/https:metrics-server:/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
PS C:\Users\Virginia Aquino\kube> kubectl config get-contexts
CURRENT   NAME                                             CLUSTER                                          AUTHINFO    ode-263216_us-central1-c_cluster-1
PS C:\Users\Virginia Aquino\kube> choco install kubernetes-helm
