//
//  ThirdViewController.swift
//  foodShare
//
//  Created by Sunita  Mansukhani on 1/21/17.
//  Copyright © 2017 Anmol Mansukhani. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var servings: UITextField!
    
    @IBOutlet weak var fooddescription: UITextField!
    
    @IBOutlet weak var notesDes: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitTapped(_ sender: UIButton) {
        let data = [
            "name" : self.name.text,
            "location" : self.location.text,
            "time" : self.time.text,
            "servings" : self.servings.text,
            "fooddescription" : self.fooddescription.text
            
        ]
        
        var currentDonations = UserDefaults.standard.array(forKey: "DonationsArray") ?? []
        currentDonations.append(data)
        
        UserDefaults.standard.set(currentDonations, forKey: "DonationsArray")
        UserDefaults.standard.synchronize()
        
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
