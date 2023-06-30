//
//  ViewController.swift
//  listOfAnimations
//
//  Created by Kirill on 30.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let myView = UIView()
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        myView.backgroundColor = .red
        myView.alpha = 0
        myView.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        myView.center = self.view.center
        
        button.frame = CGRect(x: 0, y: self.view.frame.height - 200, width: 150, height: 60)
        button.center.x = self.view.center.x
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(showAnimation), for: .touchUpInside)
        button.setTitle("Tup Animation", for: .normal)
        self.view.addSubview(button)
    }
    
    
    //MARK: - test Animations
    @objc func showAnimation() {
        if myView.alpha == 0 {
            MyAnimation2.animation.fromMoreToLess(view: myView, controller: self)
        } else {
            MyAnimation2.animation.fromLessToMore(view: myView, controller: self)
        }
    }


}

