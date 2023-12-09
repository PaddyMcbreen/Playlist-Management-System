# Create a Spotify Playlist with Terraform:

The contents of this repo can be used to develop and manage a spotify playlist using Terraform, Spotifys API and Docker.


# Spotify Developer Access:
Before you can use Terraform with Spotify, you need to create a Spotify developer app and run Spotify's authorization proxy server.

Login to the Spotify developer dashboard:
https://developer.spotify.com/dashboard 


# Creating the app:

Click the green Create an app button.
Fill out the name and description according to the table below, check the box to agree to the terms of services, then click Create.


# Redirect link setup:

Once Spotify creates the application, find and click the green Edit Settings button on the top right side.

Copy the URI below into the Redirect URI field and click Add so that Spotify can find its authorization application locally on port 27228 at the correct path. Scroll to the bottom of the form and click Save.

URL: http://localhost:27228/spotify_callback 



# Creating the environment variable:

Return to your terminal and set the redirect URI as an environment variable, instructing the authorization proxy server to serve your Spotify access tokens on port 27228.

Code: export SPOTIFY_CLIENT_REDIRECT_URI=http://localhost:27228/spotify_callback 

Next, create a file called .env with the following contents to store your Spotify application's client ID and secret.

SPOTIFY_CLIENT_ID=
SPOTIFY_CLIENT_SECRET=

Copy the Client ID from the Spotify app page underneath your app's title and description, and paste it into .env as your SPOTIFY_CLIENT_ID.
Click Show client secret and copy the value displayed into .env as your SPOTIFY_CLIENT_SECRET.


# Docker Setup:
Make sure Docker Desktop is running, and start the server. It will run in your terminal's foreground.

Code: docker run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy

Visit the authorization server's URL by visiting the link that your terminal output lists after Auth:.

The server will redirect you to Spotify to authenticate. After authenticating, the server will display Authorization successful, indicating that the Terraform provider can use the server to retrieve access tokens.

Leave the server running.


# Clone the example repository:

git clone https://github.com/PaddyMcbreen/Playlist-Management-System.git

Change into the directory:
cd Playlist-Management-System


# Setting the API key:














