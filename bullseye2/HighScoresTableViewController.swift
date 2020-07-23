//
//  HighScoresTableViewController.swift
//  bullseye2
//
//  Created by Maisa Ahmad on 3/9/20.
//  Copyright © 2020 Maisa Ahmad. All rights reserved.
//

import UIKit

class HighScoresTableViewController: UITableViewController {
    /*
    let row0item = HighScoreItem()
    let row1item = HighScoreItem()
    let row2item = HighScoreItem()
    let row3item = HighScoreItem()
    let row4item = HighScoreItem()*/
    
    //instead of instance variables, use a single array variable
    var items = [HighScoreItem]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetHighScores()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    //function specifies number of sections the high scores table is broken into
    //creates group of rows
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //function specifies number of rows for each section (use if statements if sections have different amount of rows, then we can say if indexPath.section==x {return y} )
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
       // return 5
        //return the size of array to determine how many rows
        return items.count
    }
    
    //function labels sections of table with a string (use to title sections)
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //return "Hello"
        return "High Scores"
    }
    
    //function specifies actions for each index according to tag
    override func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath) ->
                 UITableViewCell {
                   /* tableView.dequeueReusableCell(withIdentifier:"reuse identifier", for: indexPath)*/
                    
                    let cell  = tableView.dequeueReusableCell(withIdentifier: "HighScoreItem", for: indexPath)//set prototype cell into a reusable cell, rows specify how many cells there will be, sections specify how many group of rows will appear
                    
                    //ask array for the HighScoreItem object at the corresponding row
                    let item = items[indexPath.row]
                    
                    let nameLabel = cell.viewWithTag(1000) as! UILabel//label of each cell with tag 1000 will be namelabel
                    
                    let scoreLabel = cell.viewWithTag(2000) as! UILabel//label of each cell with tag 2000 will be scorelabel
                    
                    //for each row, replace those certain labels with names and their scores

                    nameLabel.text = item.name
                    //set int to strings
                    scoreLabel.text = String(item.score)
                    
                    
                    return cell
                    
    }
    
    // MARK:- Table View Delegate
    //function gets called whenever user taps on a cell
    //function will deselect a selected row, so the row will only be highlighted when selected
    override func tableView(_ tableView: UITableView,
               didSelectRowAt indexPath: IndexPath) {
      tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    //enable swipe to delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        items.remove(at: indexPath.row)
        
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)

    }
    
    
    @IBAction func resetHighScores() {
        let item1=HighScoreItem()
        item1.name="The reader of this book"
        item1.score = 50000
        items.append(item1)
        
        let item2=HighScoreItem()
        item2.name="Manda"
        item2.score = 10000
        items.append(item2)
        
        let item3=HighScoreItem()
        item3.name="Joey"
        item3.score = 5000
        items.append(item3)
        
        let item4=HighScoreItem()
        item4.name="Adam"
        item4.score = 1000
        items.append(item4)
        
        let item5=HighScoreItem()
        item5.name="Eli"
        item5.score = 500
        items.append(item5)
        
        table.reloadData()
    }
    
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
