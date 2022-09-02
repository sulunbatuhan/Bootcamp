//
//  DownloadViewController.swift
//  AmazonPrimeVideo
//
//  Created by batuhan on 29.08.2022.
//

import UIKit

class DownloadViewController: UIViewController {

    @IBOutlet weak var DownloadTableView: UITableView!
    
    
  
    var FilmList = [Movies]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    
       
       
         MovieAdded()
        DownloadTableView.delegate = self
        DownloadTableView.dataSource = self
        DownloadTableView.backgroundColor = UIColor(named: "BackgroundColor")
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
    
    // MARK: - Navigation

    
    
    
   
    

}

extension DownloadViewController : UITableViewDelegate,UITableViewDataSource{
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return FilmList.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rows = FilmList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DownloadCell", for: indexPath) as! DownloadTableViewCell
      
        cell.downloadImageView.image = UIImage(named: rows.movie_image)
        cell.downloadMovieName.text = rows.movie_name
        cell.downloadMovieYear.text = rows.movie_year
    
        cell.backgroundColor  = UIColor(named: "BackgroundColor")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
