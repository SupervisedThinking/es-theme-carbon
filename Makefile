PREFIX := /usr
INSTALLDIR := $(PREFIX)/share/emulationstation/themes/carbon


all:
	@echo "Nothing to make for es-theme-carbon. Available commands:\n"
	@echo "  make install       Installs files to $(DESTDIR)$(INSTALLDIR)"
	@echo "  make test-install  Runs through a test install\n"

install:
	mkdir -p $(DESTDIR)$(INSTALLDIR)
	cp -a 3do 3ds ags amiga amstradcpc apple2 arcade art astrocade atari800 atari2600 atari5200 atari7800 atarijaguar atarilynx atarist \
          auto-allgames auto-favorites auto-lastplayed bbcmicro c64 channelf coco colecovision custom-collections daphne desktop \
          dragon32 dreamcast fba fds gameandwatch gamegear gb gba gbc gc genesis intellivision kodi love macintosh mame mame-advmame \
          mame-libretro mame-mame4all mastersystem megadrive mess misc moto msx n64 nds neogeo nes ngp ngpc odyssey2 openbor oric \
          pc pce-cd pcengine pcfx ports ps2 ps3 psp psx residualvm retropie samcoupe saturn scummvm sega32x segacd sg-1000 snes solarus \
          steam stratagus supergrafx tg16 tg-cd ti99 trs-80 vectrex videopac virtualboy wii wonderswan wonderswancolor x68000 zmachine \
          zxspectrum *.xml *.txt $(DESTDIR)$(INSTALLDIR)

test-install: all
	DESTDIR=/tmp/build $(MAKE) install
