//
//  CircleSwipeViewController.swift
//  TMS_CircleSwipe_Lesson9
//
//  Created by Артем Макаренко on 07.07.2022.
//

import Foundation
import UIKit

public final class CircleSwipeViewController: UIViewController{
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
            view.backgroundColor = .systemIndigo
        //MARK: View Parameters
        let viewObject = UIView()
        
        let xScreen = UIScreen.main.bounds.maxX
        let yScreen = UIScreen.main.bounds.maxY - 150
        viewObject.backgroundColor = .systemOrange
        viewObject.frame = CGRect(x: 0, y: 0, width: xScreen, height: yScreen)
        
        view.addSubview(viewObject)
        
        //MARK: Circle Parameters
        
        let circle = UIView()
        
        let circleX = UIScreen.main.bounds.width / 2 - 50
        let circleY = UIScreen.main.bounds.height / 2 - 50
        circle.backgroundColor = .systemGray3
        circle.frame = CGRect(x: circleX, y: circleY, width: 100, height: 100)
        circle.clipsToBounds = true
        circle.layer.cornerRadius = 50
        
        viewObject.addSubview(circle)
        
        circle.addGestureRecognizer(UISwipeGestureRecognizer(target: self, action: #selector(self.handelSWipeGesture)))

    }
    
    
    @objc func handelSWipeGesture (gesture: UISwipeGestureRecognizer) {
                
        if gesture.direction == .down {
                    print("It's down")
        } else if gesture.direction == .up {
                    print("It's up")
        } else if gesture.direction == .left {
                    print("It's left")
        } else if gesture.direction == .right {
                    print("It's right")
            
        }

    }

}
