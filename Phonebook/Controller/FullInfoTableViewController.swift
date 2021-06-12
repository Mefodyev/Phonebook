//
//  FullInfoTableViewController.swift
//  Phonebook
//
//  Created by Alexey Mefodyev on 10.06.2021.
//

import UIKit

class FullInfoTableViewController: UITableViewController {

    var person = FirstTableViewController().randomPeople

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Full Person's List"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return person.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataOfPeople")!
        
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "☎️ \(person[indexPath.section].phone)"
        case 1:
            cell.textLabel?.text = "✉️ \(person[indexPath.section].email)"
        default:
            print("Something wrong")
        }

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        let arrayOfNames = person.map { $0.fullname }
        let names: String = arrayOfNames[section]
        
        return names
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



}
