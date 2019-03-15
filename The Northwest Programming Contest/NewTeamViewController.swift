//
//  NewTeamViewController.swift
//  The Northwest Programming Contest
//
//  Created by Student  on 14/03/19.
//  Copyright © 2019 Rahul  Reddy. All rights reserved.
//

import UIKit

class NewTeamViewController: UIViewController {

    
    
    @IBOutlet weak var student2TF: UITextField!
    
    @IBOutlet weak var student1TF: UITextField!
    @IBOutlet weak var student0TF: UITextField!
    
    @IBOutlet weak var nameTF: UITextField!
    var school:School!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func doneBTN(_ sender: Any) {
        let name = nameTF.text!
        let student0Name = student0TF.text!
        let student1Name = student1TF.text!
        let student2Name = student2TF.text!
        school.addTeam(name: name, students: [student0Name, student1Name, student2Name])
        self.dismiss(animated: true, completion: nil)  }
    
    @IBAction func cancelBTN(_ sender: Any) {
                self.dismiss(animated: true, completion: nil)
    }
}
