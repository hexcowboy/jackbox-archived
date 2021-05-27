# JackBox

A super-tiny (less than 1GB) [Docker](https://www.docker.com) container that provides a penetration testing environment.

- Runs on Windows, Mac, Linux (anything that runs Docker)
- Setup in as little as 1 minute
- Default configuration is a completely ready environment

**Yes, it's faster than a VM.**

## 🎡 Environment
- **`OS`** - [Debian](https://www.debian.org) a free and open-source linux distributionn
- **`Package Managers`** - [Homebrew for Linux](https://brew.sh/) and Debian's [apt](https://wiki.debian.org/DebianRepository)
- **`Shell`** - Bash, Zsh, Fish, and/or Powershell all with a pre-configured [starship](https://github.com/starship/starship) prompt
- **`Productivity Tools`** - [Neovim](https://neovim.io/) (symlinked to `vi` and `vim`), [Fzf](https://github.com/junegunn/fzf), [RipGrep](https://github.com/BurntSushi/ripgrep), [Tmux](https://github.com/tmux/tmux/wiki), [HTTPie](https://httpie.io)/[Curl](https://curl.se)/[Wget](https://www.gnu.org/software/wget/)
- **`Pentesting`** - [nmap](https://nmap.org/), [sqlmap](http://sqlmap.org/), [SecLists](https://github.com/danielmiessler/SecLists), [wpscan](https://github.com/wpscanteam/wpscan), [mitmproxy](https://mitmproxy.org/)

... and much more outlined in the [Documentation](#-documentation)

## 🚀 Quickstart
Follow instructions for [downloading and installing Docker](https://docs.docker.com/get-docker/) on you host machine. *If your host machine is Linux then you will also need to [install Docker Compose](https://docs.docker.com/compose/install/).*

```bash
# Download the repo
git clone https://github.com/jackno/jackbox.git
cd jackbox
```

```bash
# Setup
docker-compose run jackbox setup

# Start
docker-compose up jackbox
```

```bash
# Connect to JackBox via SSH
ssh <user>@localhost
```

## 🧼 Cleanup
⚠️ **Data in the `/etc`, `/opt`, `/home`, and `/var` paths are persistent, but nothing else is.**

```bash
# Close out your session without deleting your data.
docker-compose down jackbox
```

```bash
# The -v option will completely delete all your persistent data. Make sure you back up sensitive files.
docker-compose down jackbox -v
```

## 📚 Documentation
This is a work in progress.

## 🤝 Contributing
**Feature Requests** please make a post [here](#)

**Bugs** please report [here](#)

## 📃 License
JackBox is licensed under the [MIT License](https://github.com/jackno/jackbox/blob/main/LICENSE).
