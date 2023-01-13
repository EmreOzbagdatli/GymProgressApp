//
//  ViewController.swift
//  GYMming
//
//  Created by Emre Özbağdatlı on 6.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            NavigationHelper.push(to: .exercise)
        }
    }
}

