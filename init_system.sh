arisencli set contract arisen /opt/arisen/build/contracts/arisen.bios
arisencli set contract arisen /opt/arisen/build/contracts/arisen.msig
arisencli set contract arisen.token /opt/arisen/build/contracts/arisen.token
arisencli push action arisen.token create '["arisen", "10000000000.0000 RSN"]' -p arisen.token
arisencli push action arisen.token issue '["arisen", "10000000000.0000 RSN", "Initial RSN issuance to Arisen treasury"]' -p arisen
arisencli set contract arisen /opt/arisen/build/contracts/arisen.system
arisencli get currency balance arisen.token arisen
arisen get currency stats arisen.token 'RSN'
arisencli system delegatebw arisen arisen "[15%] RSN" "[15%] RSN"
