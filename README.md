# mydots

Configuración de mi entorno de desarrollo en Arch Linux + GNOME (Wayland).

## Contenido

- `nvim/` → `~/.config/nvim` — [LazyVim](https://www.lazyvim.org/) con soporte para TypeScript/JS, Python, Go, PHP (Laravel), JSON, YAML, Docker y Bash. Tema `tokyonight`.
- `ghostty/config` → `~/.config/ghostty/config` — terminal con fuente JetBrainsMono Nerd Font Mono Medium, tema TokyoNight Night, transparencia, y arranque directo en Herdr.
- `herdr/config.toml` → `~/.config/herdr/config.toml` — [Herdr](https://herdr.dev), gestor de sesiones/paneles de terminal para trabajar con varios agentes de IA (Claude Code, etc.) a la vez. Prefix `ctrl+b`, navegación de paneles estilo vim (`hjkl`).

## Cómo restaurar

```bash
cp -r nvim/. ~/.config/nvim/
cp ghostty/config ~/.config/ghostty/config
cp herdr/config.toml ~/.config/herdr/config.toml
```

## Paquetes del sistema necesarios (Arch/pacman)

```bash
sudo pacman -S --needed base-devel fd go php composer lazygit ghostty wl-clipboard github-cli
```

- `base-devel` — compilador (gcc/make), requerido por Treesitter para compilar parsers.
- `fd` — usado por Telescope para buscar archivos.
- `go`, `php`/`composer` — toolchains para los LSP de Go y PHP (phpactor).
- `lazygit` — UI de git en terminal, integrada con LazyVim (`<leader>gg`) y con Herdr.
- `ghostty` — terminal.
- `wl-clipboard` — necesario para pegar imágenes en Claude Code sobre Wayland.
- `github-cli` (`gh`) — para autenticación y operaciones de GitHub desde terminal.

## Herdr

Instalación (no está en pacman, es un binario standalone):

```bash
curl -fsSL https://herdr.dev/install.sh | sh
herdr integration install claude
```

## pnpm

Instalado con el script standalone oficial (no vía npm global, que en Arch requiere sudo):

```bash
curl -fsSL https://get.pnpm.io/install.sh | sh -
```

Agrega `PNPM_HOME` al `PATH` en `~/.zshrc` automáticamente.

## Ajustes de GNOME que no son archivos (gsettings)

Fuente monospace del sistema (Tweaks → Fonts):

```bash
gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrainsMono Nerd Font Mono Medium 14'
```

GNOME Console: seguir la fuente del sistema en vez de su propio override:

```bash
gsettings set org.gnome.Console use-system-font true
```
