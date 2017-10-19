//
//  ViewController.swift
//  Spot On Sugars
//
//  Created by Luc Fewer II on 10/5/17.
//  Copyright © 2017 Lucas Fewer II. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    
    //MARK: Properties
    @IBOutlet weak var ReadingInputField: UITextField!
    @IBOutlet weak var CarbsInputField: UITextField!
    @IBOutlet weak var BolusInputField: UITextField!
    @IBOutlet weak var GlucoseReadingLabel: UILabel!
    @IBOutlet weak var SendToHealthApp: UIButton!
    @IBOutlet weak var ReadingDisplay: UILabel!
    @IBOutlet weak var CarbsDisplay: UILabel!
    @IBOutlet weak var BolusDisplay: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Handle the Reading text field’s user input through delegate callbacks.
        ReadingInputField.delegate = self
        CarbsInputField.delegate = self
        BolusInputField.delegate = self
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    // pickerView Slot-Wheel array set
    let pickerData = ["Wake", "Breakfast", "1 Hour After Breakfast", "Lunch", "1 Hour After Lunch", "Dinner", "1 Hour After Dinner", "Bed", "Prior To Workout", "Post Workout", "Snack", "1 Hour After Snack", "Felt Low", "Felt High", "Miscellaneous" ]
    
    
    //MARK: Linking UIPicker to Data and Values
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    
    //MARK: UITextFieldDelegate / READING
    func textFieldShouldReturn(_ ReadingInputField: UITextField) -> Bool {
         // Hide the keyboard.
        ReadingInputField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
            ReadingDisplay.text = "Reading: " + ReadingInputField.text!
            CarbsDisplay.text = "Carbs: " + CarbsInputField.text!
            BolusDisplay.text = "Bolus: " + BolusInputField.text!
    }
    
    
    //MARK: Actions
    @IBAction func ClearInputFieldsButton(_ sender: UIButton) {
        ReadingInputField.text = ""
        CarbsInputField.text = ""
        BolusInputField.text = ""
    }
    
    
}
