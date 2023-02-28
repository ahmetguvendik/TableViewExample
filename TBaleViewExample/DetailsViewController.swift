//
//  DetailsViewController.swift
//  TBaleViewExample
//
//  Created by Ahmet GÜVENDİK on 28.02.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    var detailText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = detailText
        // Do any additional setup after loading the view.
    }
    

   

}
