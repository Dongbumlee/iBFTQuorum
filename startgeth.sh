set -u
set -e

export PATH=/home/gethadmin/.local/bin:$PATH

echo "[*] Starting Constellation nodes"
nohup constellation-node tm.conf 1>> ~/constellation/constellation.log &

echo "[*] Starting Node"
nohup geth \
                --identity "[your server name]" \
                --rpc \
                --rpcaddr "0.0.0.0" \
                --datadir ".ethereum" \
                --rpcport "8545" \
                --rpccorsdomain "*" \
                --port "30303" \
                --rpcapi "admin,db,eth,net,debug,miner,ssh,txpool,quorum,web3,istanbul,personal" \
                --networkid "2017" \
                --nat "any" \
                --nodekeyhex "[your node key]" \
                --mine \
                --debug \
                --metrics \
                --syncmode "full" \
                --gasprice 0 \
                --unlock 0 \
                --password passwords.txt  1>> gethlog.log &
