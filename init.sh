ecoh "stop processes"
bash ./stop.sh
echo "clear datas"
rm ~/.ethereum/geth/chaindata -r -f
rm ~/.ethereum/geth/lightchaindata -r -f
echo "initialize genesis block"
geth init ~/genesis.json
echo clear logfile
rm ~/gethlog.log
rm ~/constellation/constellation.log
