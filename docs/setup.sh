#!/data/data/com.termux/files/usr/bin/sh

# Colors for flair
CYAN='\033[0;36m'
NC='\033[0m'

echo "${CYAN}🚀 Setting up Neiman Repository...${NC}"

# 1. Add the repo automatically
echo "deb [trusted=yes] https://engineermarcus.github.io/neiman-repo/ termux extras" > $PREFIX/etc/apt/sources.list.d/neiman.list

# 2. Update and Install
echo "${CYAN}🔄 Updating package lists...${NC}"
pkg update -y

echo "${CYAN}📦 Installing Neiman...${NC}"
pkg install neiman -y

echo "${CYAN}🎉 Success! Start the app by typing:${NC} neiman"
