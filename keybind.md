## Basic Neovim Concepts (Essential for Beginners)

### Modes
- **Normal Mode**: Navigate and run commands (default mode)
- **Insert Mode**: Type text like a regular editor
- **Visual Mode**: Select text
- **Command Mode**: Run commands with `:`

### Mode Switching
- `ESC` or `Ctrl+c` → Go to Normal mode
- `i` → Insert mode (before cursor)
- `a` → Insert mode (after cursor)
- `v` → Visual mode
- `:` → Command mode

## NvChad Essential Shortcuts

### File Operations
| Shortcut | Action | Mode |
|----------|--------|------|
| `Space + ff` | Find files (fuzzy search) | Normal |
| `Space + fo` | Find old files (recent files) | Normal |
| `Space + fw` | Find word in project | Normal |
| `Space + fb` | Find in open buffers | Normal |
| `Space + fz` | Find in current file | Normal |
| `Ctrl + n` | Toggle file explorer (nvim-tree) | Normal |
| `Space + e` | Focus file explorer | Normal |

### File Explorer (nvim-tree) Commands
| Key | Action |
|-----|--------|
| `Enter` | Open file/folder |
| `a` | Create new file/folder |
| `d` | Delete file/folder |
| `r` | Rename file/folder |
| `c` | Copy file/folder |
| `p` | Paste file/folder |
| `H` | Toggle hidden files |
| `R` | Refresh tree |

### Buffer Management (Open Files)
| Shortcut | Action |
|----------|--------|
| `Tab` | Next buffer |
| `Shift + Tab` | Previous buffer |
| `Space + x` | Close current buffer |
| `Space + b` | New buffer |

### Window Management
| Shortcut | Action |
|----------|--------|
| `Ctrl + h` | Move to left window |
| `Ctrl + j` | Move to bottom window |
| `Ctrl + k` | Move to top window |
| `Ctrl + l` | Move to right window |
| `Space + v` | Split window vertically |
| `Space + h` | Split window horizontally |

### Text Editing Basics
| Key | Action | Mode |
|-----|--------|------|
| `i` | Insert before cursor | Normal |
| `a` | Insert after cursor | Normal |
| `o` | New line below | Normal |
| `O` | New line above | Normal |
| `dd` | Delete current line | Normal |
| `yy` | Copy current line | Normal |
| `p` | Paste | Normal |
| `u` | Undo | Normal |
| `Ctrl + r` | Redo | Normal |
| `/text` | Search for "text" | Normal |
| `n` | Next search result | Normal |
| `N` | Previous search result | Normal |

### Theme & UI
| Shortcut | Action |
|----------|--------|
| `Space + th` | Open theme picker |
| `Space + ch` | Open NvChad cheatsheet |
| `Alt + i` | Toggle terminal |
| `Alt + h/v` | New horizontal/vertical terminal |

### LSP (Language Server) Features
| Shortcut | Action | Description |
|----------|--------|-------------|
| `gd` | Go to definition | Jump to where function/variable is defined |
| `gr` | Go to references | See where function/variable is used |
| `K` | Hover documentation | Show info about symbol under cursor |
| `Space + ca` | Code actions | Show available fixes/refactors |
| `Space + rn` | Rename symbol | Rename variable/function everywhere |
| `Space + fm` | Format code | Auto-format current file |
| `[d` | Previous diagnostic | Go to previous error/warning |
| `]d` | Next diagnostic | Go to next error/warning |

### Autocomplete (nvim-cmp)
| Key | Action | Mode |
|-----|--------|------|
| `Tab` | Select next suggestion | Insert |
| `Shift + Tab` | Select previous suggestion | Insert |
| `Enter` | Accept suggestion | Insert |
| `Ctrl + Space` | Trigger completion | Insert |
| `Ctrl + e` | Close completion menu | Insert |

### Git Integration
| Shortcut | Action |
|----------|--------|
| `Space + gt` | Git status |
| `Space + cm` | Git commits |
| `]c` | Next git change |
| `[c` | Previous git change |

## Getting Started Workflow

### 1. First Time Setup
```bash
# Start nvim
nvim

# Wait for plugins to install
# Press Enter to continue when prompted
```

### 2. Open Your First Project
```bash
# Navigate to your project folder
cd /path/to/your/project

# Open nvim in current directory
nvim .
```

### 3. Basic Workflow
1. **Open file explorer**: `Ctrl + n`
2. **Find files quickly**: `Space + ff`
3. **Edit files**: `i` to insert, `ESC` to normal mode
4. **Save file**: `:w` + Enter
5. **Close file**: `Space + x`
6. **Exit nvim**: `:q` + Enter

## Essential Commands for Beginners

### File Operations
```
:w          - Save file
:wq         - Save and quit
:q          - Quit
:q!         - Quit without saving
:e filename - Open file
```

### NvChad Specific Commands
```
:NvChadUpdate    - Update NvChad
:Telescope       - Open telescope finder
:Mason           - Open LSP server installer
:MasonInstall python-lsp-server  - Install language server
```

## Customization Basics

### Where to Add Your Settings
- Main config: `~/.config/nvim/lua/chadrc.lua`
- Custom configs: `~/.config/nvim/lua/configs/`
- Custom plugins: `~/.config/nvim/lua/plugins.lua`

### Common Customizations
```lua
-- In chadrc.lua
local M = {}

M.ui = {
  theme = "onedark", -- Change default theme
  
  statusline = {
    theme = "vscode_colored", -- Change statusline theme
  },
}

return M
```

## Troubleshooting

### Plugin Issues
```bash
# Lazy plugin manager commands (in nvim)
:Lazy clean    - Remove unused plugins
:Lazy update   - Update all plugins
:Lazy sync     - Clean + update
```

### LSP Issues
```bash
# Check LSP status
:LspInfo

# Install language servers
:Mason
```

## Tips for Beginners

1. **Start Small**: Learn basic navigation first (h,j,k,l keys for movement)
2. **Use Cheatsheet**: Press `Space + ch` to see NvChad's built-in cheatsheet
3. **Practice Mode Switching**: Get comfortable with `ESC` and `i`
4. **Use Space Key**: Most NvChad shortcuts start with `Space`
5. **Don't Panic**: If you get lost, press `ESC` a few times to get to Normal mode

## Common Beginner Mistakes

- **Forgetting modes**: Remember you need to be in Normal mode for shortcuts
- **Not using Space**: Most NvChad features are accessed via `Space + key`
- **Trying to learn everything**: Focus on file navigation first, then text editing
- **Not reading the prompts**: NvChad shows helpful hints at the bottom

## Next Steps

1. Learn basic Vim motions (h,j,k,l)
2. Master file navigation with telescope
3. Set up language servers for your programming languages
4. Explore themes with `Space + th`
5. Customize your config gradually

Remember: NvChad is powerful but has a learning curve. Take it slow and practice the basics first!
