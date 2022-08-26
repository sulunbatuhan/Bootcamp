//
//  ViewPageX.swift
//  BootcampProject2
//
//  Created by batuhan on 20.08.2022.
//

import UIKit

class ViewPageX: UIViewController {

    @IBOutlet weak var tableViewX: UITableView!
    
    var carsSection = ["Sedan","SUV","Hybrid","Sport"]
    var carsModel = [["City","Civic","Accord"],["CR-V","HR-V"],["HR-V: E-HEV"],["NSX","Civic Type-R"]]
    override func viewDidLoad() {
        super.viewDidLoad()

        
       
    }
    

    

}

extension ViewPageX : UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return carsSection.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carsModel[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return carsSection[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellX = tableView.dequeueReusableCell(withIdentifier: "cellX", for: indexPath)
        
        cellX.textLabel?.text = carsModel[indexPath.section][indexPath.row]
        
        return cellX
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       performSegue(withIdentifier: "FromXtoPrice", sender: nil)
        
    }
    
    
    
    
}
