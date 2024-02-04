import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge

			PageHeader {
				id: pageHeader
				title: qsTr("Multi Keyboard Layouts")
			}

			Image {
				source: "../cover/harbour-multi-keyboard-layouts.png"
				anchors.horizontalCenter: parent.horizontalCenter
			}

            Label {
                wrapMode: Text.Wrap
                x: Theme.horizontalPageMargin
                width: parent.width - ( 2 * Theme.horizontalPageMargin )
                horizontalAlignment: Text.AlignHCenter
                text: qsTr("Multiple keyboard layouts for Sailfish OS 3")
                font.pixelSize: Theme.fontSizeSmall
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Label {
				text: qsTr("Author: Adel Noureddine © 2019, 2020, 2021, 2023, 2024")
                font.pixelSize: Theme.fontSizeSmall
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Label {
                text: qsTr("Licensed under BSD 3-Clause")
                font.pixelSize: Theme.fontSizeSmall
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }

            Text {
                text: "<a href=\"https://github.com/adelnoureddine/harbour-multi-keyboard-layouts\">" + qsTr("View source code on GitLab") + "</a>"
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                font.pixelSize: Theme.fontSizeSmall
                linkColor: Theme.highlightColor

                onLinkActivated: Qt.openUrlExternally("https://github.com/adelnoureddine/harbour-multi-keyboard-layouts")
            }
        }
    }
}
