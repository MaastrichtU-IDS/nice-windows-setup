# Windows for dev setup

### Install terminal and Ubuntu

1. Install the Terminal for Windows (you cannot use the old CMD and Powershell, you absolutely need to install this new modern terminal)

You can easily do it from the Windows app store: https://www.microsoft.com/nl-nl/p/windows-terminal/9n0dx20hk701

2. Install Windows Subsystem Linux:

```bash
wsl --install
```

> Follow the instructions, you'll need to restart your laptop once or twice

Now you should have Ubuntu installed, with a modern terminal

### Setup the environment

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

