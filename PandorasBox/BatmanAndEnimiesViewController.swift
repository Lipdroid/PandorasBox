//
//  BatmanAndEnimiesViewController.swift
//  PandorasBox
//
//  Created by Lipu Hossain on 9/25/16.
//  Copyright © 2016 lipple. All rights reserved.
//

import UIKit

class BatmanAndEnimiesViewController: UIViewController {
    
    private let enemy = ["joker","harley"]
    
    @IBOutlet weak var info_lbl: UILabel!
    @IBOutlet weak var enemy_hp: UILabel!
    
    let batman = Batman(name: "Batman", hp: 100, power: 60)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor();
        self.navigationItem.title = "Batman"
        //make it landsscape
        let value = UIInterfaceOrientation.LandscapeRight.rawValue
        UIDevice.currentDevice().setValue(value, forKey: "orientation")
        
        
        
        //generate characters
        generateCharacter()
    }
    var enemy_char:Enemy?
    @IBOutlet weak var loot: UIButton!
    
    private func generateCharacter(){
        let rand = Int(arc4random_uniform(UInt32(enemy.count)))
        enemy_char = nil
        switch enemy[rand] {
            
        case "joker":
            enemy_char = Enemy(name: "joker", hp: 70, power: 45)
            
            info_lbl.text =  "(HA-HA-HA),i am the joker"
        case "harley":
            enemy_char = Enemy(name: "harley", hp: 50, power: 20)
            info_lbl.text =  "Hello B-man,i am harley Quin"
            enemy_image.image = UIImage(named: "\(enemy_char!.name).png")
        default:
            break;
        }
        
        enemy_hp.text = "\(enemy_char!.hp)HP"
        
    }
    
    @IBOutlet weak var enemy_image: UIImageView!
    
    
    @IBAction func pressed_attack(sender: AnyObject) {
        
        if(loot.hidden){
        if let _ = enemy_char!.attackWorks(batman.power){
            
            info_lbl.text =  "OHH!!That hurts"
            enemy_hp.text =   "\(enemy_char!.hp) HP"
            
            if (!(enemy_char?.isAlive)!){
                info_lbl.text = "\(enemy_char!.name) is dead"
                let loot_name = "\(enemy_char!.get_loot)"
                enemy_hp.text = "You got a \(loot_name)"
                
                loot.setImage(UIImage(named: "\(loot_name).png"), forState: UIControlState.Normal)
                
                enemy_image.hidden = true
                loot.hidden = false
            }
            
            
        }
        }
    }
    
    
    @IBAction func loot_pressed(sender: AnyObject) {
        enemy_image.hidden = false
        loot.hidden = true
        
        generateCharacter()
    }
}
