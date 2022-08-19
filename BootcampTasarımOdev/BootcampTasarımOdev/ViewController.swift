//
//  ViewController.swift
//  BootcampTasarımOdev
//
//  Created by batuhan on 19.08.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.navigationItem.title = "Travel"
        self.navigationController?.navigationBar.barTintColor = .white
        
        let NavigationBarStyle = UINavigationBarAppearance()
        
        NavigationBarStyle.backgroundColor = UIColor(named: "Color")
        navigationController?.navigationBar.standardAppearance = NavigationBarStyle
        navigationController?.navigationBar.compactAppearance = NavigationBarStyle
        navigationController?.navigationBar.scrollEdgeAppearance = NavigationBarStyle
        
        NavigationBarStyle.titleTextAttributes = [.font : UIFont(name: "Pacifico-Regular", size: 24),.foregroundColor : UIColor(white: 1, alpha: 0.5)]
        
    }


}

