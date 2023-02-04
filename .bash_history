wget https://raw.githubusercontent.com/fazlurkh/cluster/main/ubu-pre.sh
chmod 755 ubu-pre.sh
wget https://raw.githubusercontent.com/fazlurkh/cluster/main/ubu-pre.sh
chmod 755 ubu-pre.sh
vim ubu-pre.sh 
sh ubu-pre.sh 
cat > /etc/hosts <<EOF
10.0.0.4 kube-master
10.0.0.5 kube-node1
10.0.0.6 kube-node2
127.0.0.1 localhost
EOF

cat > /etc/hosts <<EOF
10.0.0.4 kube-master
10.0.0.5 kube-node1
10.0.0.6 kube-node2
127.0.0.1 localhost
EOF

kubeadm init | tee bootstrap.txt
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
kubectl getnodes
kubectl get nodes
kubectl label node eoc-kubenode1 node-role.kubernetes.io/node=
kubectl label node kube-node1 node-role.kubernetes.io/node=
kubectl label node kube-node2 node-role.kubernetes.io/node=
hostnamectl set-hostname kube-master
wget https://raw.githubusercontent.com/fazlurkh/cluster/main/ubu-pre.sh
apt-get update -y
wget https://raw.githubusercontent.com/fazlurkh/cluster/main/ubu-pre.sh
apt-get install wget -y
wget https://raw.githubusercontent.com/fazlurkh/cluster/main/ubu-pre.sh
bash
kubectl --help
kubectl api-resources
kubectl api-resources | wc -l
kubectl api-resources
kubectl --help
kubectl explain pod
kubectl explain pod --recursive
kubectl explain pod --recursive | wc -l
kubectl explain pod --recursive
kubectl explain services --recursive
kubectl run --help
kubectl run app1 --image nginx
kubectl get pods
k
curl 10.32.0.2
kubectl describe pod app1
kubectl get pods
kubectl run demo --image something --dry-run=client -o yaml
kubectl run demo --image something --dry-run=client -o json
kubectl run demo --image something --dry-run=client -o yaml > learnpod.yaml
ls
vim learnpod.yaml
kubectl apply -f learnpod.yaml
kubectl get pods
kubectl run production-web --image httpd --dry-run=client 
kubectl run production-web --image httpd --dry-run=server
kubectl logs production-web
kubectl logs app1
watch kubectl get pods
kubectl api-resources | grep -i rs
kubectl get pods
kubectl delete all --all
watch kubectl get pods
kubectl get pods -o wide
vim learnpod.yaml 
vim RS.yml 
kubectl run 
kubectl get pods
kubectl run app1 --image nginx client

