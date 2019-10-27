//
//  EditContactViewController.swift
//  Phone_2.0
//
//  Created by Oleksii Kolakovskyi on 10/26/19.
//  Copyright © 2019 Aleksey. All rights reserved.
//

import UIKit

class EditContactViewController: UIViewController {

    var contact: ContactsFormat!

    
        @IBOutlet weak var nameTextField: UITextField!
        @IBOutlet weak var lastNameTextField: UITextField!
        @IBOutlet weak var phoneTextField: UITextField!
        @IBOutlet weak var notesTextField: UITextView!
        
        
        
        @IBAction func saveNewContactButtonTapped(_ sender: UIButton) {
            _ = ContactsFormat.addNewContact(firstName: nameTextField.text!,
                                        lastName: lastNameTextField.text!,
                                        number: phoneTextField.text!,
                                        photo: nil,
                                        notes: notesTextField.text!)
            print(contacts)
            navigationController?.popViewController(animated: true)
        }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.text = contact.name
        lastNameTextField.text = contact.lastName
        phoneTextField.text = contact.number
        notesTextField.text = contact.notes

        
    }


}

