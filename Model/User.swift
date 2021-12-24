//
//  User.swift
//  MVVM
//
//  Created by Admin on 24/12/21.
//

import Foundation

struct Welcome : Codable {
    
    let contacts : [Contact]
    
}

struct Contact : Codable {
    
        let userId,title,body : String
    }
