//
//  ViewController.swift
//  BootcampProject2
//
//  Created by batuhan on 20.08.2022.
//

import UIKit

class HomePage: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.red
        
        
        
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        
        
        let alt = UITabBarAppearance()
        alt.backgroundColor = .red
        
        tabBarController?.tabBar.standardAppearance = alt
        tabBarController?.tabBar.scrollEdgeAppearance = alt
        
        image1.isUserInteractionEnabled = true
        image2.isUserInteractionEnabled = true
        
        
        
        image1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(image1Tapped)))
        image2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(image2Tapped)))
        
    }
    @objc func image1Tapped(_ sender : UITapGestureRecognizer){

        if image1 == image1{
            performSegue(withIdentifier: "ToPageA", sender: nil)
            
        }
        
    }
    
    @objc func image2Tapped(_ sender : UITapGestureRecognizer){

       
        if image2 == image2 {
            performSegue(withIdentifier: "ToPageX", sender: nil)
            
        }
    }
    
    
   
    
}

