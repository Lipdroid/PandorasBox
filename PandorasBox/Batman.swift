//
//  Batman.swift
//  PandorasBox
//
//  Created by Lipu Hossain on 9/25/16.
//  Copyright © 2016 lipple. All rights reserved.
//

import Foundation
class Batman: Character {
    private var _name = "Bruce Wayne"
    
    var name:String{
        get{
            return _name
        }
    }
    
    var _inventory = [String]()
    
    var inventory:[String]{
      return _inventory
    }
    
    convenience init(name: String, hp: Int, power: Int){
        self.init(hp: hp, power: power)
        self._name = name
    
    }
    
    
    
}