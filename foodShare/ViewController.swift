//
//  ViewController.swift
//  foodShare
//
//  Created by Sunita  Mansukhani on 1/21/17.
//  Copyright © 2017 Anmol Mansukhani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func loginButton(_ sender: UIButton) {
        performSegue(withIdentifier: "loginSegue", sender: self)
    }
          override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

