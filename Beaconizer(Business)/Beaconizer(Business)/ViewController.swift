//
//  ViewController.swift
//  Beaconizer(Business)
//
//  Created by Gagandeep Nagpal on 29/12/16.
//  Copyright © 2016 Gagandeep Nagpal. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource ,UITextFieldDelegate{
    

    @IBOutlet weak var dataUpdate: UILabel!
    
    
    @IBOutlet weak var pickerview1: UIPickerView!
     var items = ["Tees","Jeans","Trousers","Jackets"]

    @IBOutlet weak var pickerView2: UIPickerView!
    
    var discounts = ["nil","10","20","30","40","50","60","70","80","90","100"]
    
    
    var finalDiscount :String = "", finalItem:String = ""
        
    @IBOutlet weak var customMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.pickerview1.dataSource = self
        self.pickerview1.delegate = self
        
        self.pickerView2.delegate = self
        self.pickerView2.dataSource = self
        
        self.customMessage.delegate = self
        
        dataUpdate.alpha = 0;
        
        

    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if(pickerView == pickerview1){
        return items[row]
            
        }
        
        else{
        
            return String(describing: self.discounts[row])}
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if(pickerView == pickerview1){
        return items.count
        }
        else{
            return discounts.count}
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        
        if(pickerView == pickerview1){
            
          finalItem = items[row]
            
            print(finalItem)
            
        }
        else if(pickerView == pickerView2){
            
            finalDiscount =  discounts[row]
            print(finalDiscount)
        }
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }

    
    
   
    @IBAction func update(_ sender: Any) {
        
        if customMessage.text == nil{
            
            let msg = finalDiscount + "% off on " + finalItem + " at CK Jeans, 2nd Floor."
            
            print(msg)
            
        }else{
            
            print(customMessage)
            
        }
        
        dataUpdate.alpha = 1
        
      /*  var ref: FIRDatabaseReference!
        
        ref = FIRDatabase.database().reference()

        
        ref.child("users").child(user.uid).setValue(["items": finalItem])
        ref.child("users").child(user.uid).setValue(["discount": finalDiscount])*/
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

