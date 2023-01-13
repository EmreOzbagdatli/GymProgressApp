//
//  ExerciseViewController.swift
//  GYMming
//
//  Created by Emre Özbağdatlı on 13.01.2023.
//

import UIKit

class ExerciseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

     @IBAction func testButton(_ sender: Any) {
         NavigationHelper.push(to: .muscleProgress)
     }
    

}
