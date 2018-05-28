//
//  AddDistanceViewViewController.swift
//  Sprint
//
//  Created by Chase Owens on 4/23/18.
//  Copyright © 2018 Chase Owens. All rights reserved.
//

import UIKit

class AddDistanceViewViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    @IBOutlet weak var addSprintLabel: UILabel!
    @IBOutlet weak var distancePicker: UIPickerView!
    

    
    
    
    
    
    let hundreds = [0, 100, 200, 300]
    let tens = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99]
    let metric = ["Yards", "Meters"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        distancePicker.delegate = self
        distancePicker.dataSource = self
        distancePicker.tintColor = UIColor.white
        self.view.backgroundColor = UIColor.darkText
        self.view.tintColor = UIColor.white

        // Do any additional setup after loading the view.
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return hundreds.count
        } else if component == 1 {
            return tens.count
        } else {
            return metric.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return String(hundreds[row])
        } else if component == 1 {
            return String(tens[row])
        } else {
            return metric[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 30
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var label: UILabel
        if let view = view as? UILabel {
            label = view
        } else {
            label = UILabel()
        }
        
        if component == 0 {
            label.text = String(hundreds[row])
            label.textAlignment = .right
        } else if component == 1 {
            label.text = String(tens[row])
            label.textAlignment = .center
        } else {
            label.text = metric[row]
            label.textAlignment = .left
        }
        
        label.font = UIFont(name: "Helvetica Neue", size: 22)
        label.textColor = UIColor.white
        return label
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

}
