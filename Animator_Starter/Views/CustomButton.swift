//
//  CustomButton.swift
//  Animator_Starter


import UIKit

class CustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func setup() {
        self.round(cornerRadius: 25, borderWidth: 3, borderColor: .white)
        self.addTarget(self, action: #selector(selectionAnimation), for: .touchUpInside)
    }
    
    @objc func selectionAnimation() {
        self.center.y -= 20
        self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        self.alpha = 0.5
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.5, options: [], animations: {
            
            self.center.y += 20
            self.transform = CGAffineTransform.identity
            self.alpha = 1
            
        }, completion: nil)
        
    }
    
    
    

}
