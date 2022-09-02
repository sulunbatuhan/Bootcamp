//
//  SearchController.swift
//  AmazonPrimeVideo
//
//  Created by batuhan on 29.08.2022.
//

import UIKit

class SearchController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    

    
    @IBOutlet weak var SearchTableView: UITableView!
    
    var turler : [ String] = ["Dram","Korku","Bilim-Kurgu","Belgesel"]
    
    var filmList = [String]()
    var searchList = [String]()
    
    var isSearchWorks = false
    override func viewDidLoad() {
        super.viewDidLoad()

        searchBar.delegate = self
        
        SearchTableView.delegate = self
        SearchTableView.dataSource = self
        
    
        SearchTableView.backgroundColor = UIColor(named: "BackgroundColor")
       
      
    }
    
}
    
    

    
    // MARK: - Navigation

   
    
    
    

    
    
    


    
    


extension SearchController : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // her harf girildiğinde çalışıyor.
        
        if searchText  == ""{
            isSearchWorks = false
        }else {
            isSearchWorks = true
            searchList = filmList.filter({$0.lowercased().contains(searchText.lowercased())})
            
            
        }
    }
    
    
}


extension SearchController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return turler.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rows = turler[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableCell",for : indexPath)
        
        cell.textLabel?.text = rows
        cell.backgroundColor = UIColor(named: "BackgroundColor")
        cell.textLabel?.textColor = UIColor.white
        cell.accessoryType = .disclosureIndicator
        
        
        return cell
    }
    
    
}
