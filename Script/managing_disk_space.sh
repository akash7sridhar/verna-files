path="/home/ubuntu/audios"
timestamp=$(date +%d%m%Y)
currtime=$(date +%d-%m-%YT%H:%M:%S+5.30)
filename=$timestamp.log
log=deleted-files-$filename
days=2


find $path -name "*.wav"  -type f -mtime +$days  -printf '%P \t  %Td-%Tm-%TYT%TH:%TM:%.2TS+05:30 \t' -delete -exec echo $currtime \; >> $log
