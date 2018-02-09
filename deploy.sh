# This script is used for server building
prog="said"

echo '\n'
echo '    //   ) )                                    '
echo '   ((         ___     ( )  ___   /              '
echo '     \\     //   ) ) / / //   ) /               '
echo '       ) ) //   / / / / //   / /                '
echo '((___ / / ((___( ( / / ((___/ /   @ by linkFly  '
echo '============= deploy start ============='

npm i --production

export NODE_ENV=production
cpu_num=`cat /proc/cpuinfo| grep "processor"| wc -l`
# 根据 cpu 个数进行集群部署
echo "cpu sums: $cpu_num, env: $env)"
pm2 stop $prog
pm2 start .app.js --name $prog -i $cpu_num