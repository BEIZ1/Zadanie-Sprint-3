//
//  ViewController.swift
//  Zadanie Sprint 3
//
//  Created by Ильгиз Хабибуллин on 24/10/2023.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    // - MARK: - Переменные
    private var clicks: Int = 0
    private var logs: [String] = []

    // - MARK: - Outlet
   
    @IBOutlet weak var Counter: UILabel!
    @IBOutlet weak var losOnConter: UITextView!
    
    // - MARK: - Func
    
        
    func logsOnTextView(){
        let data = Date()
        losOnConter.text += "Значение было изменино на \(clicks) Время: \(data)" + "\n"
    }

    // - MARK: - Action
    
    @IBAction func buttonEraser(_ sender: Any) {
        clicks = 0
        Counter.text = "Значение счетчика: \(clicks)"
        logsOnTextView()
    }
    @IBAction func buttonMinus(_ sender: Any) {
        if clicks > 0{
            clicks -= 1
            Counter.text = "Значение счетчика: \(clicks)"
            logsOnTextView()
        }else{
            Counter.text = "Ошибка: Значение счетчика не может быть меньше \(clicks)"
        }
    }
    @IBAction func buttonPlus(_ sender: Any) {
        clicks += 1
        Counter.text = "Значение счетчика: \(clicks)"
        logsOnTextView()
    }
    @IBAction func buttonOnClick(_ sender: Any) {
        clicks += 1
        Counter.text = "Значение счетчика: \(clicks)"
        logsOnTextView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        losOnConter.isEditable = false
        losOnConter.scrollsToTop = true
    }


}

