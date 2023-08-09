//Use this class to button to add corner radius and border to Button

import Foundation
import UIKit


@IBDesignable class RoundedButton: UIButton {

    // MARK: - Properties

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }



    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }

    // MARK: - UI Setup

    override func prepareForInterfaceBuilder() {
        setupButton()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setupButton()
    }

    private func setupButton() {
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = cornerRadius > 0
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}
