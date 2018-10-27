result=$(curl -s "http://$2.172.20.186.221.nip.io")

echo "$result" |grep -q "$3"
if [ $? -eq 0 ]
then
  echo -e "\033[32m 绿色字 \033[0m"
else
  echo -e "\033[31m Testcase $2 error \033[0m"
fi

deis apps:destroy --app=$2 --confirm=$2
cd ..
rm -rf $2
