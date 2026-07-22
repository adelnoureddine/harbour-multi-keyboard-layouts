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
import com.jolla.keyboard 1.0
import Sailfish.Silica 1.0
import com.meego.maliitquick 1.0
import ".."


KeyboardLayout {
    splitSupported: true

    function showSymbolsOnKey(symbolLetter) {
        var symbolText = "";
        if (!keyboard.inSymView) {
            symbolText = symbolLetter;
        }
        return symbolText;
    }

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
        CharacterKey {
            caption: "a"; captionShifted: "A"; symView: "1"; symView2: "€"
            accents: "aâàæäáãå%"; accentsShifted: "AÂÀÆÄÁÃÅ%"
            nativeAccents: "àâ"; nativeAccentsShifted: "ÀÂ";
            Text {
                text: showSymbolsOnKey("%");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "z"; captionShifted: "Z"; symView: "2"; symView2: "£"; accents: "\\"; accentsShifted: "\\";
            Text {
                text: showSymbolsOnKey("\\");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey {
            caption: "e"; captionShifted: "E"; symView: "3"; symView2: "$"
            accents: "èeéêë~"; accentsShifted: "ÈEÉÊË~"
            nativeAccents: "èéêë"; nativeAccentsShifted: "ÈÉÊË";
            Text {
                text: showSymbolsOnKey("~");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "r"; captionShifted: "R"; symView: "4"; symView2: "¥"; accents: "|"; accentsShifted: "|";
            Text {
                text: showSymbolsOnKey("|");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "t"; captionShifted: "T"; symView: "5"; symView2: "₹"; accents: "tþ["; accentsShifted: "TÞ[";
            Text {
                text: showSymbolsOnKey("[");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "y"; captionShifted: "Y"; symView: "6"; symView2: "%"; accents: "ýy¥]"; accentsShifted: "ÝY¥]";
            Text {
                text: showSymbolsOnKey("]");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey {
            caption: "u"; captionShifted: "U"; symView: "7"; symView2: "<"
            accents: "üûuùú<"; accentsShifted: "ÜÛUÙÚ<"
            nativeAccents: "ûùü"; nativeAccentsShifted: "ÛÙÜ";
            Text {
                text: showSymbolsOnKey("<");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey {
            caption: "i"; captionShifted: "I"; symView: "8"; symView2: ">"
            accents: "íìîiï>"; accentsShifted: "ÍÌÎIÏ>"
            nativeAccents: "îï"; nativeAccentsShifted: "ÎÏ";
            Text {
                text: showSymbolsOnKey(">");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey {
            caption: "o"; captionShifted: "O"; symView: "9"; symView2: "["
            accents: "øöòóôoœ{"; accentsShifted: "ØÖÒÓÔOŒ{"
            nativeAccents: "ô"; nativeAccentsShifted: "Ô";
            Text {
                text: showSymbolsOnKey("{");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "p"; captionShifted: "P"; symView: "0"; symView2: "]"; accents: "}"; accentsShifted: "}";
            Text {
                text: showSymbolsOnKey("}");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    KeyboardRow {
        CharacterKey { caption: "q"; captionShifted: "Q"; symView: "*"; symView2: "`"; accents: "@"; accentsShifted: "@";
            Text {
                text: showSymbolsOnKey("@");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "s"; captionShifted: "S"; symView: "#"; symView2: "^"; accents: "#"; accentsShifted: "#";
            Text {
                text: showSymbolsOnKey("#");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "d"; captionShifted: "D"; symView: "+"; symView2: "|"; accents: "dð&"; accentsShifted: "DÐ&";
            Text {
                text: showSymbolsOnKey("&");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "f"; captionShifted: "F"; symView: "-"; symView2: "_"; accents: "*"; accentsShifted: "*";
            Text {
                text: showSymbolsOnKey("*");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "g"; captionShifted: "G"; symView: "="; symView2: "§"; accents: "-"; accentsShifted: "-";
            Text {
                text: showSymbolsOnKey("-");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "h"; captionShifted: "H"; symView: "("; symView2: "{"; accents: "+"; accentsShifted: "+";
            Text {
                text: showSymbolsOnKey("+");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "j"; captionShifted: "J"; symView: ")"; symView2: "}"; accents: "="; accentsShifted: "=";
            Text {
                text: showSymbolsOnKey("=");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "k"; captionShifted: "K"; symView: "~"; symView2: "°"; accents: "("; accentsShifted: "(";
            Text {
                text: showSymbolsOnKey("(");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "l"; captionShifted: "L"; symView: "!"; symView2: "¡"; accents: ")"; accentsShifted: ")";
            Text {
                text: showSymbolsOnKey(")");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "m"; captionShifted: "M"; symView: "?"; symView2: "¿"; accents: "^"; accentsShifted: "^";
            Text {
                text: showSymbolsOnKey("^");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    KeyboardRow {
        splitIndex: 5

        ShiftKey {}

        CharacterKey { caption: "w"; captionShifted: "W"; symView: "@"; symView2: "«"; accents: "_"; accentsShifted: "_";
            Text {
                text: showSymbolsOnKey("_");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "x"; captionShifted: "X"; symView: "&"; symView2: "»"; accents: "€"; accentsShifted: "€";
            Text {
                text: showSymbolsOnKey("€");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "c"; captionShifted: "C"; symView: "/"; symView2: "÷"; accents: "cç\""; accentsShifted: "CÇ\"";
            Text {
                text: showSymbolsOnKey("\"");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "v"; captionShifted: "V"; symView: "\\"; symView2: "“"; accents: ":"; accentsShifted: ":";
            Text {
                text: showSymbolsOnKey(":");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "b"; captionShifted: "B"; symView: "\""; symView2: "”"; accents: ";"; accentsShifted: ";";
            Text {
                text: showSymbolsOnKey(";");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey { caption: "n"; captionShifted: "N"; symView: ";"; symView2: "„"; accents: "nñ/"; accentsShifted: "NÑ/";
            Text {
                text: showSymbolsOnKey("/");
                color: Theme.highlightColor;
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
            }
        }
        CharacterKey {
            caption: "'"
            captionShifted: "'"
            implicitWidth: punctuationKeyWidth
            fixedWidth: !splitActive
            symView: ":"; symView2: "‰";
        }

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
            accents: "!?"; accentsShifted: "!?"
        }
        EnterKey {
            implicitWidth: functionKeyWidth * 0.8
        }
    }
}
