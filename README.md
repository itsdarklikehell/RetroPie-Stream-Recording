# RetroPie-Stream-Recording


## Development Visualization

<video src="https://raw.githubusercontent.com/itsdarklikehell/RetroPie-Stream-Recording/master/gource.mp4" controls width="100%"></video>

*Gource visualization showing the repository's commit history. See the [Gource workflow](.github/workflows/gource.yml) for details.*


<img src="https://img.shields.io/github/stars/itsdarklikehell/RetroPie-Stream-Recording?style=flat-square&color=blue" alt="Stars">
<img src="https://img.shields.io/github/forks/itsdarklikehell/RetroPie-Stream-Recording?style=flat-square&color=green" alt="Forks">
<img src="https://img.shields.io/github/license/itsdarklikehell/RetroPie-Stream-Recording?style=flat-square" alt="License">

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
