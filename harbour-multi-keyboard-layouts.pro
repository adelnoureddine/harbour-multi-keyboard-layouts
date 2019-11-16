# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-multi-keyboard-layouts

layout.files = layouts/layouts_sobek_enazerty.conf layouts/layouts_sobek_ennazerty.conf layouts/layouts_sobek_enn.conf layouts/layouts_sobek_frn.conf layouts/layouts_sobek_frn_me.conf layouts/sobek_enazerty.qml layouts/sobek_ennazerty.qml layouts/sobek_enn.qml layouts/sobek_frn.qml layouts/sobek_frn_me.qml
layout.path = /usr/share/maliit/plugins/com/jolla/layouts

INSTALLS += layout

CONFIG += sailfishapp

SOURCES += src/harbour-multi-keyboard-layouts.cpp

DISTFILES += qml/harbour-multi-keyboard-layouts.qml \
    LICENSE \
    layouts/layouts_sobek_enazerty.conf \
    layouts/layouts_sobek_enn.conf \
    layouts/layouts_sobek_ennazerty.conf \
    layouts/layouts_sobek_frn.conf \
    layouts/layouts_sobek_frn_me.conf \
    layouts/sobek_enazerty.qml \
    layouts/sobek_enn.qml \
    layouts/sobek_ennazerty.qml \
    layouts/sobek_frn.qml \
    layouts/sobek_frn_me.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    rpm/harbour-multi-keyboard-layouts.changes.in \
    rpm/harbour-multi-keyboard-layouts.changes.run.in \
    rpm/harbour-multi-keyboard-layouts.spec \
    rpm/harbour-multi-keyboard-layouts.yaml \
    harbour-multi-keyboard-layouts.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172
