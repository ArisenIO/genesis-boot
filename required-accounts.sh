BPAY_OWNER=""
BPAY_ACTIVE=""
BPAY_OWNER_PRIV=""
BPAY_ACTIVE_PRIV=""
MSIG_OWNER=""
MSIG_ACTIVE=""
MSIG_OWNER_PRIV=""
MSIG_ACTIVE_PRIV=""
RAM_OWNER=""
RAM_ACTIVE=""
RAM_OWNER_PRIV=""
RAM_ACTIVE_PRIV=""
RFEE _OWNER=""
RFEE_ACTIVE=""
RFEE_OWNER_PRIV=""
RFEE_ACTIVE_PRIV=""
SAVE_OWNER=""
SAVE_ACTIVE=""
SAVE_OWNER_PRIV=""
SAVE_ACTIVE_PRIV=""
STAKE_OWNER=""
STAKE_ACTIVE=""
STAKE_OWNER_PRIV=""
STAKE_ACTIVE_PRIV=""
TOKEN_OWNER=""
TOKEN_ACTIVE=""
TOKEN_OWNER_PRIV=""
TOKEN_ACTIVE_PRIV=""
VPAY_OWNER=""
VPAY_ACTIVE=""
VPAY_OWNER_PRIV=""
VPAY_ACTIVE_PRIV=""

arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $BPAY_OWNER_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $BPAY_ACTIVE_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $MSIG_OWNER_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $MSIG_ACTIVE_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $RAM_OWNER_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $RAM_ACTIVE_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $RFEE_OWNER_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $RFEE_ACTIVE_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $SAVE_OWNER_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $SAVE_ACTIVE_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $STAKE_OWNER_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $STAKE_ACTIVE_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $VPAY_OWNER_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $VPAY_ACTIVE_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $TOKEN_OWNER_PRIV
arisencli --wallet-url 127.0.0.1:8889 wallet import --private-key $TOKEN_ACTIVE_PRIV

arisencli create account arisen arisen.bpay $BPAY_OWNER $BPAY_ACTIVE
arisencli create account arisen arisen.msig $MSIG_OWNER $MSIG_ACTIVE
arisencli create account arisen arisen.ram $RAM_OWNER $RAM_ACTIVE
arisencli create account arisen arisen.rfee $RFEE_OWNER $RFEE_ACTIVE
arisencli create account arisen arisen.save $SAVE_OWNER $SAVE_ACTIVE
arisencli create account arisen arisen.stake $STAKE_OWNER $STAKE_ACTIVE
arisencli create account arisen arisen.vpay $VPAY_OWNER $VPAY_ACTIVE
arisencli create account arisen arisen.token $TOKEN_OWNER $TOKEN_ACTIVE
