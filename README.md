# 🧨 JackBox

A super-tiny (less than 1GB) docker container that provides a penetration testing suite. Jackbox takes less than 1 minute to setup and is persistent between sessions. It runs on any machine that can run Docker (Windows, Mac, Linux). Yes, it's faster than Kali.

## 🎡 Environment
- **[`Alpine Linux`](https://alpinelinux.org/)** - a lightweight and secure linux distribution that uses [busyboxy](https://busybox.net/downloads/BusyBox.html)
- **`Zsh`** - with a pre-installed [starship](https://github.com/starship/starship) prompt and [syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- **[`Neovim`](https://neovim.io/)** - a lightweight improvement of Vim with 30% less source code (symlinked to `vim` and `vi`)
- **`Package Managers`** - [Homebrew for Linux](https://brew.sh/), [Cargo from Rust](https://crates.io/), [Go](https://pkg.go.dev/), [Pip3](https://pypi.org/), and Alpine Linux's [apk](https://pkgs.alpinelinux.org)
- **`Pentesting`** - [nmap](https://nmap.org/), [sqlmap](http://sqlmap.org/), [SecLists](https://github.com/danielmiessler/SecLists), [wpscan](https://github.com/wpscanteam/wpscan), Python 3, [mitmproxy](https://mitmproxy.org/), view the [full list here](#TODO)

... and much more outlined in the [Documentation](#-documentation)

## 🚀 Quickstart
Follow instructions for [downloading and installing Docker](https://docs.docker.com/get-docker/) on you host machine. *If your host machine is Linux then you will also need to [install Docker Compose](https://docs.docker.com/compose/install/).*

```bash
# Download the repo
git clone https://github.com/jackno/jackbox.git
cd jackbox
```

```bash
# Build
docker-compose build

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
**Data in the `/var`, `/home`, and `/etc` paths are persistent, but nothing else is.**

```bash
# Close out your session
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
