# ◾️ JackBox

A super-tiny (less than 1GB) docker container that provides penetration testing tools. Jackbox takes less than 1 minute to setup and is persistent between sessions.

## 🎡 Environment
**[`Alpine Linux`](https://alpinelinux.org/)** - a lightweight and secure linux distribution that uses [busyboxy](https://busybox.net/downloads/BusyBox.html)<br/>
**`Zsh`** - with a pre-installed [starship](https://github.com/starship/starship) prompt and [syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)<br/>
**[`Neovim`](https://neovim.io/)** - a lightweight improvement of Vim with 30% less source code (symlinked to `vim` and `vi`)<br/>
**Package Managers** - [Homebrew for Linux](https://brew.sh/), [Cargo from Rust](https://crates.io/), [Go](https://pkg.go.dev/), [PyPI with Pip3](https://pypi.org/), and Alpine Linux's [`apk`](https://pkgs.alpinelinux.org) for system modules.</br>
**Pentesting** - [`nmap`](https://nmap.org/), [`sqlmap`](http://sqlmap.org/), [`SecLists`](https://github.com/danielmiessler/SecLists), [`wpscan`](https://github.com/wpscanteam/wpscan), Python 3, [`mitmproxy`](https://mitmproxy.org/), view the [full list here](#TODO)<br/>
... and much more outlined in the [Documentation](#Documentation)

## 🚀 Quickstart
Follow instructions for [downloading and installing Docker](https://docs.docker.com/get-docker/) on you host machine. If your host machine is Linux then you will also need to [install Docker Compose](https://docs.docker.com/compose/install/).

Clone the repository:
```bash
git clone https://github.com/jackno/jackbox.git
cd jackbox
```

Build and setup the box:
```bash
docker-compose build
docker-compose run jackbox setup
# Follow the prompt
docker-compose up jackbox
```

## 🧼 Cleanup
**Data in the `/var`, `/home`, and `/etc` paths are persistent, but nothing else is.**

Close out your session:
```bash
docker-compose down jackbox
```

If you wish to delete all your persistent data, you can do so with the `-v` flag.
```bash
# This will completely delete all your data. Make sure you back up sensitive files.
docker-compose down jackbox -v
```

## 📚 Documentation
This is a work in progress.

## 🤝 Contributing
**Feature Requests** please make a post [here](#)<br/>
**Bugs** please report [here](#)<br/>
