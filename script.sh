echo "======================================"
echo "== Starting mac setup by Elo.its.me =="
echo "======================================"

echo "\n== Updating macOS ==\n"
sudo softwareupdate -i -a -R
echo "\n== macOS updated ==\n"

echo "== Installing Xcode Command Line Tools ==\n"
xcode-select --install
echo "\n== Xcode Command Line Tools installed ==\n"

echo "== Installing Homebrew ==\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update && brew upgrade
echo "\n== Homebrew installed ==\n"

echo "== Installing oh-my-zsh ==\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "\n== oh-my-zsh installed ==\n"

echo "== Installing Git ==\n"
brew install git
echo "\n== Git installed ==\n"

echo "== Installing GitHub CLI ==\n"
brew install gh
echo "\n== GitHub CLI installed ==\n"

echo "== Setup GitHub CLI ==\n"
gh auth login -s 'user:email' -w
echo "\n== GitHub CLI setup ==\n"

echo "== Installing Wget ==\n"
brew install wget
echo "\n== Wget installed ==\n"

echo "== Installing PostgreSQL ==\n"
brew install postgresql
brew services start postgresql
echo "\n== PostgreSQL installed ==\n"

echo "== Installing Redis ==\n"
brew install redis
brew services start redis
echo "\n== Redis installed ==\n"

echo "== Installing Node.js ==\n"
brew install node
echo "\n== Node.js installed ==\n"

echo "== Installing Yarn ==\n"
brew install yarn
echo "\n== Yarn installed ==\n"

echo "== Setup Ruby for Rails ==\n"
brew install rbenv ruby-build
rbenv init
rbenv install -l
echo "What version of Ruby do you want to install?"
read ruby_version
rbenv install $ruby_version
rbenv global $ruby_version
gem update bundler
bundle update --bundler
gem install rails
echo "\n== Ruby for Rails setup ==\n"

echo "== Installing Apps ==\n"
brew install --cask google-chrome
brew install --cask firefox
brew install --cask arc
brew install --cask visual-studio-code
brew install --cask warp
brew install --cask notion
brew install --cask notion-calendar
brew install --cask discord
brew install --cask slack
brew install --cask readdle-spark
brew install --cask figma
brew install --cask app-cleaner
brew install --cask raycast
brew install --cask timemator
brew install --cask alt-tab
brew tap fwartner/tap
brew install fwartner/tap/mac-cleanup
echo "\n== Apps installed ==\n"

echo "== Cleaning up ==\n"
mac-cleanup -u
echo "\n== Cleaned up ==\n"
