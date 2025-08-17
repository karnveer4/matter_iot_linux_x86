# matter_iot_linux_x86
this repository consist matter protocol enabled applications

<img width="1083" height="305" alt="matter_logo" src="https://github.com/user-attachments/assets/49a76097-a23e-4958-af27-96efc5eda8dc" />

# A single click setup_container.sh can be executed to setup all the required things

Run as ./setup_container.sh from any path in host machine

<img width="1192" height="520" alt="docker_success" src="https://github.com/user-attachments/assets/b870923d-100a-416a-a10e-583fea18fef7" />

# Run below command and go to lighting_app folder
              root@apw-VirtualBox:/matter_iot_apps# cd lighting_app/
              root@apw-VirtualBox:/matter_iot_apps/lighting_app# ls
              chip-lighting-app
              root@apw-VirtualBox:/matter_iot_apps/lighting_app#
              
#Trigger the lighting-app and which will be commissioned later by controller, run below command

              root@apw-VirtualBox:/matter_iot_apps/lighting_app#./chip-lighting-app --wifi
              [1755443984.970] [11:11] [DL] ChipLinuxStorage::Init: Using KVS config file: /tmp/chip_kvs
              [1755443985.330] [11:11] [DL] Wrote settings to /tmp/chip_kvs

#Make sure host machine on which container is running must connected to Home Gateway router or Wi-Fi Access points over 2.4GHz Band
# Below topology should be maintained before testing the matter iot on Linux platform or for x86 arch, consider lighting-app is running on Laptop in topology below

<img width="716" height="373" alt="lighting_app" src="https://github.com/user-attachments/assets/ac3f79ee-21a3-4647-8525-c187117fa64e" />
