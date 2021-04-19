
# create a directory for the virtual machine
# Usage:create_vm.sh [name of new machine]


sudo su
rm -rf /var/vbox
mkdir /var/vbox

NAME=argc[1]
echo "Creating ${NAME}"
exit

# create a new virtual machine

VBoxManage createvm \
--name CentOS_7_1 \
--ostype RedHat_64 \
--register \
--basefolder /var/vbox

# modify the VM

echo "Select VM settings for ${NAME}

VBoxManage modifyvm CentOS_7_1 \
--cpus 4 \
--memory 4096 \
--nic1 bridged \
--bridgeadapter1 en1 \
--boot1 dvd \
--vrde on \
--vrdeport 5001

# configure SATA controller
echo "Configuring SATA controller ${NAME}

VBoxManage storagectl CentOS_7_1 --name "CentOS_7_1_SATA" --add sata

# create disk
echo "Creating hard disk for ${NAME}

VBoxManage createhd \
--filename /var/vbox/CentOS_7_1/CentOS_7_1.vdi \
--size 20480 \
--format VDI \
--variant Standard 

# attach storage device

VBoxManage storageattach CentOS_7_1 \
--storagectl CentOS_7_1_SATA \
--port 1 \
--type hdd \
--medium /var/vbox/CentOS_7_1/CentOS_7_1.vdi

# configure a drive for the for VM and specify the ISO file

VBoxManage storageattach CentOS_7_1 \
--storagectl CentOS_7_1_SATA \
--port 0 \
--type dvddrive \
--medium /Users/moyer/CentOS/CentOS-7-x86_64-DVD-2009.iso

# confirm VM settings

VBoxManage showvminfo CentOS_7_1

echo "Starting Virtual Machine"
VBoxManage startvm CentOS_7_1 --type headless 
echo "VM CentOS_7_1 has been successfully started."

echo "Network ..."
VBoxManage list bridgedifs
