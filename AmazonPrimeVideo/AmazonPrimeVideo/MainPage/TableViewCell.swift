//
//  TableViewCell.swift
//  AmazonPrimeVideo
//
//  Created by batuhan on 2.09.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var tableCollectionView: UICollectionView!
    
    @IBOutlet weak var headerlbl: UILabel!
    
    @IBOutlet weak var imageCol: UIImageView!
    
    
    var FilmList = [Movies]()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tableCollectionView.delegate = self
        tableCollectionView.dataSource = self
        
        let tasarim = UICollectionViewFlowLayout()
       // tasarim.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        tasarim.minimumLineSpacing = 10
        tasarim.scrollDirection = .horizontal
        
        
        let genislik = tableCollectionView.frame.size.width
      let itemSize = genislik
        
        tasarim.itemSize = CGSize(width: itemSize, height: genislik)
        tableCollectionView.collectionViewLayout = tasarim
        
        
        MovieAdded()
        
    }
    
    
    
    func MovieAdded(){
        let m1 = Movies(movie_id: 1, movie_name: "MR.Robot", movie_image: "robot", movie_year: "2016", movie_category: .BilimKurgu)
        let m2 = Movies(movie_id: 2, movie_name: "PersonOfInterest", movie_image: "personof", movie_year: "2013", movie_category: .BilimKurgu)
        let m3 = Movies(movie_id: 3, movie_name: "Grand Tour", movie_image: "grandtour", movie_year: "2019", movie_category: .Belgesel)
        let m4 = Movies(movie_id: 4, movie_name: "Jason Bourne", movie_image: "jasonbourne", movie_year: "2016", movie_category: .BilimKurgu)
        let m5 = Movies(movie_id: 5, movie_name: "PersonOfInterest", movie_image: "personof", movie_year: "2013", movie_category: .BilimKurgu)
        let m6 = Movies(movie_id: 6, movie_name: "The Big Short", movie_image: "bigshort", movie_year: "2019", movie_category: .Belgesel)
        let m7 = Movies(movie_id: 7, movie_name: "Ted", movie_image: "robot", movie_year: "2016", movie_category: .BilimKurgu)
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

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}





extension TableViewCell : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FilmList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let rows = FilmList[indexPath.row]
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "yanyanaCell", for: indexPath) as! CollectionViewCell
        cell.image.image = UIImage(named: rows.movie_image)
       
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
    
}
