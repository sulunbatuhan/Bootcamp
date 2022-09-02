//
//  DownloadTableViewCell.swift
//  AmazonPrimeVideo
//
//  Created by batuhan on 29.08.2022.
//

import UIKit

class DownloadTableViewCell: UITableViewCell {

  
    @IBOutlet weak var downloadImageView: UIImageView!
    
    @IBOutlet weak var downloadMovieName: UILabel!
    
    @IBOutlet weak var downloadMovieYear: UILabel!
    
    @IBOutlet weak var isPrime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
