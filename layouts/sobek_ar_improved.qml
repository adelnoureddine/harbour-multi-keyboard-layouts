/*
 * Copyright (C) 2020 Adel Noureddine
 *
 * Contact: Adel Noureddine
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this list
 * of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list
 * of conditions and the following disclaimer in the documentation and/or other materials
 * provided with the distribution.
 * Neither the name of Jolla Ltd nor the names of its contributors may be
 * used to endorse or promote products derived from this software without specific
 * prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
 * THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

import QtQuick 2.0
import com.jolla.keyboard 1.0
import Sailfish.Silica 1.0
import com.meego.maliitquick 1.0
import ".."

KeyboardLayout {
	splitSupported: true
	type: "CTL"

    KeyboardRow {
        //CharacterKey { caption: "1"; captionShifted: "1"; symView: "😊"; symView2: "😮" }

        FunctionKey {
            icon.source: keyboard.inSymView ? "image://theme/icon-splus-left" : ""
            implicitWidth: punctuationKeyWidth
            background.visible: false

            showPopper: !keyboard.inSymView
            separator: SeparatorState.HiddenSeparator

            onClicked: {
                if (keyboard.inSymView) {
                    MInputMethodQuick.sendKey(Qt.Key_Left, 0, "", Maliit.KeyClick)
                }
            }

            text: keyboard.inSymView ? "" : "1"

            Text {
                text: keyboard.inSymView ? "" : "1"
                color: Theme.primaryColor;
                font.pixelSize: Theme.fontSizeLarge
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        CharacterKey { caption: "2"; captionShifted: "2"; symView: "😊"; symView2: "😐" }
        CharacterKey { caption: "3"; captionShifted: "3"; symView: "😉"; symView2: "😛" }
        CharacterKey { caption: "4"; captionShifted: "4"; symView: "😘"; symView2: "❤" }
        CharacterKey { caption: "5"; captionShifted: "5"; symView: "😃"; symView2: "😕" }
        CharacterKey { caption: "6"; captionShifted: "6"; symView: "👍"; symView2: "😞" }
        CharacterKey { caption: "7"; captionShifted: "7"; symView: "😍"; symView2: "😢" }
        CharacterKey { caption: "8"; captionShifted: "8"; symView: "😂"; symView2: "😭" }
        CharacterKey { caption: "9"; captionShifted: "9"; symView: "😁"; symView2: "😠" }
        CharacterKey { caption: "€"; symView: "😎"; symView2: "👋"; accents: "$£\uFDFC\u20BA"; accentsShifted: "$£\uFDFC\u20BA" }

        FunctionKey {
            icon.source: keyboard.inSymView ? "image://theme/icon-splus-right" : ""
            implicitWidth: punctuationKeyWidth
            background.visible: false

            showPopper: !keyboard.inSymView
            separator: SeparatorState.HiddenSeparator

            onClicked: {
                if (keyboard.inSymView) {
                    MInputMethodQuick.sendKey(Qt.Key_Right, 0, "", Maliit.KeyClick)
                }
            }

            text: keyboard.inSymView ? "" : "0"

            Text {
                text: keyboard.inSymView ? "" : "0"
                color: Theme.primaryColor;
                font.pixelSize: Theme.fontSizeLarge
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        //CharacterKey { caption: "0"; captionShifted: "0"; symView: "😂"; symView2: "😴" }
    }

	KeyboardRow {
		CharacterKey { caption: "ض"; symView: "١"; symView2: "€" }
		CharacterKey { caption: "ص"; symView: "٢"; symView2: "£" }
		CharacterKey { caption: "ث"; symView: "٣"; symView2: "$" }
		CharacterKey { caption: "ق"; symView: "٤"; symView2: "¥"; accents: "ڨڧ" }
		CharacterKey { caption: "ف"; symView: "٥"; symView2: "₹"; accents: "ڥڤڢ" }
		CharacterKey { caption: "غ"; symView: "٦"; symView2: "%" }
		CharacterKey { caption: "ع"; symView: "٧"; symView2: "<" }
		CharacterKey { caption: "ه"; symView: "٨"; symView2: ">" }
		CharacterKey { caption: "خ"; symView: "٩"; symView2: "[" }
		CharacterKey { caption: "ح"; symView: "٠"; symView2: "]" }
		CharacterKey { caption: "ج"; symView: "\u0651"; symView2: "\u0652"; accents: "چ" }
	}

	KeyboardRow {
		splitIndex: 5

		CharacterKey { caption: "ش";  symView: "*"; symView2: "`"; accents: "ڜ"}
		CharacterKey { caption: "س"; symView: "#"; symView2: "^" }
		CharacterKey { caption: "ي"; symView: "+"; symView2: "|"; accents: "ئى" }
		CharacterKey { caption: "ب"; symView: "-"; symView2: "_"; accents: "پ" }
		CharacterKey { caption: "ل"; symView: "="; symView2: "§" }
		CharacterKey { caption: "ا"; symView: "("; symView2: "{"; accents: "آءإأٱ\u0670" }
		CharacterKey { caption: "ت"; symView: ")"; symView2: "}" }
		CharacterKey { caption: "ن"; symView: "!"; symView2: "¡" }
		CharacterKey { caption: "م"; symView: "\u064C"; symView2: "\u064F" }
		CharacterKey { caption: "ك"; symView: "\u064B"; symView2: "\u064E"; accents: "گک" }
		CharacterKey { caption: "ة"; symView: "\u064D"; symView2: "\u0650" }
	}

	KeyboardRow {
		splitIndex: 5

		CharacterKey {
			showPopper: !attributes.inSymView
			separator: showPopper ? SeparatorState.AutomaticSeparator : SeparatorState.HiddenSeparator
			showHighlight: showPopper

			caption: "ء"; symView: "1/2"; symView2: "2/2"; accents: "إأئؤ"
			text: !attributes.inSymView ? caption : ""

			Rectangle {
				color: Theme.primaryColor
				opacity: parent.pressed ? 0.2 : 0.1
				visible: attributes.inSymView
				radius: geometry.keyRadius
				anchors {
					fill: parent
					margins: Theme.paddingMedium
				}
			}

			onClicked: {
				if (keyboard.inSymView) {
					keyboard.inSymView2 = !keyboard.inSymView2
				}
			}
		}

		CharacterKey { caption: "ظ"; symView: "&"; symView2: "٪" }
		CharacterKey { caption: "ط"; symView: "/"; symView2: "\"" }
		CharacterKey { caption: "ذ"; symView: "\\"; symView2: "“" }
		CharacterKey { caption: "د"; symView: "'"; symView2: "”" }
		CharacterKey { caption: "ز"; symView: ";"; symView2: "„"; accents: "ژ" }
		CharacterKey { caption: "ر"; symView: ":"; symView2: "~" }
		CharacterKey { caption: "و"; symView: "،"; symView2: "؛"; accents: "ؤ" }
		CharacterKey { caption: "ى"; symView: "؟"; symView2: "?"; accents: "ئ" }

		BackspaceKey {}
	}

	KeyboardRow {
		splitIndex: 4

		SymbolKey {
            implicitWidth: symbolKeyWidthNarrow * 0.8
		}
		ContextAwareCommaKey {
            implicitWidth: punctuationKeyWidth
		}
		SpacebarKey {}
		SpacebarKey {
			active: splitActive
			languageLabel: ""
		}
		CharacterKey {
			caption: "."
			captionShifted: "."
            implicitWidth: punctuationKeyWidth
			fixedWidth: !splitActive
			separator: SeparatorState.HiddenSeparator
			accents: "!?؟"
		}
		EnterKey {
            implicitWidth: functionKeyWidth * 0.8
		}
	}
}
