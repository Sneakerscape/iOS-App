//
//  HomeViewController.swift
//  Sneakerscape
//
//  Created by Sebastian on 5/20/21.
//

import UIKit
import Foundation

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
    var shoes = [[String:Any]]()
    
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
        let request = NSMutableURLRequest(url: NSURL(string: "https://the-sneaker-database.p.rapidapi.com/sneakers?limit=10")! as URL, cachePolicy: .useProtocolCachePolicy,timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest) { (data, response, error) in
             if let error = error {
                    print(error.localizedDescription)
             } else if let data = data {
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
        let cell = UITableViewCell()
        let shoe = shoes[indexPath.row]
        let shoeTitle = shoe["name"] as! String
        cell.textLabel!.text = shoeTitle
        return cell
    }
}
