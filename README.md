# RetroPie-Stream-Recording

<img src="https://img.shields.io/github/stars/itsdarklikehell/RetroPie-Stream-Recording?style=flat-square&color=blue" alt="Stars">
<img src="https://img.shields.io/github/forks/itsdarklikehell/RetroPie-Stream-Recording?style=flat-square&color=green" alt="Forks">
<img src="https://img.shields.io/github/license/itsdarklikehell/RetroPie-Stream-Recording?style=flat-square" alt="License">
<img src="https://img.shields.io/github/actions/workflow/status/itsdarklikehell/RetroPie-Stream-Recording/ci.yml?branch=main&label=CI&style=flat-square" alt="CI Status">

Stream en neem gameplay op van je RetroPie naar Twitch.

## Installatie

### Vereisten

1. RetroPie geïnstalleerd
2. FFmpeg geïnstalleerd
3. RetroArch met FFmpeg support

### Installatie

```bash
git clone https://github.com/itsdarklikehell/RetroPie-Stream-Recording.git
cd RetroPie-Stream-Recording
chmod +x install.sh
./install.sh
```

## Gebruik

```bash
# Start streaming naar Twitch
./stream.sh twitch

# Start opname
./record.sh

# Stop stream/record
./stop.sh
```

## Bijdragers

- [itsdarklikehell](https://github.com/itsdarklikehell) — Onderhouder

## Licentie

MIT — zie [LICENSE](LICENSE) voor details.
