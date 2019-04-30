//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Cassidy Pelchat on 4/12/19.
//  Copyright © 2019 Cassidy Pelchat. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var inputC: UITextField!
    @IBOutlet weak var inputF: UILabel!
    
    
    
    @IBAction func gobutton(_ sender: Any) {
        var converted = Int(inputC.text!)
        converted = converted! * 9/5 + 32
        inputF.text = " \(converted!) °F"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
