# NODE

mkdir myApp && cd myApp
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash # NVM / Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # Charge et exporte NVM
nvm --version # Vérifie la version de NVM utilisée
nvm install node # Installe la dernière version de Node
nvm use node # Vérifie la version de Node utilisée

# EXPRESS

mkdir backend && cd backend
npm init # Génère un package.json (avec infos à remplir)
npm install express --save # Install Express
echo "var express = require('express');\nvar app = express();\napp.get('/', function (req, res) {\nres.send('Hello World')\n});\napp.listen(3000, function () {\nconsole.log('Example app listening on port 3000');\n});" > app.js # Edite le fichier d'entrée de l'App
node app.js # Lance le serveur sur le localhost:3000
npm install express-generator -g # Installe le générateur d'App
express --view=pug myapp # Installe un template Pug
cd myapp && npm install # Installe les dépendances
cd .. && cd ..

# MONGODB

mkdir db && cd db
npm init # Génère un package.json (avec infos à remplir)
npm install mongodb # Installe MongoDB
npm install mongoose # Installe Mongoose
cd ..

# ANGULAR

mkdir frontend && cd frontend
npm init # Génère un package.json (avec infos à remplir)
npm install -g @angular/cli # Installe angular-cli
ng new my-app # Génère un squelette de l’app
cd src/app/ && mkdir app.component.scss # Créer un fichier SCSS qui sera complilé en CSS (selon IDE)
cd my-app && ng serve --open # Compile et lance l’app sur localhost:4200 (par défaut)