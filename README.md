# VS-EXERCISE

A simple CRUD APP for STUDIOS

# INSTALLATION

OPEN BROWSE

1.  Paste this to your browser https://github.com/leindonlemoh/vs-excercise.git
    or Open your termina and type

    > git clone https://github.com/leindonlemoh/vs-excercise.git

2.  check the folder name "vs-exercise"
3.  copy this link https://github.com/leindonlemoh/my-next-app.git
    > open vs-exercise
    > delete "my-next-app" folder
4.  right click inside the vs-exercise folder to open a terminal >git clone https://github.com/leindonlemoh/my-next-app.git > after cloning check if there a new "my-next-app" folder
    5.do this for each folders named "vs-exercise","my-next-app","server" >right click on folder open git bash or any terminal >type npm install >check if all folders has node_modules
5.  in "vs-exercise" Open packahe.json
    > check this line of code if same
    > "scripts": {
        "dev": "concurrently \"npm run dev --prefix my-next-app\" \"node server/index.js\""
    },

7.opem your mysql workbench

> connect to your SQL connections
> click server on top between Database and Tools
> click Data Import
> under Import Options
> select Import from Dump Folder
> route the "vs-exercise"
> select studios.sql
> check if there is selected db or schema on lower left
> click Import progress on top of Import Options
> click start Import

8.go back to "vs-exercise" open the terminal

> type npm run dev and open project in your browser http://localhost:3000/

NOTE:
I Used next 13 for the front-end due to having a problem in brunning a build script in Next.js 15
on useSearchParams
and I use Express.js in backend since I'm also having a problem on my composer in using LARAVEL
both front-end and back-end will run in parent folder in one npm run dev
