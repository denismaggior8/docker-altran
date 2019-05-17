sudo yum -y install nano

mkdir /home/vagrant/.docker

sudo echo '{"proxies": {"default": {"httpProxy": "http://proxy1.altranit.corp.altran.com:8080","noProxy": "localhost*,127.0.0.1","httpsProxy": "http://proxy1.altranit.corp.altran.com:8080"}}}' > /home/vagrant/.docker/config.json
		
sudo yum -y remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
                                                            
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum -y install docker-ce docker-ce-cli containerd.io

sudo mkdir -p /etc/systemd/system/docker.service.d

echo "[Service]" > /etc/systemd/system/docker.service.d/http-proxy.conf
echo "Environment=\"HTTP_PROXY=http://proxy1.altranit.corp.altran.com:8080\"" >> /etc/systemd/system/docker.service.d/http-proxy.conf
echo "[Service]" >> /etc/systemd/system/docker.service.d/http-proxy.conf
echo "Environment=\"HTTPS_PROXY=http://proxy1.altranit.corp.altran.com:8080\"" >> /etc/systemd/system/docker.service.d/http-proxy.conf


sudo systemctl daemon-reload

usermod -a -G docker vagrant

sudo systemctl enable docker
sudo service docker start

sudo chmod a+rw /var/run/docker
