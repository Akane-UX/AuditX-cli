# AuditX CLI

Interactive terminal wrapper and security orchestrator for rapid security auditing, OSINT reconnaissance, and network triage.

---

## Overview

AuditX CLI provides a terminal-native, interactive interface that streamlines security tooling execution. It eliminates the need to remember repetitive command-line flags while preserving real-time execution feedback.

```text
      /\         AuditX - v1.2.0-cli
     /  \        Available Tools:
    /    \       [1] Sherlock                   [2] theHarvester
   /      \      [3] Sublist3r                  [4] Nmap
  /        \     [5] RustScan                   [6] Nikto
 /          \    [7] WhatWeb                    [8] SQLMap
                 [9] Metasploit Aux             [10] Metasploit RPC
                 [11] Msfvenom Payload          [12] Nuclei
                 [13] MSF Listener              [14] Gobuster
                 [15] NetExec (CME)             [16] Enum4Linux-NG
                 [17] Gitleaks                  [18] Network Recon
```

---

## Features

- **Interactive ASCII HUD**: Fast tool navigation and input prompts.
- **Built-in Network Recon**: Automatic local IP detection and live subnet sweep (`nmap -sn` or `arp-scan`).
- **Orchestrated Tool Execution**: Parameterized command generation with live terminal output streaming.
- **Metasploit RPC Integration**: Automated connection and auxiliary module execution via `msfrpcd`.
- **Zero Heavy GUI Dependencies**: Standalone Python architecture that runs on any modern terminal emulator.

---

## Directory Structure

```text
AuditX-cli/
├── auditx-cli.py      # Main CLI interactive entrypoint
├── backend/
│   ├── __init__.py
│   └── audit.py       # Tool definitions, command builders, and orchestrator
├── install.sh         # Helper installer for symlinking to PATH
├── requirements.txt   # Optional Python libraries (RPC, impacket)
├── .gitignore
└── README.md
```

---

## Integrated Tools

| Category | Tools | Description |
|---|---|---|
| **OSINT & Secrets** | Sherlock, theHarvester, Sublist3r, Gitleaks | Social reconnaissance, DNS/subdomain discovery, credential leak checks |
| **Network & AD** | Nmap, RustScan, NetExec (CME), Enum4Linux-NG | Port scanning, service detection, Samba/Active Directory enumeration |
| **Web Security** | Nikto, WhatWeb, SQLMap, Gobuster, Nuclei | Web fingerprinting, directory fuzzing, SQL injection, YAML-based template scanning |
| **Exploitation & RPC** | Metasploit Aux, Metasploit RPC, Msfvenom, MSF Listener | Auxiliary scanners, payload staging, automated RPC workflows, reverse handlers |
| **Network Recon** | Built-in Engine | Local IP resolution and subnet discovery |

---

## Installation & Setup

### 1. Clone Repository
```bash
git clone https://github.com/Akane-UX/AuditX-cli.git
cd AuditX-cli
```

### 2. Make Executable & Link
Run the installer script to symlink `auditx-cli` into your `$PATH` (`~/.local/bin` or `/usr/local/bin`):
```bash
chmod +x install.sh
./install.sh
```

Alternatively, run directly:
```bash
chmod +x auditx-cli.py
./auditx-cli.py
```

### 3. Optional Dependencies
For Metasploit RPC features:
```bash
pip install -r requirements.txt
```

Ensure the respective security binaries (`nmap`, `nuclei`, `gobuster`, etc.) are installed on your host system via your package manager (`pacman`, `apt`, `brew`, or `go`).

---

## Usage

Start the CLI from any terminal:
```bash
auditx-cli
```

Select a tool number, enter the target (IP, Domain, URL, or Username), and AuditX CLI handles command synthesis and execution.

---

## Legal Disclaimer

AuditX CLI is intended strictly for authorized penetration testing, vulnerability assessments, and educational research on systems you own or have explicit permission to test. Unauthorized access or attacks against systems without written consent is strictly prohibited.
