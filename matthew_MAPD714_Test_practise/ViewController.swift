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
        stepperChecker(value: value, tf: item1, stepCheck: step1Check)
    }
    
    @IBAction func stepperItem2(_ sender: UIStepper)
    {
        let value = Int(sender.value)
        stepperChecker(value: value, tf: item2, stepCheck: step2Check)
    }

    @IBAction func stepperItem3(_ sender: UIStepper)
    {
        let value = Int(sender.value)
        stepperChecker(value: value, tf: item3, stepCheck: step3Check)
    }
    
    @IBAction func stepperItem4(_ sender: UIStepper)
    {
        let value = Int(sender.value)
        stepperChecker(value: value, tf: item4, stepCheck: step4Check)
    }
    @IBAction func stepperItem5(_ sender: UIStepper)
    {
        let value = Int(sender.value)
        stepperChecker(value: value, tf: item5, stepCheck: step5Check)
    }

    //controls how steppers display values to screen
    func stepperChecker(value: Int, tf: UITextField, stepCheck: Bool)
    {
        var stepCheck = stepCheck
        // first time stepper i pressed, only appends niumber
        if (stepCheck == true)
        {
            tf.text?.append(String(value))
            stepCheck = false
        }
        //for every press besides the first stepper removes the last number and adds the new value
        else
        {
            tf.text?.removeLast()
            tf.text?.append(String(value))
        }
    }
}

