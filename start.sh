if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Satiz004/SCARLETT.git /SCARLETT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SCARLETT
fi
cd /SCARLETT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py