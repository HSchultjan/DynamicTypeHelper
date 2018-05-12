//
//  DynamicTypeHelper.swift
//  DynamicTypeHelper
//
//  Created by Hendrik Schultjan on 11.05.18.
//

import Foundation

public class DynamicTypeHelper: NSObject {

    @IBInspectable var fontName: String?
    @IBOutlet var fontProvider: ScaledFontProviding?
    @IBOutlet var layoutView: UIView?

    private var observer: NSObjectProtocol?

    override init() {
        super.init()
        self.observer = NotificationCenter.default.addObserver(forName: NSNotification.Name.UIContentSizeCategoryDidChange, object: nil, queue: nil) { _ in
            // TODO: Handle size changes
            fatalError("not supported yet")
        }
    }

    deinit {
        guard let observer = observer else { return }
        NotificationCenter.default.removeObserver(observer)
        self.observer = nil
    }

    @IBOutlet var largeTitle: [UIView]! {
        didSet {
            largeTitle.forEach { view in
                if #available(iOS 11.0, *) {
                    self.set(fontFor: .largeTitle, on: view)
                } else {
                    fatalError("not supported yet")
                }
            }
        }
    }

    @IBOutlet var title1: [UIView]! {
        didSet {
            title1.forEach { view in
                self.set(fontFor: .title1, on: view)
            }
        }
    }

    @IBOutlet var title2: [UIView]! {
        didSet {
            title2.forEach { view in
                self.set(fontFor: .title2, on: view)
            }
        }
    }

    @IBOutlet var title3: [UIView]! {
        didSet {
            title3.forEach { view in
                self.set(fontFor: .title3, on: view)
            }
        }
    }

    @IBOutlet var headline: [UIView]! {
        didSet {
            headline.forEach { view in
                self.set(fontFor: .headline, on: view)
            }
        }
    }

    @IBOutlet var subheadline: [UIView]! {
        didSet {
            subheadline.forEach { view in
                self.set(fontFor: .subheadline, on: view)
            }
        }
    }

    @IBOutlet var body: [UIView]! {
        didSet {
            body.forEach { view in
                self.set(fontFor: .body, on: view)
            }
        }
    }

    @IBOutlet var callout: [UIView]! {
        didSet {
            callout.forEach { view in
                self.set(fontFor: .callout, on: view)
            }
        }
    }

    @IBOutlet var footnote: [UIView]! {
        didSet {
            footnote.forEach { view in
                self.set(fontFor: .footnote, on: view)
            }
        }
    }

    @IBOutlet var caption1: [UIView]! {
        didSet {
            caption1.forEach { view in
                self.set(fontFor: .caption1, on: view)
            }
        }
    }

    @IBOutlet var caption2: [UIView]! {
        didSet {
            caption2.forEach { view in
                self.set(fontFor: .caption2, on: view)
            }
        }
    }

    // MARK: - Helpers

    private func set(fontFor textStyle: UIFontTextStyle, on view: UIView) {
        guard let labelProvider = view as? LabelProviding else {
            fatalError("view does not support styling")
        }
        self.set(fontFor: textStyle, on: labelProvider)
    }

    private func set(fontFor textStyle: UIFontTextStyle, on labelProvider: LabelProviding) {
            let font = self.fontProvider?.font(forTextStyle: textStyle) ?? UIFont.preferredFont(forTextStyle: textStyle)
            labelProvider.label?.font = font
        if #available(iOS 10.0, *) {
            labelProvider.label?.adjustsFontForContentSizeCategory = true
        }
    }

}
