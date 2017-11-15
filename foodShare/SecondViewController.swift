//
//  SecondViewController.swift
//  foodShare
//
//  Created by Sunita  Mansukhani on 1/21/17.
//  Copyright © 2017 Anmol Mansukhani. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
  //  @IBAction func donateButton(_ sender: UIButton) {
    //    performSegue(withIdentifier: "donateFormSegue", sender: self)
    //}
    @IBAction func donateButton(_ sender: UIButton) {
        performSegue(withIdentifier: "donateFormSegue", sender: self)
    }
    
    @IBAction func receiveButton(_ sender: UIButton) {
        performSegue(withIdentifier: "receiveTableSegue", sender: self)
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
