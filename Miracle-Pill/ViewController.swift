//
//  ViewController.swift
//  Miracle-Pill
//
//  Created by Colin Cook on 1/29/17.
//  Copyright © 2017 Colin Cook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var StatePicker: UIPickerView!
    @IBOutlet weak var StatePickerBtn: UIButton!
    
    let states = ["Alabama","Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota, Mississippi", "Missiouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennslyvania", "Rhode Island", "South Carolina", "South Dakota", "Tennesse", "Texas", "Utah", "Vermont", "Virgina", "Washington", "West Virgina", "Wisconsin", "Wymong" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StatePicker.dataSource = self
        StatePicker.delegate = self
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    @IBAction func StateBtnPressed(_ sender: Any) {
        
        StatePicker.isHidden = false
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        StatePickerBtn.setTitle(states[row], for: UIControlState.normal)
        StatePicker.isHidden = true
    }
        
    }


