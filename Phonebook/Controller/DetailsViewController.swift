//
//  DetailsViewController.swift
//  Phonebook
//
//  Created by Alexey Mefodyev on 10.06.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!

    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person?.fullname
        phoneLabel.text = "Phone: \(person?.phone ?? "Phone is unknown")"
        emailLabel.text = "Email: \(person?.email ?? "Email is unknown")"
        
    }
}
