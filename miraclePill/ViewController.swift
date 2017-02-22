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
    
    
    @IBOutlet weak var miraclePillEmoji: UIImageView!
    @IBOutlet weak var mPLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextBox: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTextBox: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextBox: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var hideLabel1: UILabel!
    @IBOutlet weak var hideText1: UITextField!
    @IBOutlet weak var hideLabel2: UILabel!
    @IBOutlet weak var hideText2: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successIndicator: UIImageView!

    
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
    @IBAction func buyNowPressed(_ sender: Any) {
        
        miraclePillEmoji.isHidden = true
        mPLabel.isHidden = true
        priceLabel.isHidden = true
        divider.isHidden = true
        nameLabel.isHidden = true
        nameTextBox.isHidden = true
        addressLabel.isHidden = true
        addressTextBox.isHidden = true
        cityLabel.isHidden = true
        cityTextBox.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        hideLabel1.isHidden = true
        hideText1.isHidden = true
        hideLabel2.isHidden = true
        hideText2.isHidden = true
        buyNowBtn.isHidden = true
        successIndicator.isHidden = false
        
    }
}

