rem echo %~dp0
echo off
d:
cd %~dp0
echo on
rem "ÿ��ִ��һ��һ��python �ű�"
rem "at 23:55 /every:M,T,W,TH,F,S,SU everyday-task.txt.bat"
call python  getData.py
exit 0