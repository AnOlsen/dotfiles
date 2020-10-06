GREEN_TEXT='\033[0;32m'
NORMAL_TEXT='\033[0m'

echo -e "${GREEN_TEXT}Starting dev environment${NORMAL_TEXT}"

cd ~/projects/emaerket
docker-compose up -d
google-chrome &> /dev/null
