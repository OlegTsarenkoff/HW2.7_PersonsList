//
//  TabBarDataViewController.swift
//  PersonsList
//
//  Created by Oleg Tsarenkoff on 14.06.21.
//

import UIKit

class TabBarDataViewController: UITabBarController {
    
    let dataManager = DataManager()
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initPersons()
        sendDataToViewControllers()
    }
    
    private func initPersons() {
        while let person = Person.getPerson(from: dataManager) {
            persons.append(person)
        }
    }
    
    private func sendDataToViewControllers() {
        guard let viewControllers = self.viewControllers else { return }
        
        for viewController in viewControllers {
            guard let navigationController = viewController as? UINavigationController
            else { return }
            
            if let personsListVC = navigationController.topViewController as? PersonsListViewController {
                personsListVC.persons = persons
            }
            
            if let sectionsVC = navigationController.topViewController as? SectionsViewController {
                sectionsVC.persons = persons
            }
        }
    }
}
