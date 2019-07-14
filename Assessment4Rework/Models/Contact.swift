//
//  Contact.swift
//  Assessment4Rework
//
//  Created by Timothy Rosenvall on 7/14/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

import Foundation

class Contact {
    
    // Properties
    var contactName: String
    var contactNumber: String
    var contactEmail: String

    // Basic Initializer
    init(contactName: String, contactNumber: String = "", contactEmail: String = "") {
        self.contactName = contactName
        self.contactNumber = contactNumber
        self.contactEmail = contactEmail
    }
}
