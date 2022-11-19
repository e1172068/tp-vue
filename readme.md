># TP3 - Vue.js

Github: https://github.com/e1172068/tp-vue

## Commandes utilisées pour installation des bibliothèques nécessaires
- `npm install -g @vue/cli`
- Dans le dossier serveur:
    - `npm install express sequelize mysql2 body-parser cors --save`
- Dans le dossier client:
    - `npm install bootstrap jquery popper.js --force --legacy-peer-deps`
    - `npm install @popperjs/core --save --force --legacy-peer-deps`
    - `npm install axios --force --legacy-peer-deps`


## Instructions d'installation en local
1. Télécharger et décompresser le projet.
2. Installer node.sj.
3. Assurez-vous que le fichier package.json soit bien présent à l'intérieur des répertoires client et server. Installer les dépendances dans chacun des dossiers à l'aide de la commande suivante: `npm install --force --legacy-peer-deps`.
4. Importer la base de donnée sous le nom de tp_vue à partir du fichier sql joint à la racine du projet.
5. Ajustez les ports dans les fichiers `tp-vue/server/server.js` et `tp-vue/client/vue.config.js`au besoin.
6. Dans le fichier `tp-vue/server/app/config/db.config.js/`, configurer les informations de connexion à votre base de données.
7. Toujours dans le terminal, positionnez-vous au niveau du dossier server, puis exécuter la commande `node server.js` pour lancer le serveur.
8. Positionnez-vous maintenant au niveau du dossier client, puis exécutez la commande `npm run serve` pour lancer le projet.
9. Enjoy. :)