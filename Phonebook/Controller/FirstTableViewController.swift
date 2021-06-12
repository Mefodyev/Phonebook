//
//  FirstTableViewController.swift
//  Phonebook
//
//  Created by Alexey Mefodyev on 10.06.2021.
//

import UIKit

class FirstTableViewController: UIViewController  {
    
    var randomPeople = Person.generateArrayOfRandomPersons()
    private let titleText = "Person List"
    
    @IBOutlet weak var personListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = titleText
    }
    
}

extension FirstTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        randomPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "namesOfPeople")!
        cell.textLabel?.text = randomPeople[indexPath.row].fullname
        
        return cell
    }
    
    
}

extension FirstTableViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? DetailsViewController,
           let indexPath = personListTableView.indexPathForSelectedRow {
            
            let person = randomPeople[indexPath.row]
            destinationVC.person = person
            destinationVC.navigationItem.backBarButtonItem?.title = titleText
        }
    }
}

