# 8051 Project Makefile for SDCC
# Author: Your Name
# Target: CH549 / 8051

# 编译器
CC = sdcc

# 编译选项
CFLAGS = -I./Public -I./GPIO \
         --model-small \
         --opt-code-speed \
         --no-peep \
         --verbose

# 源文件和目标
TARGET = Main
SRC_DIR = GPIO
SRC = $(SRC_DIR)/$(TARGET).C
OBJ = $(TARGET).rel

# 输出文件（SDCC 默认生成 .ihx）
OUTPUT = $(TARGET).ihx

# 默认目标
all: $(OUTPUT)

# 编译规则
$(OUTPUT): $(SRC)
	$(CC) $(CFLAGS) $<

# 清理生成文件
clean:
	rm -f $(TARGET).{asm,ihx,lst,map,mem,rel,rst,sym} \
	      $(SRC_DIR)/$(TARGET).{asm,lst,mem,rst,sym}

# 重新编译
rebuild: clean all

.PHONY: all clean rebuild