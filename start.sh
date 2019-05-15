git config --global http.proxy http://proxy1.altranit.corp.altran.com:8080
git config --global https.proxy http://proxy1.altranit.corp.altran.com:8080
git clone https://github.com/sunnyvale-academy/SNY.OSS.DCK.01.01.00.git
export http_proxy="http://proxy1.altranit.corp.altran.com:8080"
export https_proxy="http://proxy1.altranit.corp.altran.com:8080"
export VAGRANT_HTTP_PROXY=${http_proxy}
export VAGRANT_NO_PROXY="127.0.0.1"
vagrant plugin install vagrant-hostmanager
vagrant plugin install vagrant-proxyconf
vagrant plugin install vagrant-vbguest
vagrant up
