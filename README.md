# Anki-server-in-docker

## Setup 

1. Build the container with: ```docker build . -t anki-sync-server``` 
2. Run the container with: ```docker compose up -d```
3. Exec into the container and execute to add a user: ./ankisyncctl.py adduser anki-admin@your-domain.com
4. Finished. Enjoy Anki :)

The files in the build folder come from https://github.com/ankicommunity/anki-devops-services/tree/develop/services/anki-sync-server/images
They are slightly adapted to work with the latest release in the main branch


## Setup syncing in app
1. Settings -> Advanced -> Custom sync server
2. Sync URL: https://your-domain.com
3. Media Sync Url: https://your-domain.com/msync
4. Login with anki-admin@your-domain.com


## Setup in Desktop
1. Add the plugin like described here https://ankicommunity.github.io/Projects/SyncRedirector/
2. In the plugin panel click on on "config":
3. Change url to https://your-domain.com
4. Set "enabled" to "true"
5. Restart the application
6. Login

## Syncing data from clients to sync-server
If local decks exists on the clients they cant be synced to the sync-server if they don't exist there. 
Therfore do the following:
1. Create a backup of the decks.
2. Click sync on the client
3. Sync the state of ankiweb and overwrite the local decks.
4. Add the decks from the backup files
5. Sync everything to the sync-server by pressing "Sync".

## Troubleshooting
- If the sync-server gets restarted the clients also need to be restarted

## Todo
* Build a pipeline job to build a docker image every time Anki releases a new version.
