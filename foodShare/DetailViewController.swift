//
//  DetailViewController.swift
//  foodShare
//
//  Created by Sunita  Mansukhani on 1/22/17.
//  Copyright © 2017 Anmol Mansukhani. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var servingsLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var sentData1:String!
    var sentData2:String!
    var sentData3:String!
    var sentData4:String!
    
    var didTapDibsButton = false
    
    @IBAction func dibsButton(_ sender: UIButton) {
        if didTapDibsButton {
            sender.setTitleColor(UIColor.green, for: .highlighted)
            
            let currentServings = Int(servingsLabel.text!)!
            servingsLabel.text = "\(currentServings + 1)"
            didTapDibsButton = false

            
        } else {
            sender.setTitleColor(UIColor.red, for: .normal)
            
            let currentServings = Int(servingsLabel.text!)!
            servingsLabel.text = "\(currentServings - 1)"
            didTapDibsButton = true
        }
        
//        dibsButton.setTitleColor(UIColor.ocean(), forState: UIControlState.Normal)
//        dibsButton.setTitleColor(UIColor.lime(), forState: UIControlState.Normal)


    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //let eventsList = UserDefaults.standard.array(forKey: "DonationsArray") ?? []
        

        //let event = eventsList[indexPath.row] as! [String : String?]
        
   //     eventLabel = event["name"]
     //   servingsLabel = event["servings"]
       // locationLabel = event["location"]
        //timeLabel = event["time"]
        
        
        
     //   cell.eventDes.text = event["name"]!
       // cell.servingsDes.text = event["servings"]!


        eventLabel.text = sentData1
        servingsLabel.text = sentData2
        locationLabel.text = sentData3
        timeLabel.text = sentData4
        /*
        if eventLabel.text == "CS Club Banquet"{
          locationLabel.text = "Kemper Lobby"
            timeLabel.text = "6:30 - 7pm"
            
        }
        
        if eventLabel.text == "Professional Meet n Greet"{
            locationLabel.text = "ARC Ballroom"
            timeLabel.text = "8:30 - 9pm"
            
        }
        
        if eventLabel.text == "Health Conference"{
            locationLabel.text = "Memorial Union"
            timeLabel.text = "5 - 5:30pm"
            
        }*/
       // locationLabel.text = sentData3
       // timeLabel.text = sentData4
        
        
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
