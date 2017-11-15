//
//  EventTableViewController.swift
//  foodShare
//
//  Created by Sunita  Mansukhani on 1/22/17.
//  Copyright © 2017 Anmol Mansukhani. All rights reserved.
//

import UIKit


class EventTableViewController: UITableViewController {
    
    @IBAction func BacktoMenu(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "MenuSegue", sender: nil)
    }
//    let eventList = ["CS Club Banquet","Professional Meet n Greet","Health Conference"]
//    
//    let servingsList = ["6","12","20"]
    
    let eventsList = UserDefaults.standard.array(forKey: "DonationsArray") ?? []
    
    //let locationList = ["Kemper Lobby","ARC Ballroom","Memorial Union"]
    
  //  let timeList = ["6:30 - 7 pm","8:30 - 9 pm","5 - 5:30 pm"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return eventsList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: EventTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! EventTableViewCell
        
        let event = eventsList[indexPath.row] as! [String : String?]
        
        cell.eventDes.text = event["name"] ?? ""
        cell.servingsDes.text = event["servings"] ?? ""
        
//        cell.servingsDes.text = servingsList[indexPath.row]
        //cell.locationDes.text = locationList[indexPath.row]
    //    cell.timeDes.text = timeList[indexPath.row]
        
        return cell

        // Configure the cell...

    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "DetailView"){
            
          let VC = segue.destination as! DetailViewController
            
        if let indexpath = self.tableView.indexPathForSelectedRow {
                
                let event = eventsList[indexpath.row] as! [String : String?]
            VC.sentData1 = event["name"] ?? ""
                
                //let servings = servingsList[indexpath.row] as String
                VC.sentData2 = event["servings"] ?? ""
        
                
              //  let locations = locationList[indexpath.row] as String
             VC.sentData3 = event["location"] ?? ""
                
              //  let time = timeList[indexpath.row] as String
                VC.sentData4 = event["time"] ?? ""
                
                
                
                
    }
    
            
        }
        
        
        
        
        
        
        
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 
    private func loadSampleEvents() {
        
    }

}
