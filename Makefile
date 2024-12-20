backup:
	./ludusavi.exe backup --cloud-sync --force

restore:
	./ludusavi.exe restore --force

restore_cloud: 
	./ludusavi.exe restore --cloud-sync --force

link_rclone:
	./rclone.exe

download_cloud: 
	./ludusavi.exe cloud download

rclone_mount:
	./rclone.exe mount --config ./conf.txt thinkmay:/bucket_name E:/temp

ludusavi_sync:
	./rclone.exe --fast-list --ignore-checksum --config ./conf2.txt sync -v  --stats=100ms E:/ludusavi thinkmay:temp/backup

winfsp_install:
	./winfsp-2.0.23075.msi /quiet  

.PHONY: backup restore upload_cloud download_cloud link_rclone
