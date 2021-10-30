//
//  ViewController.swift
//  matthew_MAPD714_Test_practise
/*
    Name: Matthew Maxwell
    id: 301200258
    wed oct 28
 */
//  Created by javon maxwell on 2021-10-28.
//

import UIKit

class ViewController: UIViewController
{
    //value changes once code runs
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
    //steppers
    @IBOutlet weak var item1Step: UIStepper!
    @IBOutlet weak var item2Step: UIStepper!
    @IBOutlet weak var item3Step: UIStepper!
    @IBOutlet weak var item4Step: UIStepper!
    @IBOutlet weak var item5Step: UIStepper!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //Actions for steppers
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

    //controls how steppers display values to screen
    func stepperChecker(value: Int, tf: UITextField, stepCheck: Int)
    {
        let stepCheck = stepCheck
        
        //turns off the appropriate stepChecker, meaning that that stepper had been pressed atleast once before
        chooseStepChecker(stepCheck: stepCheck)
        
        if(stepCheck == 1)
        {
            if (step1Check == true)
            {
                item1.text?.append(String(value))   // first time stepper i pressed, only appends niumber
            }
            else
            {
                item1.text?.removeLast()
                item1.text?.append(String(value))
            }
        }
        else if(stepCheck == 2)
        {
            if (step2Check == true)
            {
                item2.text?.append(String(value))   // first time stepper i pressed, only appends niumber
            }
            else
            {
                item2.text?.removeLast()
                item2.text?.append(String(value))
            }
            
        }
        else if(stepCheck == 3)
        { if (step3Check == true)
            {
                item3.text?.append(String(value))   // first time stepper i pressed, only appends niumber
            }
            else
            {
                item3.text?.removeLast()
                item3.text?.append(String(value))
            }
        }
        else if(stepCheck == 4)
        { if (step4Check == true)
            {
                item4.text?.append(String(value))   // first time stepper i pressed, only appends niumber
            }
            else
            {
                item4.text?.removeLast()
                item4.text?.append(String(value))
            }
        }
        else if(stepCheck == 5)
        {
            if (step5Check == true)
            {
                item5.text?.append(String(value))   // first time stepper i pressed, only appends niumber
            }
            else
            {
                item5.text?.removeLast()
                item5.text?.append(String(value))
            }
        }
        //for every press besides the first stepper removes the last number and adds the new value
       
    }
    
    //changes the appropriate value after it has been changed for the first time
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
}

