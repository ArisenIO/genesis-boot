# Genesis Node Installer
This is the genesis node installer for Arisen's network. We will improve this code over time, for future sisterchains and sidechains.

## Instructions
### 1. Create the ```~/arisen-boot/genesis``` directory. This directory is where we'll start the genesis node.
```
cd ~
mkdir arisen-boot
cd arisen-boot
mkdir genesis
cd genesis
``` 

### 2. Create an empty ```genesis.json``` file.
```
cd ~/arisen-boot/genesis/
touch genesis.json
nano genesis.json
```

### 3. Paste the following into ```genesis.json```:
```
enable_stale_production=true
producer_name=arisen
signature-provider=GENESIS_PUB_KEY=KEY:GENESIS_PRIV_KEY
plugin=arisen::producer_plugin
plugin=arisen::wallet_api_plugin
plugin=arisen::chain_api_plugin
plugin=arisen::http_plugin
plugin=arisen::bnet_plugin
plugin=arisen::net_api_plugin
plugin=arisen::history_api_plugin
http-server-address=127.0.0.1:8888
p2p-listen-endpoint=127.0.0.1:6620
access-control-allow-origin=*
http-validate-host=false
p2p-peer-address=greatbase.arisen.network:6620
```

### 4. Start ```awallet```.
```
screen
awallet --http-server-address 127.0.0.1:8889
arisencli --wallet-url 127.0.0.1:8889 wallet create --to-console
```

**Exit Screen (CTRL + A + D)**

NOTE: Make sure to save the password that is printed to the console. This password is used to unlock the wallet itself and is not related to the owner/active keys of the ```arisen``` user in any way. In fact, the wallet itself will be used to store the private keys for the arisen user, as well as other required users.

### 5. Startup ```aos```.
```
apt-get install git -y
cd ~/arisen-boot/ && git clone https://github.com/arisenio/genesis-boot.git
mv genesis-boot installer
cd installer
screen
bash ./genesis_start.sh
```

**Exit Screen (Ctrl + A + D)**

This will go and grab this repository and its installers, that are required to start the genesis node, install required users and initiate the ```Arisen System```, ```Arisen BIOS```, ```Arisen Permissions System``` and to create/issue ```RSN Tokens```. 

### 6. Creating keypairs for all required users
The following users are required to start the genesis node:
```
arisen.bpay
arisen.msig
arisen.ram
arisen.rfee
arisen.save
arisen.stake
arisen.token
arisen.vpay
```

Each one will require an ```owner``` keypair and an ```active``` keypair.

In order to generate an ```owner``` or ```active``` keypair, run the following command:

```
arisencli create key --to-console
```
Each username requires an ```owner``` and ```active``` key for the best security, so you would have to run this command twice, for each of the above users. Keep good records of the keypairs for each user and make sure you never lose these, even though the users will be deactivated after the launch of the genesis node.

Once you have taken down all the keypairs, they need to be entered into the ```required_accounts.sh``` file. After these keypairs are entered into the required_accounts.sh file, run the following command:

```
cd ~/arisen-boot/installer/ && bash ./required_accounts.sh
```

This ```required_accounts.sh``` installer will import all private keys into the ```awallet``` we started in Step #4 and will create the required accounts mentioned at the beginning of Step #6. As the installer runs, you should see the accounts being created. If there is an error, it's due to there not being that one of the variables at the beginning of the installer file are wrong.  

### 7. Initiate Arisen System
The ```Arisen BIOS```, ```Arisen System```, ```RSN Token``` and ```Arisen Permissions System``` can all be initiated at this point, by setting their contracts, while also creating and issuing the ```RSN Token``` to the ```arisen``` user. 

To do this, run the following command:
```
cd ~/arisen-boot/installer/ && bash ./init_system.sh
```

- This will set the ```arisen.bios```, ```arisen.system```, ```arisen.msig``` and ```arisen.token``` contracts (using the ```set contracts``` command, while also issuing the initial 1 billion RSN tokens to the ```arisen``` user by executing the ```create``` and ```issue``` ```push action```s related to the ```arisen.token``` contract. 

- It will then run the ```get currency stats``` call, to insure that the currency exists on the network and has been issued to the ```arisen``` user.

- Finally, 15% of the network's RSN tokens (native token) are staked, so that Arisen Block Producers can register as block producers and Arisen users can vote for those block producers. Block producers are at this point are allowed to produce blocks on the network. 

**NOTE:** The ```arisen``` user will be deactivated once there are enough block producers on the network, to where it's safe to move the arisen user off the network. 


### 8. NGINX + SSL Setup
It's important that the [Arisen Blockchain Explorer](https://arisenexplorer.com) and [Arisen Tools](https://arisen.tools) applications are able to access the Arisen API via this node. Right now, the HTTP Server Address via the ```http-server-address``` flag in the Genesis file is set to ```127.0.0.1:8888```. This will need to be forwarded over port 443, so that the Arisen API can be accessed over ```https://greatchain.arisen.network``` as well as the public IP address of the Genesis Node.

This can be done with ```NGINX```. A valid SSL certificate will be needed as well, which can be registered for free with ```LetsEncrypt```.

## Genesis Node Launched
At this point, the Genesis Node for Arisen should be running publicly at ```https://greatchain.arisen.network```. There are several commands that need to be ran that will need to be used to gather the ```chain_id``` for the chain. The initial chain ID should be a series of 64 zeros, so that other related chains can easily communicate with each other, recognizing that they are apart of the same network.



Docs will soon be available at [https://github.com/arisenio/bp-docs](https://github.com/arisenio/bp-docs) that will explain how to setup a full block producer node on the Arisen network.


## Developers
[Jared Rice Sr.](jared@dpeeps.com) (@jared)
[NMH](nmh@dpeeps.com) (@nomoreheroes)
[CF](cfernandez@protonmail.com) (@cf)

## LICENSE
[MIT](LICENSE.md)
