//
//  ViewController.swift
//  matthew_MAPD714_Test_practise
/*
    Name: Matthew Maxwell
    id: 301200258
    wed oct 28
 */
//  Created by maxwell on 2021-10-28.
//

import UIKit

class ViewController: UIViewController
{
    //userdefault is a inbuilt method used to save data on a device
    let userDefaults = UserDefaults.standard
    var listArray: [String] = []
    
    //keeps track of the first press of each stepper, first press appends number second replaces number
    var step1Check = true
    var step2Check = true
    var step3Check = true
    var step4Check = true
    var step5Check = true
    
    //textfields declaration
    @IBOutlet weak var item1: UITextField!
    @IBOutlet weak var item2: UITextField!
    @IBOutlet weak var item3: UITextField!
    @IBOutlet weak var item4: UITextField!
    @IBOutlet weak var item5: UITextField!
    @IBOutlet weak var listName: UITextField!
    //steppers
    @IBOutlet weak var item1Step: UIStepper!
    @IBOutlet weak var item2Step: UIStepper!
    @IBOutlet weak var item3Step: UIStepper!
    @IBOutlet weak var item4Step: UIStepper!
    @IBOutlet weak var item5Step: UIStepper!
    //buttons
    @IBOutlet weak var saveBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //action for buttons
    @IBAction func saveArray(_ sender: UIButton)
    {
        saveToDevice()
    }
    
    
    
    //Actions for steppers.
    @IBAction func stepperItem1(_ sender: UIStepper)
    {
        let value = Int(sender.value)
        stepperChecker(value: value, tf: item1, stepCheck: 1)
    }
    @IBAction func stepperItem2(_ sender: UIStepper)
    {
        let value = Int(sender.value)
        stepperChecker(value: value, tf: item2, stepCheck: 2)
    }
    @IBAction func stepperItem3(_ sender: UIStepper)
    {
        let value = Int(sender.value)
        stepperChecker(value: value, tf: item3, stepCheck: 3)
    }
    @IBAction func stepperItem4(_ sender: UIStepper)
    {
        let value = Int(sender.value)
        stepperChecker(value: value, tf: item4, stepCheck: 4)
    }
    @IBAction func stepperItem5(_ sender: UIStepper)
    {
        let value = Int(sender.value)
        stepperChecker(value: value, tf: item5, stepCheck: 5)
    }

    
    
    //controls how steppersappend values to textfield
    func stepperChecker(value: Int, tf: UITextField, stepCheck: Int)
    {
        let stepCheck = stepCheck
        
        //turns off the appropriate stepChecker, meaning that that stepper had been pressed atleast once before.
        //for every press besides the first stepper removes the last number and adds the new value
        if(stepCheck == 1)
        {
            if (step1Check == true)
            {
                // first time stepper is pressed, only appends number
                item1.text?.append(String(value))
                chooseStepChecker(stepCheck: stepCheck)
            }
            else
            {
                //second and after stepper replaces last number
                item1.text?.removeLast()
                item1.text?.append(String(value))
            }
        }
        else if(stepCheck == 2)
        {
            if (step2Check == true)
            {
                // first time stepper is pressed, only appends number
                item2.text?.append(String(value))
                chooseStepChecker(stepCheck: stepCheck)
            }
            else
            {
                //second and after stepper replaces last number
                item2.text?.removeLast()
                item2.text?.append(String(value))
            }
            
        }
        else if(stepCheck == 3)
        { if (step3Check == true)
            {
            // first time stepper is pressed, only appends number
                item3.text?.append(String(value))
                chooseStepChecker(stepCheck: stepCheck)
            }
            else
            {
                //second and after stepper replaces last number
                item3.text?.removeLast()
                item3.text?.append(String(value))
            }
        }
        else if(stepCheck == 4)
        {
            if (step4Check == true)
            {
                // first time stepper is pressed, only appends number
                item4.text?.append(String(value))
                chooseStepChecker(stepCheck: stepCheck)
            }
            else
            {
                //second and after stepper replaces last number
                item4.text?.removeLast()
                item4.text?.append(String(value))
            }
        }
        else if(stepCheck == 5)
        {
            if (step5Check == true)
            {
                // first time stepper is pressed, only appends number
                item5.text?.append(String(value))
                chooseStepChecker(stepCheck: stepCheck)
            }
            else
            {
                //second and after stepper replaces last number
                item5.text?.removeLast()
                item5.text?.append(String(value))
            }
        }
       
    }
    
    
    //changes the appropriate bool stepper checker value after it has been changed for the first time
    func chooseStepChecker(stepCheck: Int)
    {
        let stepCheck = stepCheck
        if (stepCheck == 1)
        {
            step1Check = false
        }
        else if (stepCheck == 2)
        {
            step2Check = false
        }
        else if (stepCheck == 3)
        {
            step3Check = false
        }
        else if (stepCheck == 4)
        {
            step4Check = false
        }
        else if (stepCheck == 5)
        {
            step5Check = false
        }
    }
    
    //saves user data in persistent storage using userDefualts
    func saveToDevice()
    {
        //create array and saves details with the key as the listname
        listArray = [listName.text!, item1.text! , item2.text!, item3.text!, item4.text!, item5.text!]
        userDefaults.set(listArray, forKey: "list")
        
        
        //show saved info
        let retreivedList = userDefaults.object(forKey: "list") as? [String]
        
        //save values from array
        let lName = String(retreivedList![0])
        let item1 = String(retreivedList![1])
        let item2 = String(retreivedList![2])
        let item3 = String(retreivedList![3])
        let item4 = String(retreivedList![4])
        let item5 = String(retreivedList![5])
        
        //displays retreived values to user
        let alert = UIAlertController(title: lName, message: item1 + "\n" + item2 + "\n" + item3 + "\n"  +  item4 + "\n" + item5, preferredStyle: .alert)
        self.present(alert, animated: true)
    }
}

