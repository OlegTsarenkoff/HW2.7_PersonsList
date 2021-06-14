//
//  SectionsViewController.swift
//  PersonsList
//
//  Created by Oleg Tsarenkoff on 14.06.21.
//

import UIKit

class SectionsViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Persons List"
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        
        return person.fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = persons[indexPath.section]
        
        var contentPhone = cell.defaultContentConfiguration()
        contentPhone.image = UIImage(systemName: "phone")
        contentPhone.text = person.numberPhone
        
        var contentEmail = cell.defaultContentConfiguration()
        contentEmail.image = UIImage(systemName: "at")
        contentEmail.text = person.email
        
        if indexPath.row % 2 == 0 {
            cell.contentConfiguration = contentPhone
            return cell
        } else {
            cell.contentConfiguration = contentEmail
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
