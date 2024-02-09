# Port specification for compiling on the host machines compiler

# runtimeout in seconds
RUN_TIMEOUT = 1

CC = gcc
SDCC =${CC}
SDCCFLAGS =  -pipe -ggdb -g -O2 --std=c99 $(CPPFLAGS) -DPORT_HOST=1 -DREENTRANT= -I$(top_builddir) -I$(top_srcdir)
SDLDFLAGS = 
# disable all warnings:
SDCCFLAGS+= -w
# enable all warnings:
#SDCCFLAGS+= -Wall -Wno-parentheses

BINEXT = .bin
OBJEXT = .o
INC_DIR = .

# otherwise `make` deletes testfwk.o and `make -j` will fail
.PRECIOUS: $(PORT_CASES_DIR)/%$(OBJEXT)

# Required extras
EXTRAS = $(PORT_CASES_DIR)/testfwk$(OBJEXT) $(PORT_CASES_DIR)/support$(OBJEXT)
include $(srcdir)/fwk/lib/spec.mk

EMU_INPUT =
SIM_TIMEOUT = ${RUN_TIMEOUT}

%$(BINEXT): %$(OBJEXT) $(EXTRAS) $(FWKLIB)
	${M_V_CCLD}$(SDCC) $(SDCCFLAGS) $(SDLDFLAGS) -o $@ $< $(EXTRAS) $(FWKLIB) -lm

#%$(OBJEXT): %.c
#      $(SDCC) $(SDCCFLAGS) -c $< -o $@

$(PORT_CASES_DIR)/%$(OBJEXT): $(PORTS_DIR)/$(PORT)/%.c
	${M_V_CC}$(SDCC) $(SDCCFLAGS) -c $< -o $@

$(PORT_CASES_DIR)/%$(OBJEXT): $(srcdir)/fwk/lib/%.c
	${M_V_CC}$(SDCC) $(SDCCFLAGS) -c $< -o $@


_clean:
