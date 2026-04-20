# Samsung Camera RAW (Exynos 1480 / Galaxy A55)

A professional-grade Magisk module and binary patcher to enable Hardware Level 3 (RAW) support on the Samsung Galaxy A55 (Exynos 1480) for One UI 8.0 / DeathUI ports.

## Features
- **Hardware Level 3**: Unlocks professional camera capabilities (RAW, Manual Sensor, Burst).
- **Stealth-Mount**: Uses `post-fs-data` bind-mounting to bypass One UI 8 security restrictions.
- **SELinux Injection**: Automatically injects required policies for the camera provider service.
- **POSIX Compliant**: Built with cross-platform compatibility for Linux/Android pathing.
- **Auto Updates**: Built-in compatibility with Magisk's update system for future fixes.


## 📖 Technical Documentation
For a deep dive into how this module works, including binary patching and SELinux injection details, visit our **[Project Wiki](https://github.com/simplehima/Samsung-Camera-RAW-Exynos1480/wiki)**.

## 📦 Installation
1. Download the latest `DeathU_V8_Level3.zip` from the [Releases](https://github.com/TODO/releases) page.
2. Install via Magisk or KernelSU.
3. Reboot your device.
4. Verify support using the **Manual Camera Compatibility** app.

## 🛠️ Developer: Patching from Source
If you wish to patch your own library:
1. Copy your stock `camera.s5e8845.so` to the root folder.
2. Install dependencies: `pip install keystone-engine capstone angr`.
3. Run the patcher: 
   ```bash
   python patch_s5e.py stock_camera.so --hardware-level LEVEL_3
   ```
4. Build the module:
   ```bash
   python build_zip.py
   ```

## ⚖️ Legal Disclaimer & Liability
This project is an **educational research tool** designed for binary analysis and system maintenance.
- **No Proprietary Binaries**: This repository **does not** host or distribute any original or modified Samsung proprietary files (`.so`, `.elf`, etc.) in the source code.
- **User Responsibility**: By using this tool, you acknowledge that you are modifying your own device at your own risk. The developers are not responsible for any damage, loss of warranty, or legal issues arising from the use of this software.
- **Warranty**: THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.

## 🤝 Credits & Acknowledgments
Special thanks to the developers and researchers who made this possible:
- **TBM13**: For the original Exynos patching logic and pattern research.
- **himasimple (@Hima_Simple)**: For DeathUI 8.0 V4 implementation, testing, and V4 Stealth-Mount discovery.
- **DeathThoughts (Death)**: For the [DeathUI 8.0](https://github.com/DeathThoughts/) ROM port and development.
- **topjohnwu**: For the [Magisk](https://github.com/topjohnwu/Magisk) framework.
- **The Keystone Engine Team**: For the assembly framework.
- **The Capstone Engine Team**: For the disassembly framework.
- **The angr Project**: For binary analysis support.

## License
Distributed under the **MIT License**. See `LICENSE` for more information.
