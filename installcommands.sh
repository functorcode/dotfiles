/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /Users/junedmunshi/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/junedmunshi/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install git
brew install clojure/tools/clojure
sudo softwareupdate --install-rosetta --agree-to-license
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer\

brew install node
node -v
npm install


brew tap d12frosted/emacs-plus
brew install ripgrep
brew install fd
brew tap homebrew/cask-fonts
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true
brew install emacs-plus@29 --with-native-comp --with-c9rgreen-sonoma-icon
~/.config/emacs/bin/doom install
~/.config/emacs/bin/doom sync
~/.config/emacs/bin/doom doctor