kubectl run app1 --image nginx client server askdgsig kajfi
kubectl run app1 --image alpine  client server askdgsig kajfi
kubectl get pods
kubectl label --help
kubectl label pod app1 business-critical=app
kubectl get pods business-critical=app
kubectl get pods -l business-critical=app
kubectl 
kubectl get pods -l milan=db
kubectl delete pods -l milan=db
kubectl label pod production-web a=apple
kubectl get pods --show-labels
kubectl get nodes --show-labels
kubectl label pod production-web url-info=https://us06web.zoom.us/wc/88375875031/join?track_id=&jmf_code=&meeting_result=&tk=&cap=undefined&refTK=&rn=true&epk=gysV-ekL98NCMbw9MZtQ2RYuYWErMe2wV3VxiWF6HX7F8WJ6jaU.MXOaj7gAVTIA3Ynn&wpk=wcpk%7B0%7D%26%26%26%26wcpk65b6bbfedd25f2862f8d1ec708b9c2e4
kubectl label pod production-web url-info=https://us06web.zoom.us/wc/88375875031/join?track_id
kubectl label pod production-web git-repo=https://raw.githubusercontent.com/EyesOnCloud/kube-pods/main/webserver.yml
kubectl annotate pod production-web git-repo=https://raw.githubusercontent.com/EyesOnCloud/kube-pods/main/webserver.yml
kubectl describe pod production-web
kubectl get pods annotation git-repo=https://raw.githubusercontent.com/EyesOnCloud/kube-pods/main/webserver.yml
kubectl exec production-web -it -c web-container -- /bin/bash
kubectl run test1 --image nginx
kubectl get pods
kubectl exec test1 -it -c test1 -- /bin/bash
kubectl get pods
kubectl get pods -o wide
curl 10.32.0.2
ls
vim learnpod.yaml 
kubectl apply -f learnpod.yaml 
vim learnpod.yaml 
kubectl apply -f learnpod.yaml 
kubectl describe pod multi-container
kubectl exec multi-container -c queing-server -- /bin/bash
kubectl exec multi-container -c queing-server -- /bash
kubectl exec multi-container -c queing-server -- sh
kubectl exec multi-container -it -c queing-server -- sh
kubectl exec multi-container -it -c mesaging-server -- sh
vim learnpod.yaml 
kubectl get pods
kubectl get pods -o wide
kubectl get pods
kubectl delete pod  test1
kubectl run test1 --image nginx 
kubectl run test2 --image nginx 
kubectl run test3 --image nginx 
kubectl run test4 --image nginx 
kubectl explain pod --recursive | grep -i "replicas"
wget https://raw.githubusercontent.com/EyesOnCloud/ReplicaSet/main/RS.yml
vim RS.yml 
kubectl apply -f RS.yml 
kubectl delete pod prod-web-xc225
kubectl delete pod prod-web-7kddl prod-web-9xkx8 prod-web-cs7b7 prod-web-d9qcx
vim RS.yml 
kubectl apply -f RS.yml 
kubectl scale rs prod-web --replicas 25
kubectl get rs
kubectl delete pod prod-web-jszhz
kubectl get pods --show-labels
history
kubectl get nodes
vim first-pod.yml 
kubectl get pods -o wide
kubectl delete pod first-pod
kubectl apply -f first-pod.yml 
watch kubectl get all
vim web-app-dep.yml 
watch kubectl get all
tcpdump -n -i any
kubectl get nodes
kubectl get pods -n kube-system
kubectl get pods coredns-64897985d-7lv4c -o yaml -n kube-system
cd /etc/
ls
cd cni/
ls
cd net.d/
ls
cat 10-weave.conflist 
wq!
cd
kubectl get pods weave-net-7bcj7 -o yaml -n kube-system
ls /var/lib/weave
cat /var/lib/weave/weave-netdata.db
cd
ls
kubectl delete all --all
ls
docker container ls
docker container inspect 9f21b0dce0f6 | grep -i ipaddress
vim RS.yml 
kubectl apply -f RS.yml 
kubectl get pods
kubectl get rs
kubectl get pods
kubectl get pods -o wide
curl 10.32.0.4
kubectl get pods -o wide
vim RS.yml 
kubectl api-resources
kubectl api-resources | grep -i service
kubectl api-resources | grep -i services
kubectl create service --help
kubectl explain svc
wget https://raw.githubusercontent.com/EyesOnCloud/ClusterIP-Service/main/first-pod.yml
vim first-pod.yml 
kubectl get pods
kubectl delete all --all
kubectl apply -f first-pod.yml 
kubectl get pods
kubectl get pods -o wide
curl 10.40.0.3
curl 10.40.0.3:8080
wget https://raw.githubusercontent.com/EyesOnCloud/ClusterIP-Service/main/second-pod.yml
vim second-pod.yml 
kubectl apply -f second-pod.yml 
kubectl get pods -o wide
curl 10.32.0.2
curl 10.32.0.2:8080
kubectl run --help
kubectl create --help
kubectl run --help
kubectl create --help
kubectl create service --help
wget https://raw.githubusercontent.com/EyesOnCloud/ClusterIP-Service/main/cip-service.yml
vim cip-service.yml 
kubectl apply -f cip-service.yml 
kubectl get svc cip-service
curl 10.105.121.82:80
ip a s
kubectl get svc cip-service
kubectl describe svc cip-service
kubectl get svc cip-service
kubectl descrivbe svc cip-service
kubectl describe svc cip-service
kubectl create --help
kubectl create svc --help
mv cip-service.yml np.yaml
vim np.yaml 
kubectl delete svc cip-service
kubectl apply -f np.yaml 
kubectl get svc np-svc
curl 10.96.238.164
curl ifconfig.io
mv np.yaml lb.yaml
vim lb.yaml 
kubectl get svc
kubectl delete svc np-svc
kubectl apply -f lb.yaml 
kubectl get svc lb-svc
kubeadm --help
kubectl get cm -o yaml
ls
vim lb.yaml 
kubectl
kubectl get pods
kubectl delete all --all
vim RS.yml 
kubectl apply -f RS.yml 
kubectl get pods
vim RS.yaml
vim RS.yml 
kubectl get rs
kubectl scale rs my-desired-app --replicas 4
kubectl get rs
vim RS.yml 
kubectl apply -f RS.yml 
kubectl get rs
kubectl scale rs my-desired-app --replicas=3
kubectl scale rs my-desired-app-new --replicas=3
kubectl scale rs my-desired-app-new --replicas=2
kubectl scale rs my-desired-app --replicas=2
kubectl scale rs my-desired-app --replicas=1
kubectl scale rs my-desired-app-new --replicas=3
kubectl scale rs my-desired-app --replicas=0
kubectl scale rs my-desired-app-new --replicas=4
kubectl get rs
kubectl delete all --all
kubectl create --help
kubectl create deployment --help 
kubectl create deployment my-dep --image=busybox --dry-run=client -o yaml > my-dep.yaml
vim my-dep.yaml 
wget https://raw.githubusercontent.com/EyesOnCloud/kube/main/web-app1.yml
vim web-app1.yml 
vimdiff RS.yml web-app1.yml 
vim web-app1.yml 
kubectl apply -f web-app1.yml
kubectl get pods
kubectl get deployment
kubectl get rs
kubectl get pods
kubectl get deployment 
kubectl expose deployment my-app --name prod-svc --type NodePort --port 80

curl ifconfig.io
kubectl get svc prod-svc
ip a s
kubectl get deployment 
kubectl get rs
vim web-app1.yml 
kubectl apply -f web-app1.yml 
kubectl describe deployment my-app
kubectl get rs
kubectl rollout history deployment web-app
kubectl rollout history deployment my-app
kubectl rollout history deployment my-app --revision=1
kubectl rollout history deployment my-app --revision=2
kubectl rollout undo deployment my-app --to-revision=1
kubectl get rs
kubectl describe deployment my-app
kubectl explain hpa
kubectl --help
kubectl top nodes
wget https://raw.githubusercontent.com/EyesOnCloud/metrics-v5/main/metrics-server.yml
kubectl apply -f metrics-server.yml
kubectl top nodes

