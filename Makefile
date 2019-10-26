BINS = 99_multb

CROSS_COMPILE = riscv-none-embed-
RV32I_CFLAGS = -march=rv32im -O3 -mabi=ilp32 -nostdlib

CFLAGS = -O3 -Wall -g
LDFLAGS = -lelf
METHOD ?= NOP

.PHONY: all check clean

all: $(BINS)


${BINS}: ${BINS}.c
	$(CROSS_COMPILE)gcc $(RV32I_CFLAGS) -o $@ $<

emu-rv32i: emu-rv32i.c
	$(CC) $(CFLAGS) -D$(METHOD) -o $@ $< $(LDFLAGS)

clean:
	$(RM) $(BINS)