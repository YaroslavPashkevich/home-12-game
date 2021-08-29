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
    
    
    
    @IBOutlet weak var imageAvto: UIImageView!
    
    @IBOutlet weak var imageDerevo: UIImageView!
    
    var gameOver: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        UIView.animate(withDuration: 5, delay: 1) {
            self.imageDerevo.transform = CGAffineTransform(translationX: 0, y: 418)
        } completion: { _ in
            
            let vc = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController") as! ViewController
            
            
            
            self.gameOver = "Game Over"
            
            vc.gameOver = self.gameOver
            self.navigationController?.popViewController(animated: true)
        }
        
        
        
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

