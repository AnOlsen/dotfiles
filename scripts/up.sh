# Text output colour
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting dev environment${NC}"

cd ~/projects/emaerket
docker-compose up -d
google-chrome &> /dev/null
