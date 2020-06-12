//
//  ResultsViewController.swift
//  Zodiac
//
//  Created by Damnjan Markovic on 01/06/2020.
//  Copyright © 2020 Damnjan Markovic. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var personSign: String?
    var personSignImage: UIImage?
    
    
    @IBOutlet weak var lblZodiacSign: UILabel!
    @IBOutlet weak var imageZodiacSign: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblZodiacSign.text = personSign
        imageZodiacSign.image = personSignImage

    }

    @IBAction func btnDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
