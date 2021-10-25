//
//  UIView+Extensions.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import UIKit

extension UIView {
    
    func startTappedAnimation(with completion: @escaping (Bool) -> Void) {
        transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: completion)
        
        self.layoutIfNeeded()
    }
    
    /// Covers the given view completely
    func expandView(to superView: UIView) {
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
    }
    
    /// Covers the given view with equal margins
    func expandView(to superView: UIView, with constant: CGFloat?) {
        let negativeConst = -(constant ?? 0)
        topAnchor.constraint(equalTo: superView.topAnchor, constant: constant ?? 0).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: negativeConst).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: constant ?? 0).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: negativeConst).isActive = true
    }
    
    /// Covers the given view with the given margins
    func expandView(to superView: UIView, top: CGFloat?, bottom: CGFloat?, leading: CGFloat?, trailing: CGFloat?) {
        topAnchor.constraint(equalTo: superView.topAnchor, constant: top ?? 0).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: bottom ?? 0).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: leading ?? 0).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: trailing ?? 0).isActive = true
    }
    
}
