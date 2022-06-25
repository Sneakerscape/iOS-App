//
//  HomeViewController.swift
//  Sneakerscape
//

import UIKit
import Foundation
import AlamofireImage

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
    var shoes = [[String:Any]]()
    var shoeImages = [[String:Any]]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view.
        let headers = [
            "x-rapidapi-key": "4b2bfbee67msh5fe69e4c5e7c37cp1b1f28jsn0edd36618e76",
            "x-rapidapi-host": "the-sneaker-database.p.rapidapi.com"
        ]
        let url = "https://the-sneaker-database.p.rapidapi.com/sneakers?limit=50&sort=releaseDate:asc"
        let request = NSMutableURLRequest(url: NSURL(string: url)! as URL, cachePolicy: .useProtocolCachePolicy,timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest) { (data, response, error) in
            if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                self.shoes = dataDictionary["results"] as! [[String:Any]]
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
             }
        }
        dataTask.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoeCell") as! ShoeCell
        let shoe = shoes[indexPath.row]
        let shoeName = shoe["name"] as! String
        cell.shoeName.text = shoeName
        let shoeBrand = shoe["brand"] as! String
        cell.shoeBrand.text = shoeBrand
        let shoeInfo = shoe["releaseDate"] as! String
        cell.shoeInfo.text = shoeInfo
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)!
        let shoe = shoes[indexPath.row]
        let detailsViewController = segue.destination as! CellDetailViewController
        detailsViewController.shoe = shoe
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
