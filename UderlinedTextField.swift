//Use this class to UITextField to remove all borders from text field except bottom, also reduce the space betwen text in textfield and bottomBorderLine with the help of bottomLineY

import Foundation
import UIKit

@IBDesignable
class UderlinedTextField: UITextField {
    
    @IBInspectable var bottomLineColor: UIColor = UIColor.black {
        didSet {
            updateBottomLine()
        }
    }
    
    @IBInspectable var bottomLineHeight: CGFloat = 2.0 {
        didSet {
            updateBottomLine()
        }
    }
    
    @IBInspectable var bottomLineY: CGFloat = 5.0 {
        didSet {
            updateBottomLine()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addBottomLine()
    }
    
    private func addBottomLine() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.height - bottomLineY, width: self.frame.width, height: bottomLineHeight)
        bottomLine.backgroundColor = bottomLineColor.cgColor
        self.borderStyle = .none
        self.layer.addSublayer(bottomLine)
    }
    
    private func updateBottomLine() {
        if let sublayers = self.layer.sublayers {
            for layer in sublayers {
                if layer.frame.height == bottomLineHeight {
                    layer.backgroundColor = bottomLineColor.cgColor
                }
            }
        }
    }
}
