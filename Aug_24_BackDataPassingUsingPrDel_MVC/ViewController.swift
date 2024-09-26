//
//  ViewController.swift
//  Aug_24_BackDataPassingUsingPrDel_MVC
//
//  Created by Vishal Jagtap on 26/09/24.
//

import UIKit

class ViewController: UIViewController,BackDataPassingPr{
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func btnNext(_ sender: Any) {
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.delegate1 = self
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    func passDataBack(student: Student) {
        self.firstNameLabel.text = student.firstName
        self.lastNameLabel.text = student.lastName
    }
}
