# Merckinator.com

## To-Do List
- Create a few basic landing pages
- Setup for my custom domain (merckinator.com)

## Configuration Settings
- Reads the PORT environment variable (Heroku sets this automatically) or uses port 8000 by default (if that env. variable isn't set).

## Technology Choices
- Hosting: Heroku
- Programming Language: Haskell
- Build Tool: Stack
- Web Framework: Scotty
- HTML Templating: Blaze HTML

## Steps to Build this Project
1. Clone repo or download code;
2. Run `$ stack run` in the project's root directory (requires Stack, a Haskell build tool; see below to download);
3. Visit 'localhost:8000' to see the project running locally.

## How-To Create a Haskell App for Heroku
1. Download Stack, a Haskell build tool, from its website (https://docs.haskellstack.org/en/stable/README/);
2. Create a new Stack project;
3. (Heroku) Add a 'Procfile' to the project's root directory with: `web: myProjectName-exe` (if it's a web project);
4. Add dependencies to the 'dependencies' section of the 'package.yaml' file;
    - (Heroku) If you run into issues with the build timing out in Heroku, it might be because you're adding too many dependencies all at once; try adding less per build and they'll be cached for subsequent builds.
5. (Heroku) Create a new Heroku application using the buildpack from (https://github.com/mfine/heroku-buildpack-stack);
    - E.g. run: `$ heroku create --buildpack https://github.com/mfine/heroku-buildpack-stack.git`.