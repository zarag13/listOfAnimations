//
//  ListAnimation.swift
//  listOfAnimations
//
//  Created by Kirill on 30.06.2023.
//

import Foundation
import UIKit


//MARK: - from top to bottom / from bottom to top
class MyAnimation1 {
    
    static let animation = MyAnimation1()
    
    func fromTopToBottom(view: UIView, controller: UIViewController) {
        view.center.y = -300
        view.alpha = 0
        controller.view.addSubview(view)
        
        UIView.animate(withDuration: 0.4) {
            view.alpha = 1
            view.center.y = controller.view.center.y
        }
        
    }
    func fromBottomToTop(view: UIView, controller: UIViewController) {
        UIView.animate(withDuration: 0.4) {
            view.alpha = 0
            view.center.y = -300
        } completion: { _ in
            view.removeFromSuperview()
        }
    }
}

//MARK: - fromMoreToLess / fromLessToMore
class MyAnimation2 {
    
    static let animation = MyAnimation2()
    
    func fromMoreToLess(view: UIView, controller: UIViewController) {
        view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        view.alpha = 0
        controller.view.addSubview(view)
        
        UIView.animate(withDuration: 0.4) {
            view.alpha = 1
            view.transform = CGAffineTransform.identity
        }
    }
    func fromLessToMore(view: UIView, controller: UIViewController) {
        UIView.animate(withDuration: 0.4) {
            view.alpha = 0
            view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        } completion: { _ in
            view.removeFromSuperview()
            view.transform = CGAffineTransform.identity
        }
    }
}
