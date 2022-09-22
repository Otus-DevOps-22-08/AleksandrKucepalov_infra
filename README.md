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
