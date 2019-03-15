//
//  StudentsViewController.swift
//  The Northwest Programming Contest
//
//  Created by Student on 14/03/19.
//  Copyright © 2019 Rahul  Reddy. All rights reserved.
//

import UIKit

class StudentsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        student0LBL.text = team.students[0]
         student1LBL.text = team.students[1]
         student2LBL.text = team.students[2]
        
        
    }
    
    @IBOutlet weak var student0LBL: UILabel!
   
    @IBOutlet weak var student1LBL: UILabel!
    
    @IBOutlet weak var student2LBL: UILabel!
    
    var team:Team!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
