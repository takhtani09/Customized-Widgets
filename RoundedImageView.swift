//Use this class to image to add corner radius and border to Images

import Foundation
import UIKit

@IBDesignable class RoundedImageView: UIImageView {

    @IBInspectable var isRoundedCorners: Bool = false {
        didSet { setNeedsLayout() }
    }

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet { setNeedsLayout() }
    }

    @IBInspectable var borderColor: UIColor = .clear {
        didSet { setNeedsLayout() }
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        if isRoundedCorners {
            layer.cornerRadius = bounds.height / 2
            layer.masksToBounds = true
        } else {
            layer.cornerRadius = 0
            layer.masksToBounds = false
        }

        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}

