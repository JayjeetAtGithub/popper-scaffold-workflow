
#!/bin/sh
set -e

echo "[+] Running the command"
sh -c "$*"
echo "[-] Now exiting with code 78"
exit 78
