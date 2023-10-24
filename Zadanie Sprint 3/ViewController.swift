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
    
    @IBAction func buttonEraser(_ sender: Any) {
        clicks = 0
        Counter.text = "Значение счетчика: \(clicks)"
    }
    @IBAction func buttonMinus(_ sender: Any) {
        if clicks > 0{
            clicks -= 1
            Counter.text = "Значение счетчика: \(clicks)"
        }else{
            Counter.text = "Ошибка: Значение счетчика не может быть меньше \(clicks)"
        }
    }
    @IBAction func buttonPlus(_ sender: Any) {
        clicks += 1
        Counter.text = "Значение счетчика: \(clicks)"
    }
    @IBAction func buttonOnClick(_ sender: Any) {
        clicks += 1
        Counter.text = "Значение счетчика: \(clicks)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

