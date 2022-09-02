//
//  ViewController.swift
//  AmazonPrimeVideo
//
//  Created by batuhan on 28.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionViewSlider: UICollectionView!
    
    
   var FilmList = [Movies]()
    
    @IBOutlet weak var homeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewSlider.dataSource = self
        collectionViewSlider.delegate = self
  
        tableView.delegate = self
        tableView.dataSource = self
      
        MovieAdded()
        collectionViewDesign()
        print(FilmList.count)
    }


    
   

    func MovieAdded(){
        let m1 = Movies(movie_id: 1, movie_name: "MR.Robot", movie_image: "robot", movie_year: "2016", movie_category: .BilimKurgu)
        let m2 = Movies(movie_id: 2, movie_name: "PersonOfInterest", movie_image: "personof", movie_year: "2013", movie_category: .BilimKurgu)
        let m3 = Movies(movie_id: 3, movie_name: "Grand Tour", movie_image: "grandtour", movie_year: "2019", movie_category: .Belgesel)
        let m4 = Movies(movie_id: 4, movie_name: "Jason Bourne", movie_image: "jason", movie_year: "2016", movie_category: .BilimKurgu)
        let m5 = Movies(movie_id: 5, movie_name: "PersonOfInterest", movie_image: "personof", movie_year: "2013", movie_category: .BilimKurgu)
        let m6 = Movies(movie_id: 6, movie_name: "The Big Short", movie_image: "bigshort", movie_year: "2019", movie_category: .Belgesel)
        let m7 = Movies(movie_id: 7, movie_name: "Ted", movie_image: "ted", movie_year: "2016", movie_category: .BilimKurgu)
        let m8 = Movies(movie_id: 8, movie_name: "Oblivion", movie_image: "personof", movie_year: "2013", movie_category: .BilimKurgu)
        let m9 = Movies(movie_id: 9, movie_name: "StartUp", movie_image: "startup", movie_year: "2019", movie_category: .Belgesel)
        
        
        
        FilmList.append(m1)
        FilmList.append(m2)
        FilmList.append(m3)
        FilmList.append(m4)
        FilmList.append(m5)
        FilmList.append(m6)
        FilmList.append(m7)
        FilmList.append(m8)
        FilmList.append(m9)
      
    }
    
    
    func collectionViewDesign(){
        
        
        let tasarim = UICollectionViewFlowLayout()
       // tasarim.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        tasarim.minimumLineSpacing = 0
        tasarim.scrollDirection = .horizontal
        
        
        let genislik = collectionViewSlider.frame.size.width
        let itemGenislik = (genislik)
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik/2)
        collectionViewSlider.collectionViewLayout = tasarim
        
    }
    
    
    
   
    
    
    
    
    
    }

// MARK: - EXTENSION-CollectionView


extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
       
        return FilmList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let rows = FilmList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sliderCell", for: indexPath) as! SliderCollectionCell
        
        cell.sliderimage.image = UIImage(named: rows.movie_image)
        cell.PageControl.numberOfPages = FilmList.count
        cell.PageControl.currentPage = rows.movie_id
        
        
        return cell
    }
    
    
    
    
    
    
    
}

















// MARK: - EXTENSION-TableView



extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rows = FilmList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "viewcell", for: indexPath) as! TableViewCell
        
        
        cell.headerlbl.text = "Amazon Originals and  Exclusives >"
       
        
        
       
        
        
        
        return cell
    }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
   
    
    
    
    
    
    
    
    
}