kubectl top --help
kubectl top nodes
kubectl top pods
kubectl delete all --all
wget https://raw.githubusercontent.com/EyesOnCloud/k8s-hpa/main/web-app-dep.yml
vim web-app-dep.yml 
kubectl apply -f web-app-dep.yml 
vim web-app-dep.yml 
kubectl apply -f web-app-dep.yml 
kubectl get pods
kubectl expose deployment web-application --name test-svc --port 80
kubectl get svc test-svc
curl 10.96.250.133
wget https://raw.githubusercontent.com/EyesOnCloud/k8s-hpa/main/web-hpa.yml
vim web-hpa.yml 
kubectl apply -f web-hpa.yml
kubectl get hpa
apt install siege -y
siege -v
siege -q -c 5 -t 2m http://10.96.250.133
history
vim mongo.yaml
kubectl apply -f mongo.yaml 
kubectl get pods
kubectl get pods -n kube-system
kubectl get all
kubectl delete all --all
kubectl get pods
vim svc.yaml
kubectl get pods
vim svc.yaml
kubectl apply -f svc.yaml 
kubectl get svc
curl ifconfig.io
kubectl apply -f mongo.yaml 
kubectl get ep svc momgo
kubectl get svc
kubectl get pods
kubectl port-forword svc/mongo-svc 32000:27017
kubectl --help
kubectl port-forward svc/mongo-svc 32000:27017
kubectl get pods
kubectl get pods -o wide
curl 10.32.0.3
curl 10.32.0.3:27017
kubectl exec -it mongo-7878fcf9d6-jtv4b -- /bin/bash
kubectl get pods
vim mongo.yaml 
ssh kube-node2
kubectl get pods
kubectl get deployment
kubectl delete deploy mongo
kubectl delete deploy nfs-client-provisioner
watch kubectl get pods
ls
vim mongo.yaml 
vim svc.yaml
kubectl apply -f mongo.yaml 
kubectl gte pods
kubectl get pods
kubectl exec -it mongo-77c998f895-mchhg -- /bin/bash
kubectl get pods
kubectl gte pods -o wide
kubectl get pods -o wide
ssh kube-node2
kubectl get pods
kubectl get pods -o wide
cat /etc/hosts
ssh 10.0.0.6
ssh kube-node2
kubectl get pods -o yaml
ssh kube-node1
ssh kube-node2
kubectl get pods
kubectl exec -it mongo-77c998f895-mchhg -- /bin/bash
kubectl get pods
kubectl get pods -o yaml
cd /var/lib/kubelet/pods/0e9b8912-d9cf-40fd-904f-a5fa0bfaa08d/
kubectl get pods -o wide
ssh kube-node2
vim mongo.yaml 
kubectl apply -f mongo.yaml
kubectl get pods
kubectl exec -it mongo-7b6cd474c6-z6t7p -- /bin/bash
kubectl get pods
kubectl delete pod mongo-7b6cd474c6-z6t7p
kubectl get pods
vim mongo.yaml 
kubectl apply -f mongo.yaml
kubectl get pods
kubectl delete pod mongo-5f48649bf6-xv7h2
kubectl get pods
kubectl get pods -o wide
ssh kube-node2
apt install -y  nfs-kernel-server
ssh kube-node1
ssh kube-node2
systemctl enable --now nfs-server
systemctl status nfs-server --no-pager
mkdir -p /srv/nfs/kubedata
cat > /etc/exports <<EOF
/srv/nfs/kubedata    *(rw,sync,no_root_squash,insecure)
EOF

