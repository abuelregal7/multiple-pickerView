//
//  ViewController.swift
//  multiple pickerView
//
//  Created by Ahmed abu elregal on 11/18/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var selected : Int!
    
    var boysNames : [String] = ["Ahmed","mohameed","Ramy","Yaseen","Adam","Essam","Kamel","Samier"]
    var girlsNames : [String] = ["Gehan","menna","fatema","Shreen","Nagat","Eman","Rania","Walaa"]
    
    @IBOutlet weak var namesOfBoys: UIPickerView!
    @IBOutlet weak var namesOfGirls: UIPickerView!
    
    override func viewDidLoad() {
        
        namesOfBoys.dataSource = self
        namesOfBoys.delegate = self
        namesOfGirls.dataSource = self
        namesOfGirls.delegate = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (selected == 0)
        {
            return boysNames.count
        }
        else
        {
            return girlsNames.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView == self.namesOfBoys)
        {
            return "\(boysNames[row])"
        }
        else if (pickerView == self.namesOfGirls)
        {
            return "\(girlsNames[row])"
        }
        else {
            return "0"
        }
    }


}

