//
//  PrideViewController.swift
//  Sneakerscape
//
//  Created by Sebastian on 5/21/21.
//

import UIKit

class PrideViewController: UIViewController {
    
    
    @IBOutlet weak var likeButton: UIButton!
    var check = false;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
