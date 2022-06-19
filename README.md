# UniVaISO (main/univalent-iso)
-----
UniVaISO is a modified version of Archiso for Univalent GNU/Linux (UVGL).

UniVaISOはUnivalent GNU/Linux (UVGL)のための改造版Archisoでございます。

## How to install
1. Open /etc/pacman.conf, add and save the following:
```bash
[main]
SigLevel = Optional TrustAll
Server = https://osdn.net/projects/univalentgnulinux/storage/repo/main
```

2. Update package lists.
```bash
sudo pacman -Syu
```

3. Install the "univalent-iso" package.
```bash
sudo pacman -S univalent-iso
```

## 導入方法
1. 「/etc/pacman.conf」を開き、以下を追加して保存します。
```bash
[main]
SigLevel = Optional TrustAll
Server = https://osdn.net/projects/univalentgnulinux/storage/repo/main
```

2. パッケージリストの更新をします。
```bash
sudo pacman -Syu
```

3. 「univalent-iso」パッケージを導入します。
```bash
sudo pacman -S univalent-iso
```
