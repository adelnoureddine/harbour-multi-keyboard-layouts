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

layout.files = layouts/layouts_sobek_enazerty.conf layouts/layouts_sobek_ennazerty.conf layouts/layouts_sobek_enn.conf layouts/layouts_sobek_enn_me.conf layouts/layouts_sobek_ar.conf layouts/layouts_sobek_frn.conf layouts/layouts_sobek_frn_me.conf layouts/layouts_sobek_ennazerty_me.conf layouts/layouts_sobek_arn_me.conf layouts/layouts_sobek_den.conf layouts/layouts_sobek_ar_improved.conf layouts/layouts_sobek_nln.conf layouts/layouts_sobek_nl.conf layouts/sobek_den.qml layouts/sobek_arn_me.qml layouts/sobek_enazerty.qml layouts/sobek_ennazerty.qml layouts/sobek_enn.qml layouts/sobek_enn_me.qml layouts/sobek_frn.qml layouts/sobek_frn_me.qml layouts/sobek_ennazerty_me.qml layouts/sobek_ar.qml layouts/sobek_ar_improved.qml layouts/sobek_nln.qml layouts/sobek_nl.qml
layout.path = /usr/share/maliit/plugins/com/jolla/layouts

INSTALLS += layout

CONFIG += sailfishapp

SOURCES += src/harbour-multi-keyboard-layouts.cpp

DISTFILES += qml/harbour-multi-keyboard-layouts.qml \
    LICENSE \
    layouts/layouts_sobek_ar.conf \
    layouts/layouts_sobek_ar_improved.conf \
    layouts/layouts_sobek_arn_me.conf \
    layouts/layouts_sobek_den.conf \
    layouts/layouts_sobek_enazerty.conf \
    layouts/layouts_sobek_enn.conf \
    layouts/layouts_sobek_enn_me.conf \
    layouts/layouts_sobek_ennazerty.conf \
    layouts/layouts_sobek_ennazerty_me.conf \
    layouts/layouts_sobek_frn.conf \
    layouts/layouts_sobek_frn_me.conf \
    layouts/layouts_sobek_nln.conf \
    layouts/layouts_sobek_nl.conf \
    layouts/sobek_ar.qml \
    layouts/sobek_ar_improved.qml \
    layouts/sobek_arn_me.qml \
    layouts/sobek_den.qml \
    layouts/sobek_enazerty.qml \
    layouts/sobek_enn.qml \
    layouts/sobek_enn_me.qml \
    layouts/sobek_ennazerty.qml \
    layouts/sobek_ennazerty_me.qml \
    layouts/sobek_frn.qml \
    layouts/sobek_frn_me.qml \
    layouts/sobek_nln.qml \
    layouts/sobek_nl.qml \
    qml/cover/CoverPage.qml \
    qml/pages/AboutPage.qml \
    qml/pages/MainPage.qml \
    rpm/harbour-multi-keyboard-layouts.changes.in \
    rpm/harbour-multi-keyboard-layouts.changes.run.in \
    rpm/harbour-multi-keyboard-layouts.spec \
    rpm/harbour-multi-keyboard-layouts.yaml \
    harbour-multi-keyboard-layouts.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172
