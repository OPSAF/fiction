@echo off
git add -A
git diff --cached --quiet
if errorlevel 1 (
    git commit -m "update"
    git push
    echo 已提交并推送。
) else (
    echo 没有需要提交的更改。
)