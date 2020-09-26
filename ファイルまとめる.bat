@echo off
SET /P selected="ダウンロードファイルからファイルをまとめますか？(Y=YES / N=NO)？"
if /i {%selected%}=={y} (goto :yes)
if /i {%selected%}=={yes} (goto :yes)

:no
goto exitlabel

:yes
cd %USERPROFILE%\DOWNLOADS 
if not exist Web*  goto nonelabel
move Web* .\example
echo 完了しました
goto finishlabel

:exitlabel
echo 処理を中止します
goto finishlabel

:nonelabel
echo 対象ファイルが存在しませんでした
goto finishlabel

:finishlabel
pause
exit /B 0