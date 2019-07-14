//
//  ContactListTableViewController.swift
//  Assessment4Rework
//
//  Created by Timothy Rosenvall on 7/14/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

import UIKit

class ContactListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Reload data whenever this view reappears.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of rows is the same as the number of contacts
        return ContactController.sharedInstance.contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Define our tableViewCell as our custom cell.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as? ContactTableViewCell else {return UITableViewCell()}
        // Find the appropriate contact from the source of truth and give it to the appropriate cell.
        let contact = ContactController.sharedInstance.contacts[indexPath.row]
        cell.contact = contact
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO : - Segue
    }
}
