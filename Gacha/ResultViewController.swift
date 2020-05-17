//
//  ResultViewController.swift
//  Gacha
//
//  Created by Masaki Chonan on 2020/05/18.
//  Copyright © 2020 Masaki Chonan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    var monsterArray: [UIImage]!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        number = Int.random(in: 0...9)
        
        monsterArray = [UIImage(named: "monster001.png")!,
        UIImage(named: "monster002.png")!,
        UIImage(named: "monster003.png")!,
        UIImage(named: "monster004.png")!,
        UIImage(named: "monster005.png")!,
        UIImage(named: "monster006.png")!,
        UIImage(named: "monster007.png")!,
        UIImage(named: "monster008.png")!,
        UIImage(named: "monster008.png")!,
        UIImage(named: "monster009.png")!,]
        
        monsterImageView.image = monsterArray[number]
        
        if number == 9 {
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        }else if number > 6 {
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
        }else if number == 5{
            monsterImageView.image = UIImage(named: "monster005")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
        else if number == 4{
            monsterImageView.image = UIImage(named: "monster004")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
        else if number == 3{
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
        else if number == 2{
            monsterImageView.image = UIImage(named: "monster002")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
        else{
            monsterImageView.image = UIImage(named: "monster001")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
    }

    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

}