cat /etc/exports
exportfs -avr
exportfs -v
ip a s
wget https://raw.githubusercontent.com/EyesOnCloud/volume-static-NFS/main/static-nfs-pv.yml
vim static-nfs-pv.yml 
kubectl apply -f static-nfs-pv.yml 
wget https://raw.githubusercontent.com/EyesOnCloud/volume-static-NFS/main/static-nfs-pvc.yml
vim static-nfs-pvc.yml
kubectl apply -f static-nfs-pvc.yml 
kubectl get pods
vim mongo.yaml 
kubectl apply -f mongo.yaml 
vim mongo.yaml 
kubectl apply -f mongo.yaml 
vim mongo.yaml 
kubectl apply -f mongo.yaml 
kubectl get pods
kubectl delete pod mongo-6d8cbf8b4c-vm9mm 
kubectl delete all --all
ls
kubectl get pv
kubectl delete pv pv-static-nfs
kubectl get pvc
kubectl delete  pvc nfs-static-claim1
kubectl get pv
kubectl get all
ls
vim mongo.yaml 
kubectl apply -f mongo.yaml 
kubectl get pods
ls
vim svc.yaml 
kubectl get pods
kubectl apply -f svc.yaml
kubectl get svc
kubectl get svc mongo-svc
curl ifconfig.io
kubectl exec -it mongo-7878fcf9d6-4nf4l -- /bin/bash
kubectl get pods
vim mongo.yaml 
kubectl apply -f mongo.yaml 
kubectl get pods
kubectl exec -it mongo-d448dbd95-7kvgf -- /bin/bash
kubectl get pods
kubectl exec -it mongo-d448dbd95-7kvgf -- /bin/bash
kubectl get pods -o wide
vim mongo.yaml 
ssh kube-node2
kubectl get pods -o yaml
ssh kube-node2
kubectl get pods
kubectl delete pod mongo-d448dbd95-7kvgf
vim mongo.yaml 
kubectl apply -f mongo.yaml 
kubectl get pods
kubectl delete pod mongo-78b6884dd8-nb2t4
kubectl get pods
kubectl delete pod mongo-78b6884dd8-nd6h7
kubectl apply -f mongo.yaml 
kubectl delete pod mongo-78b6884dd8-nd6h7
kubectl get pods 
kubectl delete pod mongo-78b6884dd8-wlft8
kubectl get pods
kubectl get pods -o wide
ssj kube-node2
ssh kube-node2
kubectl gte pods
kubectl get pods
kubectl delete pod mongo-78b6884dd8-8phln
vim mongo.yaml 
kubectl get pods
kubectl apply -f mongo.yaml 
kubectl get pods
kubectl deltete pod mongo-54b585cffd-vv7zb
kubectl delete pod mongo-54b585cffd-vv7zb
vim mongo.yaml 
kubectl apply -f mongo.yaml 
kubectl get pods
kubectl delete pod mongo-d48b5c7cd-rsxm7
vim mongo.yaml 
kubectl apply -f mongo.yaml
kubectl get pods
kubectl delete pod mongo-57ff6d6c67-cz2fp
kubectl get pods
vim mongo.yaml 
kubectl apply -f mongo.yaml 
kubectl get pods
kubectl delete pod mongo-57ff6d6c67-hgxh5
vim mongo.yaml 
kubectl apply -f mongo.yaml 
kubectl get pods
kubectl delete pod mongo-766f7c47d-v4phk
kubectl get pods
kubectl delete pod mongo-766f7c47d-bqtkk
kubectl get pods
kubectl delete pod mongo-766f7c47d-422zb
kubectl get pods
vim mongo.yaml 
kubectl get pods
kubectl get pods -o wide
ssh kube-node2
kubectl delete all --all
kubectl get pods
kubectl get svc
wget https://raw.githubusercontent.com/EyesOnCloud/volume-static-NFS/main/static-nfs-pvc.yml
vim static-nfs-pvc.yml
wget https://raw.githubusercontent.com/EyesOnCloud/volume-static-NFS/main/static-nfs-pv.yml
vim static-nfs-pv.yml
kubectl apply -f static-nfs-pv.yml
vim static-nfs-pv.yml
kubectl apply -f static-nfs-pv.yml
kubectl get pv
vim static-nfs-pvc.yml
kubectl apply -f static-nfs-pvc.yml
kubectl get pv
kubectl get pvc
vim mongo.yaml 
kubectl get pods
kubectl apply -f mongo.yaml 
kubectl get pods
kubectl get svc
kubectl apply -f svc.yaml 
kubectl get svc
curl ifconfig.io
kubectl get pods
kubectl delete pod mongo-c9ff7f88c-dzph2
kubectl get pods
kubectl delete pod mongo-c9ff7f88c-hdlcg
kubectl delete pvc nfs-static-claim1
kubectl get pv pv-static-nfs
kubectl delete pv pv-static-nfs
wget https://raw.githubusercontent.com/EyesOnCloud/nfs-provisioning/master/rbac.yml
kubectl apply -f rbac.yml
wget https://raw.githubusercontent.com/EyesOnCloud/nfs-provisioning/master/deployment.yml
vim deployment.yml 
kubectl apply -f deployment.yml 
wget https://raw.githubusercontent.com/EyesOnCloud/nfs-provisioning/master/class.yml
vim class.yml 
kubectl apply -f class.yml 
wget https://raw.githubusercontent.com/EyesOnCloud/nfs-provisioning/master/pvc-nfs.yml
vim pvc-nfs.yml 
kubectl get pv
kubectl get pods
kubectl get pvc
kubectlget deploy
kubectl get deploy
kubectl delete deploy mongo
kubectl get pvc
kubectl get pv
kubectl get pods
kubectl describe pod nfs-client-provisioner-57597c6ddc-x94kp
vim deployment.yml 
kubectl apply -f deployment.yml 
kubectl get pods
kubectl delete pod nfs-client-provisioner-57597c6ddc-x94kp
kubectl get deploy
kubectl delete deploy nfs-client-provisioner
kubectl get pods
kubectl apply -f deployment.yml 
kubectl get pods
vim pvc-nfs.yml 
kubectl get pv
kubectl get pvc
kubectl apply -f pvc-nfs.yml
kubectl get pv
kubectl get pvc
vim pvc-nfs.yml 
vim mongo.yaml 
kubectl apply -f mongo.yaml 
kubectl get pods
kubectl delete pod mongo-cdf744b89-bd7xx
kubectl get pods
wget https://raw.githubusercontent.com/EyesOnCloud/Init-Container/main/init-container.yml
vim init-container.yml 
kubectl apply -f init-container.yml 
kubectl get pods -o wide
curl 10.32.0.3
kubectl describe pod init-container-demo
kubectl delete all --all
vim init-container.yml 
kubectl apply -f init-container.yml 
history
kubectl get all
kubectl delete pod init-container-demo
kubectl get pv
kubectl get pvc
kubectl get pods
kubectl delete pvc pvc1
kubectl get pv
kubectl get pvc
kubectl get pv
kubectl delete pv pvc-633af32e-7531-4909-9b06-0ee6b9ed2f2d
kubectl get pv
kubectl get pods
cd /etc/kubernetes/manifests/
ls
mv kube-scheduler.yaml /etc/kubernetes/
ls
cd
kubectl get pods -n kube-system
kubectl run app1 --image nginx
kubectl get pods
kubectl describe pod app1
kubectl get nodes
kubectl explain pod --recursive | grep -i nodename
kubectl run app2 --image nginx --dry-run=client -o yaml > pod1.yaml
vim pod1.yaml 
kubectl apply -f pod1.yaml
kubectl get pods
kubectl get pods -o wide
vim pod1.yaml 
kubectl get pods -o wide
cd /etc/kubernetes/
ls
mv kube-scheduler.yaml /etc/kubernetes/manifests/
ls
cd
kubectl get pods -n kube-system
vim pod1.yaml 
kubectl apply -f pod1.yaml 
kubectl get pods -o wide
vim pod1.yaml 
kubectl get pods
kubectl delete pod app1 app2 app3
wget https://raw.githubusercontent.com/EyesOnCloud/k8s-scheduler/main/manual-pod-disktype.yml
vim manual-pod-disktype.yml 
kubectl get pods
kubectl apply -f manual-pod-disktype.yml
kubectl get nodes --show-labels
kubectl get nodes --show-labels | grep -i "disktype"
kubectl get pods
kubectl describe pod business-critical-app
vim pod1.yaml 
vim manual-pod-disktype.yml 
kubectl get pods
kubectl label node kube-node2 disktype=premium-nvme
kubectl get pods -o wide
kubectl label node kube-node1 disktype=premium-nvme
kubectl get nodes --show-labels
kubectl get nodes -l disktype=premium-nvme
vim manual-pod-disktype.yml 
kubectl pply -f manual-pod-disktype.yml
kubectl apply -f manual-pod-disktype.yml
kubectl get pods
kubectl delete pod business-critical-app-amazon
vim manual-pod-disktype.yml
kubectl apply -f manual-pod-disktype.yml 
vim manual-pod-disktype.yml 
kubectl apply -f manual-pod-disktype.yml 
vim manual-pod-disktype.yml 
kubectl apply -f manual-pod-disktype.yml 
kubectl get pods
kubectl delete pod business-critical-app business-critical-app-amazon 
kubectl get nodes
kubectl create deploy test-app --image nginx --replica 20
kubectl create deploy test-app --image nginx --replicas 20
kubectl get pods -o wide
kubectl describe node | grep -i taints
kubectl describe node | grep -i taints -A 5
kubectl taint node kube-node1 db=applicaiions:NoSchedule
kubectl taint node kube-node2 webservers=app:NoSchedule
kubectl get pods
kubectl delete deploy test-app
kubectl create deploy db-servers --image nginx --replicas 20
kubectl get pods
kubectl get deploy 
kubectl delete deploy db-servers
ls
vim first-pod.yml
kubectl apply -f first-pod.yml
vim first-pod.yml
kubectl apply -f first-pod.yml
kubectl get pods
kubectl get pods -o wide
kubectl describe nodes kube-node1 | grep -i taints
vim first-pod.yml 
kubectl describe node | grep -i taints -A 5
kubectl taint node kube-master node-role.kubernetes.io/master:NoSchedule-
kubectl describe node | grep -i taints -A 5
kubectl create deploy test --image nginx --replicas 10
kubectl get pods -o wide
kubectl get pods
kubectl get pods -o wide
kubectl taint node kube-master participant=leroy:NoExecute
kubectl get pods -o wide
kubectl delete deploy test
vim first-pod.yml 
kubectl apply -f first-pod.yml
kubectl get pods
kubectl get pods -o wide
kubectl describe node | grep -i "Taints"
kubectl taint node kube-master participant=leroy:NoExecute-
kubectl taint node kube-node1 db=applicaiions:NoSchedule-
kubectl taint node kube-node2 webservers=app:NoSchedule-
kubectl taint node kube-master node-role.kubernetes.io/master:NoSchedule
cd /etc/kubernetes/manifests/
ls
cd
ls
kubetl get pods
kubectl get pods
kubectl delete pod first-pod test
mv first-pod.yml /etc/kubernetes/manifests/
kubectl get pods
kubectl delete pod test-kube-master
kubectl get pods
wget https://raw.githubusercontent.com/EyesOnCloud/k8s-daemonset/main/daemonset.yml
vim daemonset.yml 
kubectl apply -f daemonset.yml
kubectl get ds
kubectl get pods
kubectl delete pod logging-agent-drwx6
kubectl get pods
kubectl get pods -o wide
vim daemonset.yml 
history
kubectl get nodes
wget https://raw.githubusercontent.com/open-policy-agent/gatekeeper/release-3.5/deploy/gatekeeper.yaml
vim gatekeeper.yaml 
kubectl apply -f gatekeeper.yaml 
kubectl get pods -n gatekeeper-system
kubectl get validatingwebhookconfiguration -o yaml
vim allowedrepos.yaml
kubectl apply -f allowedrepos.yaml 
vim allowedrepos.yaml 
kubectl apply -f allowedrepos.yaml 
:set nu
kubectl apply -f allowedrepos.yaml 
vim allowedrepos.yaml 
kubectl apply -f allowedrepos.yaml 
vim allowedrepos.yaml 
vim allowe.yaml
kubectl apply -f allowe.yaml 
vim allowe.yaml 
kubectl apply -f allowe.yaml 
vim allowe.yaml 
kubectl apply -f allowe.yaml 
vim allowe.yaml 
kubectl apply -f allowe.yaml 
vim allowe.yaml 
kubectl apply -f allowe.yaml 
vim allowe.yaml 
kubectl apply -f allowe.yaml 
vim allowe.yaml 
kubectl apply -f allowe.yaml 
vim allowe.yaml 
+++
<pre data-type="programlisting">$ <strong>kubectl get pods -o
vim allowe.yaml 
kubectl apply -f allowe.yaml 
vim allowe.yaml 
kubectl apply -f allowe.yaml 
vim allowe.yaml 
kubectl apply -f allowe.yaml 
vim allowe.yaml 
kubectl apply -f allowe.yaml 
vim allowe.yaml 
kubectl apply -f allowe.yaml 
vim allow-pod0-repos.yaml
kubectl apply -f allow-pod0-repos.yaml
vim allow-pod0-repos.yaml
kubectl apply -f allow-pod0-repos.yaml
kubectl run app1 --image nginx
git init
git commit -m "admission controller"
git config --global user.email "mudasir.s.tech@gmail.com"
git config --global user.name "syedmudasir20"
git branch -M main
git remote add origin git@github.com:syedmudasir20/admission-controller.git
git push -u origin main
git remote add origin git@github.com:syedmudasir20/admission-controller.git
git branch -M main
git push -u origin main
ssh-keygen -t ed25519 -C "mudasir.s.tech@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
git remote add origin git@github.com:syedmudasir20/admission-controller.git
ls
mkdir -p kuberbnetes/admission-controller
mv allowe.yaml allowedrepos.yaml allow-pod0-repos.yaml gatekeeper.yaml kuberbnetes/admission-controller/
cd kuberbnetes/admission-controller/
ls
vim allow-pod0-repos.yaml
git init
git commit -m "first commit"
git add allow-pod0-repos.yaml allowe.yaml allowedrepos.yaml gatekeeper.yaml 
git remote add origin git@github.com:syedmudasir20/admission-controller.git
git push -u origin main
git remote add origin1 git@github.com:syedmudasir20/admission-controller.git
git push -u origin1 main
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
git remote add origin2 git@github.com:syedmudasir20/admission-controller.git
git push -u origin2 main
echo "# admission-controller2" >> README.md
git init
git add 
git add .
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:syedmudasir20/admission-controller2.git
git remote add origin3 git@github.com:syedmudasir20/admission-controller2.git
git push -u origin3 main
cd
kubectl et pods
kubectl get pods
kubectl get ns
kubectl delete all --all
kubectl get nodes
kubectl run app1 --image nginx
kubectl run app1 --image gcr.io/kuar-demo/kuard-amd64:blue
kubectl get pods
kubectl get pods -o wide
curl 10.32.0.3
curl 10.32.0.3:8080
mkdir -p kuberbnetes/resorce-quotas
cd kuberbnetes/resorce-quotas/
wget https://github.com/pelthepu/Kubernetes/tree/master/resources/resource-management
ls
wget https://github.com/pelthepu/Kubernetes/blob/master/resources/resource-management/limit-range-demo.yaml
wget https://github.com/pelthepu/Kubernetes/blob/master/resources/resource-management/resource-quota-demo.yaml
wget https://github.com/pelthepu/Kubernetes/blob/master/resources/resource-management/resources-demo-pod.yaml
ls
rm -rf resource-management
vim resources-demo-pod.yaml
git clone https://github.com/pelthepu/Kubernetes.git
ls
cd Kubernetes
ls
cd resources/
ls
cd resource-management/
ls
pwd
ls
cat resources-demo-pod.yaml 
ls
pwd
cp . /root
cp /root/kuberbnetes/resorce-quotas/Kubernetes/resources/resource-management /root/kuberbnetes/
cp -r /root/kuberbnetes/resorce-quotas/Kubernetes/resources/resource-management /root/kuberbnetes/
cd
ls
cd kuberbnetes/
ls
cd resource-management/
ls
cat resource-quota-demo.yaml
cd
kubectl get ns
kubectl delete -f gatekeeper-system
kubectl get ns
kubectl delete ns gatekeeper-system
ls
cd kuberbnetes/
ls
cd resource-management/
ls
cd ..
rm -rf resorce-quotas
ls
cd admission-controller/
ls
vim gatekeeper.yaml 
ls
vim allowedrepos.yaml 
mv allowedrepos.yaml /
ls
vim allowe.yaml 
vim allow-pod0-repos.yaml
vim app1.yaml
ls
cat README.md
cd
ls
kubectl get nodes
kubectk confiq view
kubectl confiq view
kubectl config view
ls
cat bootstrap.txt 
cd .kube/
ls
cat config 
cd
cat bootstrap.txt 
ls
cd kuberbnetes/
ls
cd resource-management/
ls
vim resource-quota-demo.yaml 
kubectl apply -f resource-quota-demo.yaml 
kubectl create deploy my-dep --image nginx --replicas 5
kubectl get pods
cd /etc/kubernetes/manifests/
ls
rm -rf first-pod.yml
ls
kubectl get pods
kubectl delete pod app1
cd
kubectl create deploy my-dep --image nginx --replicas 5
kubectl get deploy
kubectl delete deploy my-dep
kubectl create deploy my-dep --image nginx --replicas 5
kubectl get pods
kubectl get deploy
kubectl create deploy my-dep --image nginx --replicas 2
kubectl create deploy my-dep1 --image nginx --replicas 2
kubectl get pods
kubectl get deploy
kubectl delete deploy my-dep
kubectl get pods
kubectl delete all -all
kubectl delete all --all
source <(kubectl completion bash)
echo "source <(kubectl completion bash)" >> ~/.bashrc
kubectl get resourcequotas 
kubectl delete resourcequotas 
kubectl delete resourcequotas resource-quota
ls
cd kuberbnetes/
ls
cd resource-management/
ls
kubectl create deploy app1 --image nginx --replicas 5
kubectl get pods
kubectl delete deploy app1
ls
vim resource-quota-demo.yaml 
kubectl apply -f resource-quota-demo.yaml
kubectl create deploy app1 --image nginx --replicas 5
kubectl get pods
kubectl get deploy
kubectl delete -f resource-quota-demo.yaml
kubectl get deploy
kubectl delete deploy app1
kubectl apply -f resource-quota-demo.yaml
kubectl run app1 --image nginx
ls
vim resources-demo-pod.yaml 
kubectl apply -f resources-demo-pod.yaml
kubectl get pods
vim resources-demo-pod.yaml 
kubectl apply -f resources-demo-pod.yaml
cd
kubectl delete all --all
kubectl get resourcequotas 
kubectl deltete resourcequotas resource-quota
kubectl delete resourcequotas resource-quota
kubectl get all
kubectl get pods
kubectl get ns
kubectl get all
kubectl get namespace
kubectl get pods
kubectl run app1 --image nginx
kubectl get pods
kubectl get pods -n kube-system
cat bootstrap.txt 
kubectl get ns
kubectl create --help
kubectl get pods
kubectl delete pod app1
kubectl create namespace --help
kubectl create ns dev-room
ls
cd kuberbnetes/
ls
cd admission-controller/
ls
kubectl delete -f gatekeeper.yaml
cd
kubectl create ns my-room
kubectl create ns dev-room
kubectl get ns
kubectl create ns prod-team --dry-run=client -o yaml
kubectl create deployment amazon-payment-service --image nginx --replicas 10 -n dev-room
kubectl get pods
kubectl get pods -n dev-room
cd kuberbnetes/resource-management/
ls
vim resource-quota-demo.yaml 
kubectl delete deployment amazon-payment-service 
kubectl delete deployment amazon-payment-service -n dev-room
cd
kubectl get all
kubectl get ns
kubectl delete ns dev-room
kubectl delete ns my-room
kubectl create ns devops-team
kubectl create ns test-team
kubectl create ns qa-team
openssl genrsa -out devops-john.key 2048
openssl req -new -key devops-john.key -out devops-john.csr -subj "/CN=devops-john/O=office"
openssl x509 -req -in ~/devops-john.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out ~/devops-john.crt -days 500
kubectl config set-credentials devops-john --client-certificate=devops-john.crt --client-key=devops-john.key
kubectl config  --help
kubectl config get-users
cat bootstrap.txt 
cd .kube/
ls
cat config 
cd
kubectl config get-users
kubectl config --help
kubectl config get-contexts
kubectl config use-context devop-team-context
kubectl config get-contexts
kubectl run app1 --image nginx
kubectl config use-context kubernetes-admin@kubernetes
kubectl config get-contexts
kubectl create role --help
kubectl create role pod-reader --verb=get --verb=create  --resource=pods  --namespace devops-team --dry-run=client -o yaml
kubectl create role pod-reader --verb=get --verb=create  --resource=pods  --namespace devops-team --dry-run=client -o yaml > firstrole.yaml
vim firstrole.yaml 
kubectl apply -f firstrole.yaml
kubectl get roles -n devops-team
kubectl get role pod-reader -n devops-team -o yaml
kubectl describe role pod-reader -n devops-team 
kubectl create rolebinding --help
kubectl create rolebinding pod-reader-role-binding --role pod-reader --user devops-john --namespace devops-team 
kubectl get rolebinding pod-reader-role-binding -n devops-team
kubectl describe rolebinding pod-reader-role-binding -n devops-team
kubectl config use-context devop-team-context
kubectl config get-context 
kubectl config --help
kubectl config get-contexts
kubectl run app1 --image nginx
kubectl create deployment test-dep --image nginx --replicas 5
kubectl get pods
kubectl get pod
kubectl get pod -n devops-team
kubectl get pod
kubectl run app2 --image nginx
kubectl get pods 
kubectl delete pod app2
kubectl config use-context kubernetes-admin@kubernetes
kubectl config get-contexts
kubectl delete ns devops-team
kubectl create clusterrole --help
kubectl create clusterrole devop-team-clusterrole --verb=create --resources=ds,deploy,sts
kubectl create clusterrole devop-team-clusterrole --verb=create --resource=ds,deploy,sts
kubectl get clusterrole devop-team-clusterrole
kubetl describe clusterrole devop-team-clusterrole
kubectl describe clusterrole devop-team-clusterrole
kubectl create --help
kubectl create clusterrolebinding --help
kubectl create clusterrolebinding admin2 --clusterrole devop-team-clusterrole --user devops-john
kubectl describe clusterrolebinding admin2
kubectl run app1 --image nginx --user devops-john
kubectl create deploy app1 --image nginx --user devops-john
kubectl get deployment  app1 --user devops-john
kubectl delete deployment  app1 --user devops-john
kubectl delete clusterrole devop-team-clusterrole
kubectl run webserver --image nginx --label app=web
kubectl run webserver --image nginx --labels app=web
kubectl expose pod webserver --name demo-svc --labels app=web --port 80
kubectl run --rm -it --image busybox:1.28.0 test-pod -- sh
cat >  web-deny.yml << EOF
apiVersion: networking.k8s.io/v1 
kind: NetworkPolicy
metadata:
  name: web-deny-all
