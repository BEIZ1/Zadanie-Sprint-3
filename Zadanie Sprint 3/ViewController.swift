//
//  ViewController.swift
//  Zadanie Sprint 3
//
//  Created by Ильгиз Хабибуллин on 24/10/2023.
//

import UIKit

class ViewController: UIViewController {

    private var clicks: Int = 0
    
    @IBOutlet weak var Counter: UILabel!
    
    @IBAction func buttonOnClick(_ sender: Any) {
        clicks += 1
        Counter.text = "Значение счетчика: \(clicks)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

