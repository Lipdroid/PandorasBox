//
//  Character.swift
//  PandorasBox
//
//  Created by Lipu Hossain on 9/25/16.
//  Copyright © 2016 lipple. All rights reserved.
//

import Foundation

class Character{
    private var _hp = 100
    private var _power = 100
    
    var hp:Int{
        get{
            return _hp
            
        }
    }
    
    
    func change_health(){
         _hp -= 10
    }
    
    var power:Int{
        get{
            return _power
            
        }
    }
    
    init(hp: Int, power: Int){
        self._hp = hp
        self._power = power
    }
    
    var isAlive:Bool{
        get{
            if(self._hp <= 0){
                return false
            }else{
                return true
            }
            
        }
        
        
    }
    
}