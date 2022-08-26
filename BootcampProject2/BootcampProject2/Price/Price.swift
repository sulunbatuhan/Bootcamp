//
//  ViewPageY.swift
//  BootcampProject2
//
//  Created by batuhan on 20.08.2022.
//

import UIKit

class Price: UIViewController {

    @IBOutlet weak var tableViewBike: UITableView!
    @IBOutlet weak var tableViewCars: UITableView!
   
    var BikeSection = ["Naked","SuperSport","Adventure","Touring"]
    var bikeModels = [["CB250R","CB650r"],["CBR650R","CBR1000RR"],["Africa Twin"],["GoldWing"]]
    
    
    
    var carsSection = ["Sedan","SUV","Hybrid","Sport"]
    var carsModel = [["City" ,"Civic","Accord"],
                     ["CR-V","HR-V"],
                     ["HR-V:E-HEV"],
                     ["NSX","Type-R"]]
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewBike.delegate = self
        tableViewBike.dataSource = self
        
        tableViewCars.dataSource = self
        tableViewCars.delegate = self
    }
    
    
    
    

   



}

extension Price : UITableViewDelegate,UITableViewDataSource{

    func numberOfSections(in tableView: UITableView) -> Int {
        var data :Int?
        if tableView == tableViewCars{
             data = carsSection.count
        }
        if tableView == tableViewBike{
           data = BikeSection.count
        }
        
        return data!
    }

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    var data : Int?
    if tableView == tableViewCars{
        data = carsSection[section].count
    }
    if tableView == tableViewBike{
        data =  bikeModels[section].count
    }
    return data!
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    var cell : UITableViewCell?
    
    if tableView == tableViewCars{
        cell = tableView.dequeueReusableCell(withIdentifier: "CarsCell", for: indexPath)
        cell?.textLabel?.text = carsModel[indexPath.section][indexPath.row]
    }
    if tableView == tableViewBike{
        cell = tableView.dequeueReusableCell(withIdentifier: "BikeCell", for: indexPath)
        cell?.textLabel?.text = bikeModels[indexPath.section][indexPath.row]
    }
    return cell!
}
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var data : String?
        if tableView == tableViewCars{
            data =  carsSection[section]
        }
        if tableView == tableViewBike{
           data = BikeSection[section]
        }
        return data
    }
    
}

