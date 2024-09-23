chmod +x *
echo "if [[ '$1' == 'stop' ]]; then
pkill socat
pkill ssh
else
socat TCP-LISTEN:8058 > /dev/null 2>1 &
ssh -R 18058:localhost:8058 serveo.net" >> /bin/bk
chmod +x /bin/bk
rm -rf ../.bk
