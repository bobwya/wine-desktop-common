MENU_FILES = xdg/winehq-wine.menu

DESKTOP_FILES  =  \
	applications/winehq-browsecdrive.desktop \
	applications/winehq-cmd.desktop \
	applications/winehq-control.desktop \
	applications/winehq-explorer.desktop \
	applications/winehq-iexplore.desktop \
	applications/winehq-mime-msi.desktop \
	applications/winehq-msiexec.desktop \
	applications/winehq-notepad.desktop \
	applications/winehq-oleview.desktop \
	applications/winehq-regedit.desktop \
	applications/winehq-taskmgr.desktop \
	applications/winehq-uninstaller.desktop \
	applications/winehq-wineboot.desktop \
	applications/winehq-winecfg.desktop \
	applications/winehq-winefile.desktop \
	applications/winehq-winemine.desktop \
	applications/winehq-winhelp.desktop \
	applications/winehq-wordpad.desktop

DIRECTORY_FILES  =  \
	desktop-directories/winehq-programs-accessories.directory \
	desktop-directories/winehq-programs.directory \
	desktop-directories/winehq-wine.directory

APPS_ICONS  =  \
	icons/hicolor/scalable/apps/wine-iexplore.svg \
	icons/hicolor/scalable/apps/wine-msiexec.svg \
	icons/hicolor/scalable/apps/wine-notepad.svg \
	icons/hicolor/scalable/apps/wine-regedit.svg \
	icons/hicolor/scalable/apps/wine-taskmgr.svg \
	icons/hicolor/scalable/apps/wine-wcmd.svg \
	icons/hicolor/scalable/apps/wine-winecfg.svg \
	icons/hicolor/scalable/apps/wine-winefile.svg \
	icons/hicolor/scalable/apps/wine-winemine.svg \
	icons/hicolor/scalable/apps/wine-winhelp.svg \
	icons/hicolor/scalable/apps/wine-wordpad.svg \
	icons/hicolor/scalable/apps/wine.svg

PLACES_ICONS  =  \
	icons/hicolor/scalable/places/cdrom-wine.svg \
	icons/hicolor/scalable/places/control-wine.svg \
	icons/hicolor/scalable/places/desktop-wine.svg \
	icons/hicolor/scalable/places/document-wine.svg \
	icons/hicolor/scalable/places/drive-wine.svg \
	icons/hicolor/scalable/places/mycomputer-wine.svg \
	icons/hicolor/scalable/places/mydocs-wine.svg \
	icons/hicolor/scalable/places/netdrive-wine.svg \
	icons/hicolor/scalable/places/printer-wine.svg

WINE_ICO = icons/oic_winlogo.ico

all: $(MENU_FILES) $(DESKTOP_FILES) $(DIRECTORY_FILES) $(APPS_ICONS) $(PLACES_ICONS) $(WINE_ICO)

install: all
	install -d "$(DESTDIR)$(EPREFIX)/etc/xdg/menus/applications-merged"
	install -m0644 $(MENU_FILES) "$(DESTDIR)$(EPREFIX)/etc/xdg/menus/applications-merged"
	install -d "$(DESTDIR)$(EPREFIX)/usr/share/applications"
	install -m0644 $(DESKTOP_FILES) "$(DESTDIR)$(EPREFIX)/usr/share/applications"
	install -d "$(DESTDIR)$(EPREFIX)/usr/share/desktop-directories"
	install -m0644 $(DIRECTORY_FILES) "$(DESTDIR)$(EPREFIX)/usr/share/desktop-directories"
	install -d "$(DESTDIR)$(EPREFIX)/usr/share/icons/hicolor/scalable/apps"
	install -m0644 $(APPS_ICONS) "$(DESTDIR)$(EPREFIX)/usr/share/icons/hicolor/scalable/apps"
	install -d "$(DESTDIR)$(EPREFIX)/usr/share/icons/hicolor/scalable/places"
	install -m0644 $(PLACES_ICONS) "$(DESTDIR)$(EPREFIX)/usr/share/icons/hicolor/scalable/places"
	install -d "$(DESTDIR)$(EPREFIX)/usr/share/wine/icons"
	install -m0644 $(WINE_ICO) "$(DESTDIR)$(EPREFIX)/usr/share/wine/icons"
