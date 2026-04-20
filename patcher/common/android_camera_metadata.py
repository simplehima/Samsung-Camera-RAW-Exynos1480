import enum

class SupportedHardwareLevel(enum.IntEnum):
    LIMITED = 0
    FULL = 1
    LEGACY = 2
    LEVEL_3 = 3
    EXTERNAL = 4
