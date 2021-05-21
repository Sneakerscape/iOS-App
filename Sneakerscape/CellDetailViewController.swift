//
//  CellDetailViewController.swift
//  
//
//  Created by Sebastian on 5/21/21.
//

import UIKit

class CellDetailViewController: UIViewController {
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var shoeImage: UIImageView!
    @IBOutlet weak var shoeBrand: UILabel!
    @IBOutlet weak var showName: UILabel!
    @IBOutlet weak var shoeStory: UILabel!
    @IBOutlet weak var shoePrice: UILabel!
    
    @IBAction func flightClub(_ sender: Any) {
        if let url = NSURL(string: "https://www.flightclub.com/991-made-in-england-bright-green-m991grn") {
            UIApplication.shared.openURL(url as URL)
        }
    }
    @IBAction func goat(_ sender: Any) {
        if let url = NSURL(string: "https://www.goat.com/sneakers/run-90s-white-grey-ee9870") {
            UIApplication.shared.openURL(url as URL)
        }
    }
    var check = false;
    
    @IBAction func button(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func test(_ sender: Any) {
        let toBeLiked = !check
        if (toBeLiked) {
            self.setFavorite(true)
        } else {
            self.setFavorite(false)
        }
    }
    func setFavorite(_ isFavorited:Bool) {
        check = isFavorited
        if (check) {
            likeButton.setImage(UIImage(named:"icons8-star-50 (1)"), for: UIControl.State.normal)
        } else {
            likeButton.setImage(UIImage(named:"icons8-star-50"), for: UIControl.State.normal)
        }
    }
    var shoe: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        shoeBrand.text = shoe["brand"] as? String
        showName.text = shoe["name"] as? String
        shoeStory.text = shoe["story"] as? String
        if shoe["retailPrice"] == nil {
            shoePrice.text = "N/A"
        } else {
            shoePrice.text = shoe["retailPrice"] as? String
        }
        // Do any additional setup after loading the view.
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
