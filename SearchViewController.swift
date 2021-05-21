//
//  SearchViewController.swift
//  Sneakerscape
//
//  Created by Sebastian on 5/21/21.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    let data = ["Asics", "Air Jordan", "Alexander McQueen", "Balenciaga", "Burberry", "Chanel", "Common Projects", "Converse", "Crocs", "Diadora", "DIOR", "Gucci", "Jordan", "Li-Ning", "Louis Vuitton", "New Balance", "Nike", "Off-White", "Prada", "Puma", "Reebok", "Saint Laurent", "Saucony", "Under Armour", "Vans", "Versace", "Yeezy", "Adidas"]
    
    var filteredData: [String]!

        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.dataSource = self
            searchBar.delegate = self
            filteredData = data
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as UITableViewCell
            cell.textLabel?.text = filteredData[indexPath.row]
            return cell
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return filteredData.count
        }
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            filteredData = searchText.isEmpty ? data : data.filter { (item: String) -> Bool in
                return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
            }
            tableView.reloadData()
        }
}
