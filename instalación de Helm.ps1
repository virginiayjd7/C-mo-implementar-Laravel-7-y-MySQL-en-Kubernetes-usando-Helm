PS C:\WINDOWS\system32> choco install kubernetes-helm
Chocolatey v0.10.15
Installing the following packages:
kubernetes-helm
By installing you accept licenses for the packages.
Progress: Downloading kubernetes-helm 3.3.1... 100%

kubernetes-helm v3.3.1 [Approved]
kubernetes-helm package files install completed. Performing other installation steps.
The package kubernetes-helm wants to run 'chocolateyInstall.ps1'.
Note: If you don't run this script, the installation will fail.
Note: To confirm automatically next time, use '-y' or consider:
choco feature enable -n allowGlobalConfirmation
Do you want to run the script?([Y]es/[A]ll - yes to all/[N]o/[P]rint): Y

Downloading kubernetes-helm 64 bit
  from 'https://get.helm.sh/helm-v3.3.1-windows-amd64.zip'
Progress: 100% - Completed download of C:\Users\Virginia Aquino\AppData\Local\Temp\chocolatey\kubernetes-helm\3.3.1\helm-v3.3.1-windows-amd64.zip (12.13 MB).
Download of helm-v3.3.1-windows-amd64.zip (12.13 MB) completed.
Hashes match.
Extracting C:\Users\Virginia Aquino\AppData\Local\Temp\chocolatey\kubernetes-helm\3.3.1\helm-v3.3.1-windows-amd64.zip to C:\ProgramData\chocolatey\lib\kubernetes-helm\tools...
C:\ProgramData\chocolatey\lib\kubernetes-helm\tools
 ShimGen has successfully created a shim for helm.exe
 The install of kubernetes-helm was successful.
  Software installed to 'C:\ProgramData\chocolatey\lib\kubernetes-helm\tools'

Chocolatey installed 1/1 packages.
 See the log for details (C:\ProgramData\chocolatey\logs\chocolatey.log).

PS C:\WINDOWS\system32> helm repo add stable https://kubernetes-charts.storage.googleapis.com
"stable" has been added to your repositories
PS C:\WINDOWS\system32>
PS C:\WINDOWS\system32> helm repo add stable https://kubernetes-charts.storage.googleapis.com
"stable" has been added to your repositories
PS C:\WINDOWS\system32> helm install dashboard-demo stable/kubernetes-dashboard --set rbac.clusterAdminRole=true
WARNING: This chart is deprecated
NAME: dashboard-demo
LAST DEPLOYED: Fri Sep  4 05:12:12 2020
NAMESPACE: default
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
*********************************************************************************
*** PLEASE BE PATIENT: kubernetes-dashboard may take a few minutes to install ***
*********************************************************************************

Get the Kubernetes Dashboard URL by running:
  export POD_NAME=$(kubectl get pods -n default -l "app=kubernetes-dashboard,release=dashboard-demo" -o jsonpath="{.items[0].metadata.name}")
  echo https://127.0.0.1:8443/
  kubectl -n default port-forward $POD_NAME 8443:8443
PS C:\WINDOWS\system32>
PS C:\WINDOWS\system32> helm list
NAME            NAMESPACE       REVISION        UPDATED                                 STATUS          CHART                           APP VERSION
dashboard-demo  default         1               2020-09-04 05:12:12.6105284 -0500 -05   deployed        kubernetes-dashboard-1.11.1     1.10.1
PS C:\WINDOWS\system32> kubectl get services
NAME                                  TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
dashboard-demo-kubernetes-dashboard   ClusterIP   10.8.1.143   <none>        443/TCP   86s
kubernetes                            ClusterIP   10.8.0.1     <none>        443/TCP   4h9m
PS C:\WINDOWS\system32> helm upgrade dashboard-demo stable/kubernetes-dashboard --set fullnameOverride="kubernetes-dashboard" --reuse-values
WARNING: This chart is deprecated
Release "dashboard-demo" has been upgraded. Happy Helming!
NAME: dashboard-demo
LAST DEPLOYED: Fri Sep  4 05:14:41 2020
NAMESPACE: default
STATUS: deployed
REVISION: 2
TEST SUITE: None
NOTES:
*********************************************************************************
*** PLEASE BE PATIENT: kubernetes-dashboard may take a few minutes to install ***
*********************************************************************************

Get the Kubernetes Dashboard URL by running:
  export POD_NAME=$(kubectl get pods -n default -l "app=kubernetes-dashboard,release=dashboard-demo" -o jsonpath="{.items[0].metadata.name}")
  echo https://127.0.0.1:8443/
  kubectl -n default port-forward $POD_NAME 8443:8443
PS C:\WINDOWS\system32> kubectl get services
NAME                   TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
kubernetes             ClusterIP   10.8.0.1     <none>        443/TCP   4h11m
kubernetes-dashboard   ClusterIP   10.8.11.7    <none>        443/TCP   12s
PS C:\WINDOWS\system32>
PS C:\WINDOWS\system32> kubectl proxy
Starting to serve on 127.0.0.1:8001