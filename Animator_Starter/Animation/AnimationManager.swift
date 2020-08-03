//
//  AnimationManager.swift
//  Animator_Starter
//


import UIKit

class AnimationManager {
    
    // Calculated screen bounds
    class var screenBounds: CGRect {
        return UIScreen.main.bounds
    }
    
    // Screen positions
    class var screenRight: CGPoint {
        return CGPoint(x: screenBounds.maxX, y: screenBounds.midY)
    }
    
    class var screenTop: CGPoint {
        return CGPoint(x: screenBounds.midX, y: screenBounds.minY)
    }
    
    class var screenLeft: CGPoint {
        return CGPoint(x: screenBounds.minX, y: screenBounds.midY)
    }
    
    class var screenBottom: CGPoint {
        return CGPoint(x: screenBounds.midX, y: screenBounds.maxY)
    }
    
    // Tracking variables
    var constraintOrigins = [CGFloat]()
    var currentConstraint: [NSLayoutConstraint]!
    
    init(activeConstraints: [NSLayoutConstraint]) {
        
        for constraint in activeConstraints {
            constraintOrigins.append(constraint.constant)
            constraint.constant -= AnimationManager.screenBounds.width
        }
        
        currentConstraint = activeConstraints
        
    }
    
    
    
    
    
    
    
    
}
