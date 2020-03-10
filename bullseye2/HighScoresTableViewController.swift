//
//  HighScoresTableViewController.swift
//  bullseye2
//
//  Created by Maisa Ahmad on 3/9/20.
//  Copyright © 2020 Maisa Ahmad. All rights reserved.
//

import UIKit

class HighScoresTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return 5
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
                    
                    let nameLabel = cell.viewWithTag(1000) as! UILabel//label of each cell with tag 1000 will be namelabel
                    
                    let scoreLabel = cell.viewWithTag(2000) as! UILabel//label of each cell with tag 2000 will be scorelabel
                    
                    //for each row, replace those certain labels with names and their scores
                    if indexPath.row == 0 {
                      nameLabel.text = "The reader of this book"
                      scoreLabel.text = "50000"
                    }
                    else if indexPath.row == 1 {
                      nameLabel.text = "Manda"
                      scoreLabel.text = "10000"
                    }
                    else if indexPath.row == 2 {
                      nameLabel.text = "Joey"
                      scoreLabel.text = "5000"
                    }
                    else if indexPath.row == 3 {
                      nameLabel.text = "Adam"
                      scoreLabel.text = "1000"
                    }
                    else if indexPath.row == 4 {
                      nameLabel.text = "Eli"
                      scoreLabel.text = "500"
                    }
                    
                    
                    
                    return cell
                    
    }
    
    // MARK:- Table View Delegate
    //function gets called whenever user taps on a cell
    //function will deselect a selected row, so the row will only be highlighted when selected
    override func tableView(_ tableView: UITableView,
               didSelectRowAt indexPath: IndexPath) {
      tableView.deselectRow(at: indexPath, animated: true)
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