spec:
  podSelector:
    matchLabels:
      app: web
  ingress: []
EOF

vim web-deny.yml 
kubectl apply -f web-deny.yml
kubectl get netpol
kubectl describe netpol
kubectl run --rm -it --image busybox:1.28.0 test-pod -- sh
kubectl delete pod webserver
kubectl delete svc demo-svc
kubectl delete netpol web-deny-all
cat >  web-allow.yml << EOF
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: web-allow-all
  namespace: default
spec:
  podSelector:
    matchLabels:
      app: web
  ingress:
  - {}
EOF

vim web-allow.yml 
kubectl run webserver-pod --image=ahmet/app-on-two-ports --labels=app=apiserver
kubectl get pods
kubectl get deployment app1-68976bb45b-zftzp
kubectl get deployment app1
kubectl delete deployment app1
kubectl get pods
kubectl get pods -o wide
curl 10.32.0.4
curl 10.32.0.4:5000
curl 10.32.0.4:5001
kubectl create service clusterip apiserver --tcp 8001:8000 --tcp 5001:5000
kubectl get svc apiserver -o yaml
cat > api-allow-5000.yml << EOF
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: api-allow-5000
spec:
  podSelector:
    matchLabels:
      app: apiserver
  ingress:
  - ports:
    - port: 5000
    from:
    - podSelector:
        matchLabels:
          role: monitoring
