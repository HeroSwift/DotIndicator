
import UIKit

public class DotIndicator: UIView {
    
    // 当前页
    public var index = 0
    
    // 总页数
    public var count = 0
    
    // 默认颜色
    public var color = UIColor(red: 210 / 255, green: 210 / 255, blue: 210 / 255, alpha: 1)
    
    // 当前页颜色
    public var activeColor = UIColor.white
    
    // 默认半径
    public var radius = 4
    
    // 当前页半径
    public var activeRadius = 4
    
    // 圆点的间距
    public var gap = 4
    
    private var contentWidth: Int {
        return 2 * radius * (count - 1) + 2 * activeRadius + gap * (count - 1)
    }
    
    private var contentHeight: Int {
        return 2 * max(radius, activeRadius)
    }
    
    public override var intrinsicContentSize: CGSize {
        return CGSize(width: contentWidth, height: contentHeight)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        backgroundColor = UIColor.clear
    }
    
    public override func sizeToFit() {
        frame = CGRect(origin: frame.origin, size: CGSize(width: contentWidth, height: contentHeight))
    }
    
    public override func draw(_ rect: CGRect) {
        
        let currentContext = UIGraphicsGetCurrentContext()
        guard let context = currentContext else {
            return
        }
        
        let centerY = Int(frame.height / 2)
        
        var startX = (Int(frame.width) - contentWidth) / 2
        var dotIndex = 0
        var dotRadius = 0
        var dotColor = UIColor.white
        
        while dotIndex < count {
            
            if dotIndex == index {
                dotRadius = activeRadius
                dotColor = activeColor
            }
            else {
                dotRadius = radius
                dotColor = color
            }
            
            context.setFillColor(dotColor.cgColor)
            context.addEllipse(in: CGRect(x: startX, y: centerY - dotRadius, width: 2 * dotRadius, height: 2 * dotRadius))
            context.drawPath(using: .fill)
            
            startX += 2 * dotRadius + gap
            
            dotIndex += 1
            
        }
        
    }
}
