//
//  ContactController.swift
//  Assessment4Rework
//
//  Created by Timothy Rosenvall on 7/14/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

import Foundation
import CloudKit

class ContactController {
    
    // Singleton
    static let sharedInstance = ContactController()

    // Source Of Truth
    var contacts: [Contact] = []
    
    // CRUD Functions
    // Create
    func createNewContact (contactName: String, contactNumber: String, contactEmail: String) {
        // Initialize a Contact from the properties passed into the function.
        let contact = Contact(contactName: contactName, contactNumber: contactNumber, contactEmail: contactEmail)
        // Append the Contact to the Source Of Truth
        self.contacts.append(contact)
    }

    // Read
    
    // Update
    func updateContact (contact: Contact, contactName: String, contactNumber: String, contactEmail: String) {
        // Update the contact passed into the function.
        contact.contactName = contactName
        contact.contactNumber = contactNumber
        contact.contactEmail = contactEmail
    }
}
