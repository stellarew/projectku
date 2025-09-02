#!/bin/bash

echo "=== Membersihkan sistem ==="
sudo apt autoremove -y
sudo apt clean
sudo journalctl --vacuum-time=30d
echo "=== Selesai bersih-bersih ==="
