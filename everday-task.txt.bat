rem echo %~dp0
echo off
d:
cd %~dp0
echo on
rem "每天执行一次一个python 脚本"
rem "at 23:55 /every:M,T,W,TH,F,S,SU everyday-task.txt.bat"
call python  getData.py

git add .

REM data/data/data (master)
git commit -m 'add data'
REM [master (root-commit) ac5d112] add data
REM  5 files changed, 23 insertions(+)
REM  create mode 100644 everday-task.txt.bat
REM  create mode 100644 getData.py
REM  create mode 100644 stock-data/2016-02-19-gbk-all.json
REM  create mode 100644 stock-data/2016-02-19-gbk.json
REM  create mode 100644 stock-data/2016-02-19-unicode.json
REM 
REM  data/data/data (master)
git push

exit 0