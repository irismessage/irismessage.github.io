:: https://stackoverflow.com/questions/138497/iterate-all-files-in-a-directory-using-a-for-loop
:: https://stackoverflow.com/questions/3215501/batch-remove-file-extension
:: http://steve-jansen.github.io/guides/windows-batch-scripting/part-5-if-then-conditionals.html
:: why did I not just make a python script instead
:: ok this still doesn't work
:: I will make a python script instead
for /r %%i in (.\*) do (if not "%~xi%" neq ".bat" (if not "%~xi%" neq ".png" (magick convert %%i %%~ni.png)
)
