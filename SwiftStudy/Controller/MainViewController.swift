//
//  ViewController.swift
//  SwiftStudy
//
//  Created by Schro on 2023/05/15.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        self.view.backgroundColor = .red
        view = MainView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//        view = MainView()
        super.viewDidLoad()
    }
    
}

