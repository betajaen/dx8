include "../sdk/common/cpu.inc"
include "../sdk/rom/memory.inc"

inc x

rom.memcpysm 40, 400, 32
rom.memset 0, 'A', 3000

