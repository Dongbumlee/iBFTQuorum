set -u
set -e

echo "[*] Starting Constellation nodes"
nohup constellation-node tm.conf 1>> ~/constellation/constellation.log &

echo "[*] Starting Node"
nohup geth \
                --identity "[your server name]" \
                --rpc \
                --rpcaddr "0.0.0.0" \
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
                --ethstats "[your server name]:bb98a0b6442386d0cdf8a31b267892c1@[your server ip]:3000" \
                --gasprice 0 \
                --unlock 0 \
                --password passwords.txt  1>> gethlog.log &
