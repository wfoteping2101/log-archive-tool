# 🔐 Log Archive Tool

A simple, lightweight CLI tool to **compress and archive log files** from any specified directory, with automatic timestamping and logging.

This project helps automate log rotation and archiving in a clean and structured way, useful for system admins and DevOps engineers. Built entirely in Bash for portability across Unix-based systems.

This project is based on the Server Performance Stats (https://roadmap.sh/projects/log-archive-tool) project on roadmap.sh.

---

## 📦 Features

- Accepts any log directory as an argument
- Compresses logs into `.tar.gz` format
- Archives stored in a dedicated `/archives` directory
- Archives are timestamped (e.g. `logs_archive_20250419_154813.tar.gz`)
- Archives are logged in `archive_log.txt`
- Supports `/var/log` or any custom path

---

## 🛠 Usage

```bash
./log-archive.sh /path/to/logs
