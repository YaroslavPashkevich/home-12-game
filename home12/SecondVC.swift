//
//  SecondVC.swift
//  home12
//
//  Created by  Yaroslav on 29.08.21.
//

import Foundation
import UIKit
class SecondVC: UIViewController {
    
    @IBOutlet weak var one: UIView!
    
    @IBOutlet weak var two: UIView!
    
    @IBOutlet weak var leftConstrent: NSLayoutConstraint!
    
    @IBOutlet weak var rightConstrent: NSLayoutConstraint!
    
    @IBOutlet weak var topDerevo: NSLayoutConstraint!
    
    @IBOutlet weak var downDerevo: NSLayoutConstraint!
    
    @IBOutlet weak var leftDerevo: NSLayoutConstraint!
    
    @IBOutlet weak var rightDerevo: NSLayoutConstraint!
    
    @IBOutlet weak var imageAvto: UIImageView!
    
    @IBOutlet weak var imageDerevo: UIImageView!
    
    var gameOver: String = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CarPosition.allCases
        
        print(CarPosition.center)
        
        
        if downDerevo.constant == view.frame.maxY - 230 && leftConstrent.constant == 3 {
            
        let vc = navigationController?.viewControllers.first as? ViewController
            self.gameOver = "Game Over"
            vc?.gameOver = self.gameOver
            self.navigationController?.popViewController(animated: true)
        } else {
            UIView.animate(withDuration: 5, delay: 1, options: .repeat) {
                self.imageDerevo.transform = CGAffineTransform(translationX: 0, y: self.view.frame.maxY - 320)
            }
        }
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    
    @IBAction func LeftButton(_ sender: UIButton) {
        
        if leftConstrent.constant == 32 {
            UIView.animate(withDuration: 2) {
                self.leftConstrent.constant = -225
            }
        } else {
            UIView.animate(withDuration: 2) {
                self.rightConstrent.constant = 32
            }
        }
    }
    
    
    
    
    @IBAction func rightButton(_ sender: UIButton) {
        
        if rightConstrent.constant == 32 {
            UIView.animate(withDuration: 2) {
                self.rightConstrent.constant = -225
            }
        } else
        
        if leftConstrent.constant == -225 {
            UIView.animate(withDuration: 2) {
                self.leftConstrent.constant = 32
            }
        }
    }
    
}

enum CarPosition: CaseIterable {
    case left, center, right
    
    var offset: CGFloat {
        switch self {
        case .left:
            return 0
        case .center:
            return UIScreen.main.bounds.width / 2
        case .right:
            return UIScreen.main.bounds.width
        }
    }
}
