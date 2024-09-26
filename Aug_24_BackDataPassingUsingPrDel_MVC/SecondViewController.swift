//
//  SecondViewController.swift
//  Aug_24_BackDataPassingUsingPrDel_MVC
//
//  Created by Vishal Jagtap on 26/09/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    var extractedFirstName : String?
    var extractedLastName : String?
    
    var delegate1 : BackDataPassingPr?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func btnBack(_ sender: Any) {
        
        guard let delegate2 = delegate1 else { return }
        
        extractedFirstName = self.firstNameTextField.text
        extractedLastName = self.lastNameTextField.text
        
        let newStudentObject = Student(firstName: extractedFirstName!,
                                       lastName: extractedLastName!)
        
        delegate2.passDataBack(student: newStudentObject)
        
        self.navigationController?.popViewController(animated: true)
        
    }
}
