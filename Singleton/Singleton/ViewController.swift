//
//  ViewController.swift
//  Singleton
//
//  Created by Администратор on 09/01/2019.
//  Copyright © 2019 Администратор. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let safe = Safe.shared
        print(safe.money)
        
        let safe1 = Safe()
        
    }


}

