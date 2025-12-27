# 🚀 Dotfiles Cheat Sheet & Manual

Guía rápida de uso para las herramientas instaladas en este entorno (Neovim, Tmux, Yazi, Zsh, etc.).

---

## 🧭 Navegación y Shell (Zsh + Zoxide + Eza)

*La base del sistema. Movimiento rápido y visualización mejorada.*

| Herramienta | Comando / Tecla | Acción |
| :--- | :--- | :--- |
| **Zoxide** | `z <nombre>` | Salta a una carpeta inteligente (ej: `z proy` → `~/Proyectos`). |
| | `z -` | Vuelve a la carpeta anterior (Back). |
| | `zi` | Abre lista interactiva de carpetas frecuentes. |
| **Eza** | `ls` (o `ll`) | Lista archivos con iconos, colores y permisos. |
| | `eza -T` | Muestra la estructura en árbol. |
| **Bat** | `bat <archivo>` | Muestra contenido con resaltado de sintaxis (mejor que `cat`). |
| **FZF** | `Ctrl + R` | Busca en el historial de comandos (Fuzzy search). |
| | `Ctrl + T` | Busca archivos y pega la ruta en el comando actual. |
| **Zsh** | `Flecha Derecha` | Acepta la autocompletación sugerida (gris). |

---

## 🦆 Yazi (Gestor de Archivos)

*Navegador de archivos en terminal. Lanzar con el alias `y` para conservar la ruta al salir.*

| Contexto | Tecla | Acción |
| :--- | :--- | :--- |
| **Movimiento** | `h` `j` `k` `l` | Izquierda, Abajo, Arriba, Derecha (Entrar/Abrir). |
| | `gg` / `G` | Ir al inicio / Ir al final de la lista. |
| **Acciones** | `Espacio` | Seleccionar archivo(s). |
| | `a` | Crear archivo o carpeta (si termina en `/`). |
| | `r` | Renombrar archivo. |
| | `d` | Borrar (Mueve a papelera o pide confirmación). |
| | `y` / `x` / `p` | Copiar / Cortar / Pegar. |
| **Navegación** | `/` | Buscar dentro de la carpeta actual. |
| | `z` | Saltar a otra carpeta (vía Zoxide). |
| | `.` | Mostrar/Ocultar archivos ocultos. |
| **Pestañas** | `t` | Nueva pestaña. |
| | `[` / `]` | Moverse entre pestañas. |
| **Salir** | `q` | Salir y quedarse en el directorio actual. |

---

## 🐙 Lazygit (Git Visual)

*Interfaz visual para Git. Lanzar con `lazygit` o `lg`.*

| Contexto | Tecla | Acción |
| :--- | :--- | :--- |
| **Paneles** | `1` `2` `3` `4` | Cambiar vista (Estado, Ramas, Commits, Stash). |
| **Archivos** | `Espacio` | Stage/Unstage (git add). |
| | `c` | Hacer **Commit** (abre editor). |
| | `d` | Descartar cambios locales. |
| **Ramas** | `n` | Crear nueva rama. |
| | `Espacio` | Checkout a la rama seleccionada. |
| **Sincronización**| `P` (Mayús+p) | **Push** (Subir cambios). |
| | `p` (minús) | **Pull** (Bajar cambios). |
| **Global** | `q` | Salir. |

---

## 🐳 Lazydocker (Docker Visual)

*Monitorización y gestión de contenedores. Lanzar con `lazydocker`.*

| Contexto | Tecla | Acción |
| :--- | :--- | :--- |
| **Navegación** | `Tab` / Clic | Cambiar entre Servicios, Contenedores e Imágenes. |
| **Acciones** | `r` | **R**einiciar contenedor/servicio. |
| | `s` | **S**top (Parar). |
| | `d` | **D**elete (Eliminar). |
| | `l` | Ver **L**ogs en pantalla completa. |
| | `e` | **E**xec (Entrar en la shell del contenedor). |
| | `b` | Menú de limpieza (Bulk clean). |

---

## 🖥️ Tmux (Multiplexor)

*Gestor de ventanas y sesiones. Tecla líder por defecto: `Ctrl + b`.*

| Contexto | Combo | Acción |
| :--- | :--- | :--- |
| **Paneles** | `Leader` + `%` | Dividir verticalmente ▐. |
| | `Leader` + `"` | Dividir horizontalmente ▬. |
| | `Leader` + `x` | Cerrar panel actual. |
| | `Leader` + `z` | Zoom (Maximizar/Restaurar panel). |
| | `Leader` + `flechas`| Moverse entre paneles. |
| **Ventanas** | `Leader` + `c` | **C**rear nueva ventana. |
| | `Leader` + `n` / `p`| **N**ext / **P**revious ventana. |
| **Sesión** | `Leader` + `d` | **D**etach (Salir dejando sesión en 2º plano). |
| **Recuperar**| `tmux a` | Recuperar sesión (Attach). |

---

## 🏠 Chezmoi (Gestor de Dotfiles)

*Sincronización de configuraciones entre máquinas.*

| Comando | Descripción |
| :--- | :--- |
| `chezmoi add <archivo>` | Añade un archivo nuevo al control de versiones. |
| `chezmoi re-add` | Actualiza los archivos ya gestionados con tus cambios locales. |
| `chezmoi diff` | Muestra diferencias entre local y repositorio. |
| `chezmoi apply` | Aplica la configuración del repo a tu máquina local. |
| `chezmoi cd` | Abre la terminal en la carpeta del repositorio fuente. |
| `chezmoi git push` | Sube los cambios a GitHub/GitLab. |
| `chezmoi update` | `git pull` + `chezmoi apply` (Actualizar todo). |

---

### ⚡ Flujo de Trabajo Recomendado

1. **Navegar:** `z mi-proyecto`
2. **Explorar:** `y` (Yazi) para ver archivos.
3. **Editar:** `nvim .` (Neovim) para programar.
4. **Git:** `lg` (