EOF

vim api-allow-5000.yml 
kubectl apply -f api-allow-5000.yml
kubectl get netpol api-allow-5000
kubectl get netpol
kubectl run --rm -it --image alpine test-pod -- sh
kubectl run --rm -it --image alpine -l role=monitoring test-pod -- sh
kubectl get pods
ls
cd kuberbnetes/
ls
cd admission-controller/
ls
vim gatekeeper.yaml 
kubectl apply -f gatekeeper.yaml 
ls
vim allowe.yaml 
kubectl apply -f allowe.yaml
vim allow-pod0-repos.yaml
kubectl apply -f allow-pod0-repos.yaml
kubectl run app1 --image docker.io/library/nginx
ls
vim app1.yaml 
kubect apply -f app1.yaml
kubectl apply -f app1.yaml
vim app1.yaml 
kubectl apply -f app1.yaml
kubectl get pods
cd
history
kubectl gte nodes
kubectl gey nodes
kubectl get nodes
man capabalities
man capabilities 
capsh --print
dokcer container run --rm centos capsh --print
docker container run --rm centos capsh --print
docker container run --help
vim som.yaml
id
kubetl run test-pod --image nginx --command -o yaml --dry-run=client > pod.yaml -- sh -c 'sleep 1d'
kubetl run test-pod --image nginx --command --dry-run=client -o yaml > pod.yaml -- sh -c 'sleep 1d'
kubectl run test-pod --image nginx --command --dry-run=client -o yaml > pod.yaml -- sh -c 'sleep 1d'
vim pod.yaml 
kubectl apply -f pod.yaml 
rm -rf pod.yaml 
kubectl run test-pod --image busybox--command --dry-run=client -o yaml > pod.yaml -- sh -c 'sleep 1d'
kubectl apply -f pod.yaml 
ls
cd kuberbnetes/
ls
cd admission-controller/
ls
kubectl delete -f gatekeeper.yaml 
ls
kubectl delete -f allow-pod0-repos.yaml
kubectl delete -f allowe.yaml
kubectl delete -f app1.yaml
kubectl get pods
kubectl delete pod webserver-pod
ls
cd
kubectl apply -f pod.yaml 
kubectl exec -it test-pod -- sh
kubectl get pods
vim pod.yaml 
kubectl replace -f pod.yaml --force
kubectl exec -it test-pod -- sh
vim pod.yaml 
kubectl replace -f pod.yaml --force
kubectl get pods
kubectl apply -f pod.yaml 
kubectl get pods
kubectl exec -it test-pod -- sh
kubectl get pods
kubectl delete po test-pod
history
kubectl exec -it test-pod -- sh
kubectl apply -f pod.yaml 
kubectl exec -it test-pod -- sh
kubectl replace -f pod.yaml --force
vim pod.yaml 
kubectl apply -f pod.yaml 
vim pod.yaml 
kubectl apply -f pod.yaml 
kubectl replace -f pod.yaml --force --grace-priod=0
kubectl replace -f pod.yaml --force
vim pod.yaml 
kubectl apply -f pod.yaml 
kubectl exec -it test-pod -- sh
vim pod2.yaml
kubectl apply -f pod
kubectl apply -f pod2.yaml 
kubectl exec security-context-demo-2 -it -- sh
vim pod2.yaml 
kubectl get pods
kubectl delete pod test-pod security-context-demo-2
kubectl apply -f pod2.yaml 
kubectl exec security-context-demo-2 -it -- sh
kubectl get pods
kubectl delete pod security-context-demo-2
kubectl delete all --all
kubectl get ns
kubectl delete ns qa-team root@kube-master:~# kubectl delete ns qa-team
kubectl delete ns test-team
wget https://raw.githubusercontent.com/EyesOnCloud/k8s-ingress/main/apps-services.yml
wget https://raw.githubusercontent.com/EyesOnCloud/k8s-ingress/main/webapp-ingress.yml
vim webapp-ingress.yml 
kubectl apply -f webapp-ingress.yml 
kubectl apply -f apps-services.yml 
wget https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.2/deploy/static/provider/baremetal/deploy.yaml
kubectl get svc -n ingress-nginx -o wide
kubectl apply -f deploy.yaml
kubectl get svc -n ingress-nginx -o wide
kubectl get all -n ingress-nginx
vim /etc/hosts
kubectl get svc
curl -H "Host: my.kubernetes.example" 10.105.253.21/webapp2
curl ifconfig.io
vim /etc/hosts
curl ifconfig.io
kubectl get ns
kubectl get svc -n ingress-nginx
kubectl get ns
kubectl delete ns ingress-nginx
kubectl get pods
kubectl delete all --all
kubectl delete ns ingress-nginx
kubectl get ns
kubectl get secret
kubectl get pvc
kubectl get all
cat bootstrap.txt 
ls
wget https://raw.githubusercontent.com/EyesOnCloud/k8s-secret/main/mysql-secret.yml
vim mysql-secret.yml 
kubectl apply -f mysql-secret.yml
kubectl get secret mariadb-root-password
kubectl describe secret mariadb-root-password
kubectl create --help
kubectl create secret --help
kubectl create secret generic mariadb-user-creds --from-literal=MYSQL_USER=kubeuser --from-literal=MYSQL_PASSWORD=kubestill-rocks
kubectl get secret mariadb-user-creds
kubectl describe secret mariadb-user-creds
cat > max_allowed_packet.cnf << EOF
[mysqld]
max_allowed_packet = 64M
EOF

