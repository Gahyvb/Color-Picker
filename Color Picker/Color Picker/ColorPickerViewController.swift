//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Geoffrey Husser on 11/15/17.
//  Copyright © 2017 Geoffrey Husser. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    
    
    override func viewDidLoad() {
        var initialColor = 0
        pickerView.selectRow(0, inComponent: 0, animated: true)
        if(initialColor == 0){
            self.view.backgroundColor = UIColor.red
            label.text = "Red"
            initialColor += 1
        }
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row]
        if(row == 0){
            self.view.backgroundColor = UIColor.red
            
        }
        if(row == 1){
            self.view.backgroundColor = UIColor.orange
        }
        if(row == 2){
            self.view.backgroundColor = UIColor.yellow
        }
        if(row == 3){
            self.view.backgroundColor = UIColor.green
        }
        if(row == 4){
            self.view.backgroundColor = UIColor.blue
        }
        if(row == 5){
            self.view.backgroundColor = UIColor.purple
        }
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
