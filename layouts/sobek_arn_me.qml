/*
 * Modification by Adel Noureddine (in 2019-2021), to customize the layout.
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
        CharacterKey { caption: "\u262E"; captionShifted: "\u262E"; symView: "\uFDF2"; symView2: "\uFDFA"; accents: "\u262A\u271D\u262B\u2629\u2721\u2626\u262F"; accentsShifted: "\u262A\u271D\u262B\u2629\u2721\u2626\u262F" }
    }

    KeyboardRow {
        CharacterKey { caption: "ض"; captionShifted: "\u064E"; symView: "١"; symView2: "€" }
        CharacterKey { caption: "ص"; captionShifted: "\u064B"; symView: "٢"; symView2: "£" }
        CharacterKey { caption: "ث"; captionShifted: "\u064F"; symView: "٣"; symView2: "$" }
        CharacterKey { caption: "ق"; captionShifted: "\u064C"; symView: "٤"; symView2: "¥"; accents: "ڨڧ"; accentsShifted: "ڨڧ" }
        CharacterKey { caption: "ف"; captionShifted: "لإ"; symView: "٥"; symView2: "₹"; accents: "ڥڤڢ"; accentsShifted: "ڥڤڢ" }
        CharacterKey { caption: "غ"; captionShifted: "إ"; symView: "٦"; symView2: "%" }
        CharacterKey { caption: "ع"; captionShifted: "`"; symView: "٧"; symView2: "<" }
        CharacterKey { caption: "ه"; captionShifted: "÷"; symView: "٨"; symView2: ">" }
        CharacterKey { caption: "خ"; captionShifted: "×"; symView: "٩"; symView2: "[" }
        CharacterKey { caption: "ح"; captionShifted: "؛"; symView: "٠"; symView2: "]" }
        CharacterKey { caption: "ج"; captionShifted: "<"; symView: "٪"; symView2: "%"; accents: "چ"; accentsShifted: "چ" }
        CharacterKey { caption: "د"; captionShifted: ">"; symView: ":"; symView2: "‹|"; accents: "ذ"; accentsShifted: "ذ" }
    }

    KeyboardRow {
        ShiftKey {
            implicitWidth: symbolKeyWidthNarrow * 0.5
        }
        CharacterKey { caption: "ش"; captionShifted: "\u0650"; symView: "٬"; symView2: "&"; accents: "ڜ"; accentsShifted: "ڜ" }
        CharacterKey { caption: "س"; captionShifted: "\u064D"; symView: "٫"; symView2: "@" }
        CharacterKey { caption: "ي"; captionShifted: "]"; symView: "+"; symView2: "#"; accents: "ئ"; accentsShifted: "ئ" }
        CharacterKey { caption: "ب"; captionShifted: "["; symView: "−"; symView2: "_"; accents: "پ"; accentsShifted: "پ" }
        CharacterKey { caption: "ل"; captionShifted: "لأ"; symView: "="; symView2: "^" }
        CharacterKey { caption: "ا"; captionShifted: "أ"; symView: "~"; symView2: "|"; accents: "آءإأٱ\u0670"; accentsShifted: "آءإأٱ\u0670" }
        CharacterKey { caption: "ت"; captionShifted: "ـ"; symView: "-"; symView2: "\\" }
        CharacterKey { caption: "ن"; captionShifted: "،"; symView: "\u200F)"; symView2: "\u200F}" }
        CharacterKey { caption: "م"; captionShifted: "/"; symView: "\u200F("; symView2: "\u200F{" }
        CharacterKey { caption: "ك"; captionShifted: ":"; symView: "!"; symView2: "°" }
        CharacterKey { caption: "ذ"; captionShifted: "\""; symView: ":"; symView2: "‹|" }
    }

    KeyboardRow {
        splitIndex: 5

        CharacterKey { caption: "ئ"; captionShifted: "\u0651"; symView: "÷"; symView2: "©" }
        CharacterKey { caption: "ء"; captionShifted: "\u0652"; symView: "×"; symView2: "®"; accents: "\u0655\u0654ؤ"; accentsShifted: "\u0655\u0654ؤ" }
        CharacterKey { caption: "ؤ"; captionShifted: "}"; symView: "*"; symView2: "™" }
        CharacterKey { caption: "ر"; captionShifted: "{"; symView: "/"; symView2: "¶" }
        CharacterKey { caption: "ى"; captionShifted: "لآ"; symView: "'"; symView2: "ـ"; accents: "ئ"; accentsShifted: "ئ" }
        CharacterKey { caption: "ة"; captionShifted: "آ"; symView: "\""; symView2: "›|‹" }
        CharacterKey { caption: "و"; captionShifted: "'"; symView: "\u200F»"; symView2: "\u200F>"; accents: "ؤ"; accentsShifted: "ؤ" }
        CharacterKey { caption: "ز"; captionShifted: ","; symView: "\u200F«"; symView2: "\u200F<"; accents: "ژ"; accentsShifted: "ژ" }
        CharacterKey { caption: "ظ"; captionShifted: "."; symView: "؛"; symView2: "|›" }
        CharacterKey { caption: "ط"; captionShifted: "؟"; symView: "؟"; symView2: "‰" }

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