kubectl create configmap mariadb-config --help
kubectl create configmap mariadb-config --from-file=max_allowed_packet.cnf
kubectl get cm mariadb-config
kubectl describe cm mariadb-config
wget https://raw.githubusercontent.com/EyesOnCloud/k8s-secret/main/mariadb-deployment.yml
vim mariadb-deployment.yml 
kubectl apply -f mariadb-deployment.yml
kubectl get pods
kubectl exec -it mariadb-deployment-ccc8cd948-spbns -- /bin/bash
wget https://raw.githubusercontent.com/EyesOnCloud/k8s-ingress/main/apps-services.yml
vim apps-services.yml
kubectl apply -f apps-services.yml 
kubectl get all
kubectl delete deploy mariadb-deployment
kubectl get deploy
kubectl get svc
curl 10.96.223.93
curl 10.107.147.185
curl 10.98.118.22
wget https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.2/deploy/static/provider/baremetal/deploy.yaml
vim deploy.yaml
kubectl apply -f deploy.yaml
kubectl get ns
kubectl get all -n ingress-nginx
kubectl api-resources | gre -i ingress
kubectl api-resources | grep -i ingress
wget https://raw.githubusercontent.com/EyesOnCloud/k8s-ingress/main/webapp-ingress.yml
vim webapp-ingress.yml
kubectl apply -f webapp-ingress.yml 
kubectl delete -f webapp-ingress.yml
kubectl apply -f webapp-ingress.yml 
kubectl get ingress
CLUSTER_IP=$(kubectl get svc ingress-nginx-controller \
-n ingress-nginx| grep ingress-nginx | awk '{print $3}')
curl -H "Host: my.kubernetes.example" $CLUSTER_IP/webapp1
curl -H "Host: my.kubernetes.example" $CLUSTER_IP/webapp2
curl -H "Host: my.kubernetes.example" $CLUSTER_IP/
kubectl get ns
kubectl get svc -n ingress-nginx
echo $CLUSTER_IP
ls
vim webapp-ingress.yml
kubectl get svc
kubectl get pods
kubectl get deploy
kubectl delete deploy webapp1 webapp2 webapp3
kubectl get pods
kubectl run app1 --image nginx 
kubectl exec app1 -it -- /bin/bash
kubectl get pods
kubbectl delete pod app1
kubectl delete pod app1
vim pod.yaml
kubectl apply -f pod.yaml 
kubectl get pods
kubectl exec test-pod -it -- sh
vim pod.yaml
kubectl apply -f pod.yaml 
kubectl delete -f pod.yaml 
kubectl get pods
kubectl apply -f pod.yaml 
kubectl get pods
kubectl exec test-pod -it -- sh
kubectl get pods
kubectl delete pod test-pod
vim pod.yaml 
kubectl apply -f pod.yaml
kubectl exec test-pod -it -- sh
vim pod.yaml 
kubectl get pods
kubectl delete pod test-pod
kubectl get pods
kubectl apply -f pod.yaml
kubectl get pods
kubectl exec test-pod -it -- sh
docker container run --help
history
echo -n 'S3ViZXJuZXRlc1JvY2tzIQ==' | base64 --decode
kubectl get secret
kubectl get secret mariadb-root-password,mariadb-user-creds
kubectl get secret mariadb-root-password
kubectl get secret mariadb-user-creds
kubectl get configmap mariadb-config
ls
cat mariadb-deployment.yml 
