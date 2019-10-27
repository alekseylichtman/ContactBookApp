//
//  ProfileViewController.swift
//  Phone_2.0
//
//  Created by Oleksii Kolakovskyi on 10/25/19.
//  Copyright © 2019 Aleksey. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate{
    
    var contact: ContactsFormat!
    
    
    
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var notes: UITextView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editContact" {
            let profileController = segue.destination as! EditContactViewController
            profileController.contact = self.contact        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        fullName.text = "\(contact.name) \(contact.lastName ?? "no_lastname")"
        phoneNumber.text = contact.number ?? ""
        notes.text = contact.notes
        
        
        
    }
    
    
}

