//
//  View+Extension.swift
//  HLExtension
//
//  Created by Hieu Lam on 11/7/18.
//

public extension UIView {
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor, start: CGPoint = CGPoint(x: 0, y: 0), end: CGPoint = CGPoint(x: 1, y: 1)) {
        // By default
        // 0, 0 = top left 1,1 = bottom right
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = start
        gradientLayer.endPoint = end
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
    func addInnerShadow(to edges:[UIRectEdge], radius:CGFloat, toColor: UIColor, fromColor: UIColor){
        
        // Set up its frame.
        let viewFrame = self.frame
        for edge in edges{
            let gradientlayer          = CAGradientLayer()
            gradientlayer.colors       = [fromColor.cgColor,toColor.cgColor]
            gradientlayer.shadowRadius = radius
            
            switch edge {
            case UIRectEdge.top:
                gradientlayer.startPoint = CGPoint(x: 0.5, y: 0.0)
                gradientlayer.endPoint = CGPoint(x: 0.5, y: 1.0)
                gradientlayer.frame = CGRect(x: 0.0, y: 0.0, width: viewFrame.width, height: gradientlayer.shadowRadius)
            case UIRectEdge.bottom:
                gradientlayer.startPoint = CGPoint(x: 0.5, y: 1.0)
                gradientlayer.endPoint = CGPoint(x: 0.5, y: 0.0)
                gradientlayer.frame = CGRect(x: 0.0, y: viewFrame.height - gradientlayer.shadowRadius, width: viewFrame.width, height: gradientlayer.shadowRadius)
            case UIRectEdge.left:
                gradientlayer.startPoint = CGPoint(x: 0.0, y: 0.5)
                gradientlayer.endPoint = CGPoint(x: 1.0, y: 0.5)
                gradientlayer.frame = CGRect(x: 0.0, y: 0.0, width: gradientlayer.shadowRadius, height: viewFrame.height)
            case UIRectEdge.right:
                gradientlayer.startPoint = CGPoint(x: 1.0, y: 0.5)
                gradientlayer.endPoint = CGPoint(x: 0.0, y: 0.5)
                gradientlayer.frame = CGRect(x: viewFrame.width - gradientlayer.shadowRadius, y: 0.0, width: gradientlayer.shadowRadius, height: viewFrame.height)
            default:
                break
            }
            self.layer.addSublayer(gradientlayer)
        }
        
    }
}
