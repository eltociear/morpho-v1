
-include .env.local

export NETWORK

solc :; nix-env -f https://github.com/dapphub/dapptools/archive/master.tar.gz -iA solc-static-versions.solc_0_8_7
all :; dapp build
clean :; dapp clean
test :; dapp test --rpc-url https://${NETWORK}.infura.io/v3/${INFURA_PROJECT_ID} --rpc-block 22747272
test1 :; dapp test --rpc-url https://${NETWORK}.infura.io/v3/${INFURA_PROJECT_ID} --rpc-block 22747272 -m test_withdraw_3_3_4
testSupply :; dapp test --rpc-url https://${NETWORK}.infura.io/v3/${INFURA_PROJECT_ID} --rpc-block 22747272 -m supply
testBorrow :; dapp test --rpc-url https://${NETWORK}.infura.io/v3/${INFURA_PROJECT_ID} --rpc-block 22747272 -m borrow
testWithdraw :; dapp test --rpc-url https://${NETWORK}.infura.io/v3/${INFURA_PROJECT_ID} --rpc-block 22747272 -m withdraw
testRepay :; dapp test --rpc-url https://${NETWORK}.infura.io/v3/${INFURA_PROJECT_ID} --rpc-block 22747272 -m repay
#deploy 	:; dapp create Dapptuto
