curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash # NVM / Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # Charge et exporte NVM
nvm --version # Vérifie la version de NVM utilisée
nvm install node # Installe la dernière version de Node
nvm use node # Vérifie la version de Node utilisée
npm init # Génère un package.json (avec infos à remplir)
npm install -g @angular/cli # Installe angular-cli
ng new my-app # Génère un squelette de l’app
cd my-app
ng serve --open # Compile et lance l’app sur localhost:4200 (par défaut)