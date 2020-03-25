//
//  DetailViewController.swift
//  MovieList
//
//  Created by Ashraf on 3/25/20.
//  Copyright © 2020 com.ashraf. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var genre: UILabel!
    

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var img: UIImageView!
    var movie:Movie?
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTitle.text = movie?.title
        img.image = UIImage(named:movie?.image ?? "avanger")
        genre.text = movie?.genre.toString()
    }
    override func viewDidAppear(_ animated: Bool) {
//        movieTitle.text = movie?.title
//        img.image = UIImage(named:movie?.image ?? "avanger")
//        genre.text = movie?.genre.toString()
    }
    

    func showMovie(movie:Movie){
        self.movie = movie
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
