//
//  Safe.swift
//  Singleton
//
//  Created by Администратор on 09/01/2019.
//  Copyright © 2019 Администратор. All rights reserved.
//

class Safe {
    
    var money = 0
    static let shared = Safe()
    
    private init() {}
    
}

