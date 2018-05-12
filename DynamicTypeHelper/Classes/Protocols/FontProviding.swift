//
//  FontProviding.swift
//  DynamicTypeHelper
//
//  Created by Hendrik Schultjan on 11.05.18.
//

import UIKit

@objc public protocol ScaledFontProviding: NSObjectProtocol {
    func font(forTextStyle textStyle: UIFontTextStyle) -> UIFont
}
