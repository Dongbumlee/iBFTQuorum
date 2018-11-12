#this script used when your transaction remains on transaction pool.... make it clear transaction pool
bash stop.sh
rm .ethereum/geth/transactions.rlp
bash init.sh
