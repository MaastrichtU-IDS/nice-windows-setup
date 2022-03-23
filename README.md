# Windows for dev setup

### 1. Install a modern terminal and Ubuntu

1. Install the Terminal for Windows (you cannot use the old CMD and Powershell, you absolutely need to install this new modern terminal)

You can easily do it from the Windows app store: https://www.microsoft.com/nl-nl/p/windows-terminal/9n0dx20hk701

2. Install Windows Subsystem Linux:

```bash
wsl --install
```

> Follow the instructions, you'll need to restart your laptop once or twice

Now you should have Ubuntu installed, with a modern terminal

### 2. Setup your development environment

Open the terminal on **Ubuntu-20.4** (click on the down arrow at the top of the terminal window to choose the Ubuntu terminal)

Clone this repository in your Linux home folder (`/home/username`)

```bash
cd
git clone https://github.com/MaastrichtU-IDS/nice-windows-setup
cd nice-windows-setup
./setup.sh
```

You can add a symbolic link to the Windows workspace in the Ubuntu home folder to make it more convenient to access the Windows file when in the Ubuntu terminal:

```bash
ln -s /mnt/c/Users/YOUR_USER_ID $HOME/windows
```


You can change the colors for the Terminal in **Settings** > **Profiles** > **Ubuntu** > **Appearance**. We recommend to use the  **Solarized Dark** color scheme.


## 3. Setup Git

Define your name and email for git commits:

```bash
git config --global user.email "your.email@gmail.com"
git config --global user.name "Your name"
```

Optionally you can generate and use a SSH key instead of password for authenticating to git, here is the recommended command to generate a modern and secure SSH key:

```bash
ssh-keygen -t ecdsa -b 521 -f ~/.ssh/github_rsa -C "username@hostname"
```

### 4. Install Docker

If not already done, download the `Docker Desktop Installer.exe` file from [this link](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe), and execute it to install Docker on your laptop.

You can find more documentation about installing Docker on Windows with a WSL2 backend [here](https://docs.docker.com/desktop/windows/install/) if needed.
