/*
 * Modification by Adel Noureddine (in 2019), to add an additional number row to the keyboard.
 *
 * Copyright (C) 2013 Jolla ltd and/or its subsidiary(-ies). All rights reserved.
 *
 * Contact: Pekka Vuorela <pekka.vuorela@jollamobile.com>
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
import ".."

KeyboardLayout {
    splitSupported: true

    KeyboardRow {
        CharacterKey { caption: "1"; captionShifted: "1"; symView: "😊"; symView2: "😮" }
        CharacterKey { caption: "2"; captionShifted: "2"; symView: "😉"; symView2: "😐" }
        CharacterKey { caption: "3"; captionShifted: "3"; symView: "😘"; symView2: "😛" }
        CharacterKey { caption: "4"; captionShifted: "4"; symView: "😎"; symView2: "😄" }
        CharacterKey { caption: "5"; captionShifted: "5"; symView: "😃"; symView2: "😕" }
        CharacterKey { caption: "6"; captionShifted: "6"; symView: "❤"; symView2: "😞" }
        CharacterKey { caption: "7"; captionShifted: "7"; symView: "😍"; symView2: "😢" }
        CharacterKey { caption: "8"; captionShifted: "8"; symView: "😀"; symView2: "😭" }
        CharacterKey { caption: "9"; captionShifted: "9"; symView: "😁"; symView2: "😠" }
        CharacterKey { caption: "0"; captionShifted: "0"; symView: "😂"; symView2: "😴" }
        CharacterKey { caption: "€"; captionShifted: "€"; symView: "👍"; symView2: "👋"; accents: "$£"; accentsShifted: "$£" }
    }

    KeyboardRow {
        CharacterKey { caption: "q"; captionShifted: "Q"; symView: "1"; symView2: "€" }
        CharacterKey { caption: "w"; captionShifted: "W"; symView: "2"; symView2: "£" }
        CharacterKey { caption: "e"; captionShifted: "E"; symView: "3"; symView2: "$"; accents: "èeéëê€"; accentsShifted: "ÈEÉÊË€" }
        CharacterKey { caption: "r"; captionShifted: "R"; symView: "4"; symView2: "¥" }
        CharacterKey { caption: "t"; captionShifted: "T"; symView: "5"; symView2: "₹" }
        CharacterKey { caption: "z"; captionShifted: "Z"; symView: "6"; symView2: "¤" }
        CharacterKey { caption: "u"; captionShifted: "U"; symView: "7"; symView2: "<"; accents: "üùuúû"; accentsShifted: "ÜÙUÚÛ" }
        CharacterKey { caption: "i"; captionShifted: "I"; symView: "8"; symView2: ">"; accents: "îïiìí"; accentsShifted: "ÎÏIÌÍ" }
        CharacterKey { caption: "o"; captionShifted: "O"; symView: "9"; symView2: "["; accents: "öòóôõoø"; accentsShifted: "ÖÒÓÔÕOØ" }
        CharacterKey { caption: "p"; captionShifted: "P"; symView: "0"; symView2: "]" }
        FittedCharacterKey { caption: "å"; captionShifted: "Å"; symView: "%"; symView2: "‰" }
    }

    KeyboardRow {
        CharacterKey { caption: "a"; captionShifted: "A"; symView: "*"; symView2: "`"; accents: "aäàáãâåæ"; accentsShifted: "AÄÀÁÃÂÅÆ"}
        CharacterKey { caption: "s"; captionShifted: "S"; symView: "#"; symView2: "^"; accents: "sßş$"; accentsShifted: "SŞ$" }
        CharacterKey { caption: "d"; captionShifted: "D"; symView: "+"; symView2: "|"; accents: "dð"; accentsShifted: "DÐ" }
        CharacterKey { caption: "f"; captionShifted: "F"; symView: "-"; symView2: "_" }
        CharacterKey { caption: "g"; captionShifted: "G"; symView: "="; symView2: "§"; accents: "gğ"; accentsShifted: "GĞ" }
        CharacterKey { caption: "h"; captionShifted: "H"; symView: "("; symView2: "{" }
        CharacterKey { caption: "j"; captionShifted: "J"; symView: ")"; symView2: "}" }
        CharacterKey { caption: "k"; captionShifted: "K"; symView: "\""; symView2: "°" }
        CharacterKey { caption: "l"; captionShifted: "L"; symView: "~"; symView2: "·" }
        CharacterKey { caption: "ö"; captionShifted: "Ö"; symView: "!"; symView2: "¡" }
        CharacterKey { caption: "ä"; captionShifted: "Ä"; symView: "?"; symView2: "¿" }
    }

    KeyboardRow {
        splitIndex: 5

        ShiftKey {}

        CharacterKey { caption: "y"; captionShifted: "Y"; symView: "@"; symView2: "«"; accents: "ýy¥"; accentsShifted: "ÝY¥" }
        CharacterKey { caption: "x"; captionShifted: "X"; symView: "&"; symView2: "»" }
        CharacterKey { caption: "c"; captionShifted: "C"; symView: "/"; symView2: "÷"; accents: "cç"; accentsShifted: "CÇ" }
        CharacterKey { caption: "v"; captionShifted: "V"; symView: "\\"; symView2: "“" }
        CharacterKey { caption: "b"; captionShifted: "B"; symView: "'"; symView2: "”" }
        CharacterKey { caption: "n"; captionShifted: "N"; symView: ";"; symView2: "„"; accents: "nñ"; accentsShifted: "NÑ" }
        CharacterKey { caption: "m"; captionShifted: "M"; symView: ":"; symView2: "×" }

        BackspaceKey {}
    }

    SpacebarRow {}
}
