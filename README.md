# AleksandrKucepalov_infra
AleksandrKucepalov Infra repository

HW3
bastion_IP = 178.154.204.211
someinternalhost_IP = 10.128.0.3

1) подключение someinternalhost одной командой
ssh -i ~/.ssh/id_rsa -A kucepalov_as@178.154.204.211 -t ssh 10.128.0.3

2) по алиасу someinternalhost
	а)через файлы .bashrc или .bash_profile:
		alias someinternalhost = 'ssh -i ~/.ssh/id_rsa -A kucepalov_as@178.154.204.211 -t ssh 10.128.0.3'
		тогда работает просто по команде someinternalhost
	б) через config
		Host someinternalhost
			Hostname 178.154.204.211
			User kucepalov_as
			ForwardAgent yes
			IdentityFile ~/.ssh/id_rsa
			RequestTTY force
			RemoteCommand ssh 10.128.0.3

		В этом случае работате по команде ssh someinternalhost


HW4

testapp_IP = 62.84.115.235
testapp_port = 9292

Команда для установки ВМ скриптом
yc compute instance create `
--name reddit-app `
--hostname reddit-app `
--memory=4 `
--create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB `
--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 `
--metadata serial-port-enable=1 `
--metadata-from-file .\user-data=metadata.yml
