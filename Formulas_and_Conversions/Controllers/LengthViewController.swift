//
//  LengthViewController.swift
//  Formulas_and_Conversions
//
//  Created by Rohan Venkat on 8/6/22.
//

import UIKit

class LengthViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var invalidLabel: UILabel!
    
    @IBOutlet weak var inputOptions: UIPickerView!
    
    public var pickerData: [[String]] = [[String]]()
    
    public var inputValue: Double = 0.0
    
    public var inputUnit: String = "Kilometer"
    
    public var outputUnit: String = "Kilometer"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connect data:
        self.inputOptions.delegate = self
        self.inputOptions.dataSource = self
        
        pickerData = [["Kilometer", "Meter", "Centimeter", "Millimeter", "Mile", "Yard", "Foot", "Inch"], ["Kilometer", "Meter", "Centimeter", "Millimeter", "Mile", "Yard", "Foot", "Inch"]]
        
        

        // Do any additional setup after loading the view.
    }
    
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData[component].count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
    
    // This method is triggered whenever the user makes a change to the picker selection.
    // The parameter named row and component represents what was selected.
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        // inputAmount clear
        // outputLabel clear
        
        inputUnit = pickerData[0][inputOptions.selectedRow(inComponent: 0)]
        outputUnit = pickerData[1][inputOptions.selectedRow(inComponent: 1)]
        
        print("Input: " + inputUnit)
        print("Output: " + outputUnit)
    }
    
    func selectedRow(inComponent component: Int) -> Int {
        return component
    }
    
    @IBAction func inputAmount(_ sender: UITextField) {
        // let amount = inputText.text!
        
        if let potential = Double(inputText.text!) {
            invalidLabel.text = ""
            // outputLabel.text = ""
            inputValue = potential
        } else {
            // set invalid label = invalid amount
            invalidLabel.text = "Invalid Amount"
        }
        
    }
    
    @IBAction func convertPressed(_ sender: UIButton) {
        if let potential = Double(inputText.text!) {
            invalidLabel.text = ""
            inputValue = potential
            
            let toConvert = Converter(inputVal: inputValue, inputU: inputUnit, outputU: outputUnit, conversionSetting: "length")
            
            let amount = toConvert.convert()
            
            outputLabel.text = String(amount)
            
        } else {
            // set invalid label = invalid amount
            invalidLabel.text = "Invalid Amount"
        }
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        inputText.text = ""
        outputLabel.text = ""
        invalidLabel.text = ""
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
