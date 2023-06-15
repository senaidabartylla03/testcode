echo "start clear order"
mongo mongodb://192.168.1.104:27017/Spot_1_OrderInfo --eval "db.Order_1.remove({});db.BalanceNonce_1.remove({})"

echo "start clear finish order"
mongo mongodb://192.168.1.104:27017/FinishOrder_1 --eval "db.dropDatabase()"


mongo mongodb://192.168.1.104:27017/Activity_1 --eval "db.InviteReward.remove();db.InviteTotal.remove()"

echo "start clear bank"
mongo mongodb://192.168.1.104:27017/bank --eval "db.check_repeat.remove({})"
mongo mongodb://192.168.1.104:27017/abortion --eval "db.collection_1_2.remove({})"
mongo mongodb://192.168.1.104:27017/abortion --eval "db.collection_1_3.remove({})"
mongo mongodb://192.168.1.104:27017/abortion --eval "db.collection_1_4.remove({})"

rem echo "start clear kafka data"
rem bash ./clear_kafka.sh
pause