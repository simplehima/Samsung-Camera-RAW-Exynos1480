# Samsung Camera RAW (Exynos 1480 / Galaxy A55)

A professional-grade Magisk module and binary patcher to enable Hardware Level 3 (RAW) support on the Samsung Galaxy A55 (Exynos 1480) for One UI 8.0 / DeathUI ports.

## Features
- **Hardware Level 3**: Unlocks professional camera capabilities (RAW, Manual Sensor, Burst).
- **Stealth-Mount**: Uses `post-fs-data` bind-mounting to bypass One UI 8 security restrictions.
- **SELinux Injection**: Automatically injects required policies for the camera provider service.
- **POSIX Compliant**: Built with cross-platform compatibility for Linux/Android pathing.

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

## ⚖️ Legal Disclaimer
This project is an **educational tool** designed for researchers and device owners to analyze and maintain their hardware. 
- This repository **does not** contain proprietary binaries in its source history.
- The developers are not responsible for any damage to your device or violations of regional regulations regarding camera software.
- Use at your own risk.

## Credits
- **TBM13**: Original Patching Logic.
- **himasimple (@Hima_Simple)**: DeathUI 8.0 V4 Implementation and Testing.
