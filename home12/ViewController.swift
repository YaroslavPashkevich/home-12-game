//
//  ViewController.swift
//  home12
//
//  Created by  Yaroslav on 29.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    var gameOver: String = ""
    @IBOutlet weak var GameoverLabel: UILabel!
    
    @IBOutlet weak var SchetLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        GameoverLabel.text = gameOver
        
      
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        GameoverLabel.text = gameOver
        
        
        
    }

    @IBAction func startButton(_ sender: UIButton) {
        
        let vc2 = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: "SecondVC") as! SecondVC
        
        navigationController?.pushViewController(vc2, animated: true)
        
        
    }
    
}


