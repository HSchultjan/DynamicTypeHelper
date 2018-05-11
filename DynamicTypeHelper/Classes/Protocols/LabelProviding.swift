//
//  LabelProviding.swift
//  DynamicTypeHelper
//
//  Created by Hendrik Schultjan on 11.05.18.
//

import UIKit

protocol LabelProviding {
    var label: UILabel? { get }
}

extension UILabel: LabelProviding {
    var label: UILabel? {
        return self
    }
}

extension UIButton: LabelProviding {
    var label: UILabel? {
        return self.titleLabel
    }
}
