# Database

This Readme.md file helps you to know the Pre-Requisite, Required Software, Required Packages, how to implement and use them, for Database.

## Pre-Requisite

- Maria DB
- Visual Studio Code

## Required Softwares

- Visual Studio Code

## Required Packages

- Maria DB 10.11

## How to install the Softwares

### Visual Studio Code

- Step 1 :- Download VS Code
    - Go to the official [Visual Studio Code website](https://code.visualstudio.com/).
    - Click on the "Download for [your operating system]" button.

- Step 2 :- Install VS Code
    - Once the download is complete, locate the downloaded file (typically in your Downloads folder).
    - On Windows, it's usually a .exe file. On macOS, it's a .dmg file.
    - Double-click the file to start the installation process.

- Step 3 :- Launch VS Code

    - Once the installation is complete, you can launch Visual Studio Code.
    - On Windows, you can usually find it in the Start menu or by searching for "Visual Studio Code."
    - On macOS, you can find it in the Applications folder or launch it from Spotlight search.

## How to install each of the packages

### Maria DB 10.11

- Step 1 :- Download Node.js
    - Visit the official [MariaDB website](https://mariadb.org/).
    - Navigate to the Downloads section.
    - Choose the version 10.11 of MariaDB for your operating system.

- Step 2 :- Install Maria DB
    - Download the installer (.msi file).
    - Double-click the downloaded file to start the installation process.
    - Follow the installation wizard instructions. You may need to choose installation directory, configure root password, etc.

- Step 3 :- Secure MariaDB
    - After installation, it's recommended to run the security script to set up basic security settings:
    
        ```
        sudo mysql_secure_installation
        ```
    - This script will prompt you to set the root password, remove anonymous users, disallow root login remotely, remove test databases, and reload privilege tables.

- Step 4 :- Verify Installation
     - After installation, you can verify that MariaDB is running by accessing the command-line client:
    
        ```
        mysql -u root -p
        ```

## How to run the project

1. Connect to MariaDB from VS Code (Using Extensions)

    - Step 1 :- Install Extension
        - Open VS Code and go to the Extensions tab (Ctrl+Shift+X on Windows/Linux, Cmd+Shift+X on macOS). Search for "MySQL/MariaDB" and install the recommended extension.
    - Step 2 :- Create Connection
        - Click on the extension icon (database icon) in the Activity Bar. Click the "+" icon to add a new connection. Choose "MySQL" (MariaDB is compatible). Provide your MariaDB server details:
            - Host: Typically "localhost" if MariaDB is on the same machine as VS Code.
            - Port: The port MariaDB is listening on (default is 3306).
            - Username: The username you created during MariaDB installation (e.g., "root").
            - Password: The password you set for the user.
            - Database (optional): Specify a specific database to connect to initially.

2. Write and Execute SQL Queries

    - Step 1 :- Create a File
        -  Create a new file (.sql extension is recommended) to write your SQL queries. 
    - Step 2 :- Write Queries
        - Compose your SQL statements (e.g., SELECT * FROM users; to view all rows in the "users" table).
    - Step 3 :- Execute Queries

## How to build and deploy the project

## How to do unit testing
