// Copyright (c) 2019, Adel Noureddine. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
//  * Redistributions of source code must retain the above copyright notice,
//    this list of conditions and the following disclaimer.
//  * Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
//  * Neither the name of  nor the names of its contributors may be used to
//    endorse or promote products derived from this software without specific
//    prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("About")
				onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Multi Keyboard Layouts")
            }

            TextField {
                x: Theme.horizontalPageMargin
                color: Theme.highlightColor
                width: parent.width - 2*x
                font.pixelSize: Theme.fontSizeSmall
                placeholderText: qsTr("Type here to try the keyboard layout")
            }

            Text {
                x: Theme.horizontalPageMargin
                color: Theme.highlightColor
                width: parent.width - 2*x
                wrapMode: Text.WordWrap
                font.pixelSize: Theme.fontSizeMedium
                text: qsTr("This application adds multiple additional keyboard layouts:<br />" +
                           "<p>Improved layouts (for English, English Azerty, French and Arabic/العربية):" +
                           "<ul><li>Number row</li>" +
                           "<li>Wider space button</li>" +
                           "<li>Emojis on 2nd/3rd pages</li>" +
                           "<li>Arrow keys (right/left) on 2nd/3rd pages</li>" +
                           "<li>Popup symbols on the layout</li>" +
                           "<li>Standard layouts similar to iOS/Android</li>" +
                           "</ul></p>" +
                           "<p>Layouts with a number row: English, English Azerty, French, Arabic (العربية), German (Deutsch), Dutch (thanks to aerique), Belgium Azerty (thanks to Rudi), Swedish</p>"
                           )
            }

            SectionHeader {
                text: qsTr("Installation and removal")
				font.pixelSize: Theme.fontSizeLarge
            }

            LinkedLabel {
                x: Theme.horizontalPageMargin
                width: parent.width - 2*x
				plainText: "Removing this application will also remove all the additional installed layouts."
            }

            Text {
                x: Theme.horizontalPageMargin
                color: Theme.highlightColor
                width: parent.width - 2*x
                wrapMode: Text.WordWrap
                font.pixelSize: Theme.fontSizeMedium
                text: qsTr("The new keyboard layouts should work automatically after installation (you can choose them from Settings).<br />However, if a layout doesn't show up, try one of the following options :" +
                           "<ul><li>Restart the device</li><li>Or use Sailfish Utilities to restart Home Screen using Sailfish Utilities</li><li>or, from the terminal in developer mode, login as root (devel-su), then type : killall maliit-server</li></ul>"
                           )
            }
        }
    }
}
