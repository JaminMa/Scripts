# Scripts Repository

This repository contains a collection of scripts used for various automation and setup tasks.

## Available Scripts

### `initLinux.sh`

A comprehensive initialization script to set up a new Linux environment. It automatically configures essential tools and dotfiles to get the environment up and running quickly.

#### Features:
- **Bash Configuration:** Downloads and applies a custom `.bashrc`.
- **Node Version Manager (NVM):** Optionally installs NVM (checks if Node or NVM are already installed before prompting).
- **Vim Setup:** Installs Vim (via `apt`, `dnf`, or `brew`), applies a custom `.vimrc`, and sets up Pathogen, Syntastic, and the Monokai color theme.
- **Git Configuration:** Downloads and applies a custom `.gitconfig`, and prompts for your name and email to set up your global Git user identity.
- **SSH Key Generation:** Optionally generates a new SSH key for authentication (e.g., with GitHub).

#### How to Run

To execute the script directly without cloning the repository, run the following command in your terminal:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/JaminMa/scripts/master/initLinux.sh)"
```

Follow the interactive prompts to complete the setup.

---

*(Future scripts will be documented here as they are added to the repository.)*
