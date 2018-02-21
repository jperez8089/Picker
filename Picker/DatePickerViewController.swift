//
//  DatePickerViewController.swift
//  Picker
//
//  Created by Javier Perez on 2/21/18.
//  Copyright © 2018 Javier Perez. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onButtonPressed(_ sender: UIButton) {
        
        let date = datePicker.date
        let message = "the date and time you selected is \(date)"
        let alert = UIAlertController(title: "Date and time selected", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "That is so true!", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion:nil)
    }
}
