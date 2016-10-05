# (工作排程的種類)
#循環執行的例行性工作排程
#系統的設定檔： /etc/crontab,  /etc/cron.d/*
# *  *  *  *  * user-name  command to be executed
#分(59)-時(24)-日(31)-月(12)-日(7)
#special char
# *   －－－－－－－－＞一小時每分鐘擇行一次 
# ,   －－－－－－－－＞不連續時間 ／"0 8,12,16 ＊ ＊ ＊" ／每天8點,12點,16點行一次
# -    －－－－－－－－＞連續時間  ／"0 5 ＊ ＊ 1-7"／ 每週1-7 5點行一次
# */n     －－－－－－－－＞多久行一次  ／"＊／5 ＊ ＊ ＊ ＊" ／  每5分鐘行一次
#comm 
#crontab -e   edit
#crontab -l   list
#crontab -r    del

0 2 * * 1-7 /bash/backup 