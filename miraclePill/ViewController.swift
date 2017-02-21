//
//  ViewController.swift
//  miraclePill
//
//  Created by Brandyn Burgett on 2/19/17.
//  Copyright © 2017 Brandyn Burgett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["Alabama","Arkansas","Alaska"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var hideLabel1: UILabel!
    @IBOutlet weak var hideText1: UITextField!
    @IBOutlet weak var hideLabel2: UILabel!
    @IBOutlet weak var hideText2: UITextField!
    
    @IBAction func statePickerBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        hideLabel1.isHidden = true
        hideText1.isHidden = true
        hideLabel2.isHidden = true
        hideText2.isHidden = true
        
        
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
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        hideLabel1.isHidden = false
        hideText1.isHidden = false
        hideLabel2.isHidden = false
        hideText2.isHidden = false
    }
}

