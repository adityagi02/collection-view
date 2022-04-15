//
//  DetailViewController.swift
//  MovieZine
//
//  Created by Aditya Tyagi  on 26/03/22.
//

import UIKit
import youtube_ios_player_helper

class DetailViewController: UIViewController {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trailerurl = trailerURL
    }
  
}

var trailerID: TrailerData? {
    
}
extension String{
    var trailerURL: URL? {
        return URL(string: "\(videoURL)/\(trailerID?.results)/videos?api_key=\(apiKey)\(self)")
    }
}

