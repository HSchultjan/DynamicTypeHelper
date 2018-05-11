//
//  NameFontProvider.swift
//  DynamicTypeHelper
//
//  Created by Hendrik Schultjan on 11.05.18.
//

import Foundation

class NameFontProvider: NSObject, ScaledFontProviding {

    @IBInspectable var fontName: String!

    func font(forTextStyle textStyle: UIFontTextStyle) -> UIFont {
        guard let name = fontName else {
            fatalError("fontName is not set")
        }
        let font = UIFont.preferredFont(forTextStyle: textStyle)
        let customFont = UIFont(name: name, size: font.lineHeight)
        return customFont!
    }

}
