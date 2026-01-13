time=$(date "+%Y%m%d%H%M%S")

git add .
git commit -m "$time"
git push -u origin main

echo -e "-------------------Deploy End-------------------"

exec /bin/bash
