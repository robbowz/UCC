sudo apt-get -y install p7zip-full p7zip-rar

function remove_old_files() {
	echo "Removing old files..."
	sudo killall uccd
	sudo rm -rf /root/ucc
	sudo rm -rf /root/.ucc
	sudo rm -rf /root/.ucccore
    	sudo rm -rf uccd
    	sudo rm -rf ucc-cli
	echo "Done..."
}


function download_wallet() {
	echo "Downloading wallet..."
	mkdir /root/ucc
    cd ucc
	mkdir /root/.ucccore
	wget https://github.com/UCCNetwork/ucc/releases/download/v.2.0.0.0/UCC-Linux64-v.2.0.0.0.zip
	7z +x UCC-Linux64-v.2.0.0.0.zip
	rm /root/ucc/UCC-Linux64-v.2.0.0.0.zip
	cp sovcore-1.3.1/bin/uccd /root/ucc/uccd
	cp sovcore-1.3.1/bin/ucc-cli /root/ucc/ucc-cli
	rm -rf sovcore-1.3.1/bin/
	chmod +x /root/ucc/
	chmod +x /root/ucc/uccd
	chmod +x /root/ucc/ucc-cli
	echo "Done..."
}
