/*
 * Modification by Adel Noureddine (in 2019), to customize the layout.
 *
 * Copyright (C) 2015 Ali Najafi
 *
 * Contact: Ali Najafi <ali.najafi.88@gmail.com>
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
import ".."

KeyboardLayout {
    splitSupported: true
    type: "CTL"

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
        CharacterKey { caption: "€"; captionShifted: "€"; symView: "👍"; symView2: "👋"; accents: "$£\uFDFC\u20BA"; accentsShifted: "$£\uFDFC\u20BA" }
    }

    KeyboardRow {
        CharacterKey { caption: "ض"; captionShifted: "ض"; symView: "١"; symView2: "€" }
        CharacterKey { caption: "ص"; captionShifted: "ص"; symView: "٢"; symView2: "£" }
        CharacterKey { caption: "ث"; captionShifted: "ث"; symView: "٣"; symView2: "$" }
        CharacterKey { caption: "ق"; captionShifted: "ق"; symView: "٤"; symView2: "¥"; accents: "ڨڧ"; accentsShifted: "ڨڧ" }
        CharacterKey { caption: "ف"; captionShifted: "ف"; symView: "٥"; symView2: "₹"; accents: "ڥڤڢ"; accentsShifted: "ڥڤڢ" }
        CharacterKey { caption: "غ"; captionShifted: "غ"; symView: "٦"; symView2: "%" }
        CharacterKey { caption: "ع"; captionShifted: "ع"; symView: "٧"; symView2: "<" }
        CharacterKey { caption: "ه"; captionShifted: "ه"; symView: "٨"; symView2: ">" }
        CharacterKey { caption: "خ"; captionShifted: "خ"; symView: "٩"; symView2: "[" }
        CharacterKey { caption: "ح"; captionShifted: "ح"; symView: "٠"; symView2: "]" }
        CharacterKey { caption: "ج"; captionShifted: "ج"; symView: "٪"; symView2: "%"; accents: "چ"; accentsShifted: "چ" }
    }

    KeyboardRow {
        CharacterKey { caption: "ش"; captionShifted: "ش"; symView: "٬"; symView2: "&"; accents: "ڜ"; accentsShifted: "ڜ" }
        CharacterKey { caption: "س"; captionShifted: "س"; symView: "٫"; symView2: "@" }
        CharacterKey { caption: "ي"; captionShifted: "ي"; symView: "+"; symView2: "#"; accents: "ئ"; accentsShifted: "ئ" }
        CharacterKey { caption: "ب"; captionShifted: "ب"; symView: "−"; symView2: "_"; accents: "پ"; accentsShifted: "پ" }
        CharacterKey { caption: "ل"; captionShifted: "ل"; symView: "="; symView2: "^" }
        CharacterKey { caption: "ا"; captionShifted: "ا"; symView: "~"; symView2: "|"; accents: "آءإأٱ\u0670"; accentsShifted: "آءإأٱ\u0670" }
        CharacterKey { caption: "ت"; captionShifted: "ت"; symView: "-"; symView2: "\\" }
        CharacterKey {
            caption: "ن"; captionShifted: "ن"; symView: "\u200F)"; symView2: "\u200F}"
            text: attributes.inSymView ? (attributes.inSymView2 ? "}" : ")") : caption
        }
        CharacterKey {
            caption: "م"; captionShifted: "م"; symView: "\u200F("; symView2: "\u200F{"
            text: attributes.inSymView ? (attributes.inSymView2 ? "{" : "(") : caption
        }
        CharacterKey {
            caption: "ك"; captionShifted: "ك"; symView: "!"; symView2: "°"; accents: "گک"; accentsShifted: "گک"
        }
        CharacterKey {
            caption: "ط"; captionShifted: "ط"; symView: "؟"; symView2: "‰"
        }
    }

    KeyboardRow {
        splitIndex: 5

        CharacterKey {
            caption: "ء"; accents: "\u0655\u0654"; accentsShifted: "\u0655\u0654"
        }

        CharacterKey { caption: "ؤ"; captionShifted: "ؤ"; symView: "*"; symView2: "×" }
        CharacterKey { caption: "ر"; captionShifted: "ر"; symView: "/"; symView2: "÷" }
        CharacterKey { caption: "ى"; captionShifted: "ى"; symView: "'"; symView2: "ـ"; accents: "ئآ"; accentsShifted: "ئآ" }
        CharacterKey {
            caption: "ة"; captionShifted: "ة"; symView: "\""; symView2: "›|‹"
            text: attributes.inSymView ? (attributes.inSymView2 ? "\u200D" : symView) : caption
        }
        CharacterKey {
            caption: "و"; captionShifted: "و"; symView: "\u200F»"; symView2: "\u200F>"
            text: attributes.inSymView ? (attributes.inSymView2 ? ">" : "»") : caption
        }
        CharacterKey {
            caption: "ز"; captionShifted: "ز"; symView: "\u200F«"; symView2: "\u200F<"; accents: "ژ"; accentsShifted: "ژ"
            text: attributes.inSymView ? (attributes.inSymView2 ? "<" : "«") : caption
        }
        CharacterKey {
            caption: "ظ"; captionShifted: "ظ"; symView: "؛"; symView2: "|›"
            text: attributes.inSymView ? (attributes.inSymView2 ? "\u200E" : symView) : caption
        }
        CharacterKey {
            caption: "د"; captionShifted: "د"; symView: ":"; symView2: "‹|"; accents: "ذ"; accentsShifted: "ذ"
            text: attributes.inSymView ? (attributes.inSymView2 ? "\u200F" : symView) : caption
        }

        BackspaceKey {}
    }

    KeyboardRow {
        splitIndex: 4

        SymbolKey {
            implicitWidth: symbolKeyWidthNarrow * 0.8
        }
        CharacterKey {
            caption: "،"
            captionShifted: "،"
            accents: "\u0652\u0651\u0650\u064F\u064E\u064D\u064C\u064B"
            accentsShifted: "\u0652\u0651\u0650\u064F\u064E\u064D\u064C\u064B"
            implicitWidth: punctuationKeyWidth
            fixedWidth: !splitActive
            separator: SeparatorState.HiddenSeparator
        }
        SpacebarKey {}
        SpacebarKey {
            active: splitActive
            languageLabel: ""
        }
        CharacterKey {
            caption: "."
            captionShifted: "."
            implicitWidth: punctuationKeyWidthNarrow
            fixedWidth: !splitActive
            separator: SeparatorState.HiddenSeparator
            accents: ".…؛:؟!"; accentsShifted: ".…؛:؟!"
        }
        EnterKey {
            implicitWidth: functionKeyWidth * 0.8
        }
    }
}
