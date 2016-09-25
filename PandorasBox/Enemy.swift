//
//  Enemy.swift
//  PandorasBox
//
//  Created by Lipu Hossain on 9/26/16.
//  Copyright © 2016 lipple. All rights reserved.
//

import Foundation

class Enemy:Character{
    
    private var _name = "Enemy name"
    
    let loot = ["hat","jokerscard","hammer"]
    
    
    var name:String{
        return _name
        
    }
    
    var get_loot:String{
        
        get{
        let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        
        }
    
    }
    
    convenience init(name: String, hp: Int, power: Int) {
        self.init(hp: hp,power: power)
        _name = name
    }
    
    
    
    func attackWorks(power: Int)-> Bool?{
        if(power <= 20){
            return false
        }else{
            change_health()
            return true
        }
        
        
    }
    
}
