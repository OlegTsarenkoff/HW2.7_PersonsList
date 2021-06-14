//
//  PersonDetailViewController.swift
//  PersonsList
//
//  Created by Oleg Tsarenkoff on 14.06.21.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = person.fullName
        
        phoneNumberLabel.text = person.numberPhone
        emailLabel.text = person.email
    }
}
