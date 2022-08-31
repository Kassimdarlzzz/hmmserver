branch=main
git clone -b $branch https://github.com/New-Dev3/Ultroid /root/New-Dev3
cp ultroid/.env /root/New-Dev3/.env
cd /root/New-Dev3
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
