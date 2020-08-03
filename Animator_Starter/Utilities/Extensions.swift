//
//  Extensions.swift
//  Animator_Starter
//


import Foundation
import UIKit

extension UIView {
    
    func round(cornerRadius: CGFloat, borderWidth: CGFloat, borderColor: UIColor) {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.clipsToBounds = true
    }
    
}

extension NSObject {
    
    public func delayForSeconds(delay: Double, completion: @escaping() -> ()) {
        let timer = DispatchTime.now() + delay
        
        DispatchQueue.main.asyncAfter(deadline: timer) {
            completion()
        }
    }
    
}

extension UIViewController {
    
    func segueToNextViewController(segueID: String, delay: Double) {
        delayForSeconds(delay: delay) {
            self.performSegue(withIdentifier: segueID, sender: nil)
        }
    }
    
}
