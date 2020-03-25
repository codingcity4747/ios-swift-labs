//
//  MovieTableViewController.swift
//  MovieList
//
//  Created by Ashraf on 3/25/20.
//  Copyright © 2020 com.ashraf. All rights reserved.
//

import UIKit
extension Array{
    func toString()->String{
        var completString = ""
        for index in self.indices{
            completString += String(self[index] as? String ?? "none").appending(" ,")
        }
        return completString
    }
}
class MovieTableViewController: UITableViewController{

    var moviesRepo = MoviesRepository()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

   
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("movies: \(moviesRepo.movies.count)")
        return moviesRepo.movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as!MovieTableViewCell
            //as! MovieTableViewCell
        var movie = moviesRepo[movies:indexPath.row]
        //cell.textLabel?.text = movie.title
        //cell.imageView?.image = UIImage(named:movie.image)
        //cell.detailTextLabel?.text = movie.genre.toString()
            cell.title.text = movie.title
            cell.img.image = UIImage(named:movie.image)
            cell.movieRelease.text = String(format: "%d", movie.releaseYear)
            cell.genre.text = movie.genre.toString()
            cell.rate.text = String(format: "%f", movie.rating)
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var movie = moviesRepo[movies :indexPath.row]
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "detail") as! DetailViewController
        detailVC.showMovie(movie: movie)
        self.present(detailVC, animated: true, completion: nil)
    }
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        moviesRepo.movies.swapAt(fromIndexPath.row, to.row)
        tableView.reloadData()
    }
    

    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
