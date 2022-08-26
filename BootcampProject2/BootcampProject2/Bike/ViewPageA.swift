//
//  ViewPageA.swift
//  BootcampProject2
//
//  Created by batuhan on 20.08.2022.
//

import UIKit

class ViewPageA: UIViewController {

    @IBOutlet weak var TableViewA: UITableView!
    
    var BikeSection = ["Naked","SuperSport","Adventure","Touring"]
    var bikeModels = [["CB250R","CB650r"],["CBR650R","CBR1000RR"],["Africa Twin"],["GoldWing"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewA.delegate = self
        TableViewA.dataSource = self
        
        
        
    }
    


}

extension ViewPageA : UITableViewDelegate,UITableViewDataSource{
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return BikeSection.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bikeModels[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return BikeSection[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellA = tableView.dequeueReusableCell(withIdentifier: "cellA", for: indexPath)
        
        cellA.textLabel?.text = bikeModels[indexPath.section][indexPath.row]
        
        return cellA
    }
    
    
    
    
    
}
