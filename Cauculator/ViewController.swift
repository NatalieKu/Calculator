//
//  ViewController.swift
//  Cauculator
//
//  Created by MEI KU on 2017/9/7.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numbersOnScreen:Double = 0
    var previousNumber:Double = 0
    var performingMath = false
    var operation = 0
    
    @IBOutlet weak var clear: UILabel!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbersButton(_ sender: UIButton) {
        clear.isHidden = true
      if performingMath == true {
            label.text = String(sender.tag-1)
            numbersOnScreen = Double(label.text!)!
            performingMath = false
        }
        else {
        label.text = label.text! + String(sender.tag-1)
        numbersOnScreen = Double(label.text!)!
        }
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        clear.isHidden = true
        if label.text != "" && sender.tag != 16 {
            
     previousNumber = Double(label.text!)!
         /*
            if sender.tag == 12
            {
                label.text = "/"
            }
            else if sender.tag == 13 {
                 label.text = "*"
            }
                
            else if sender.tag == 14 {
                label.text = "-"

            }

            else if sender.tag == 15 {
                label.text = "+"
            }
            
 */
       if sender.tag == 17 {
                
                label.text = String(Double(label.text!)! / 100 )
                
            }
            
            else if sender.tag == 11 {
            
                label.text =  String(-Double(label.text!)!)
            
            }
            
      
            
            
     operation = sender.tag
    performingMath = true
        }
       else if sender.tag == 16 {
            if operation == 12 {
                label.text = String(previousNumber / numbersOnScreen)
            }
           else if operation == 13 {
                label.text = String(previousNumber * numbersOnScreen)
            }
            else if operation == 14 {
                label.text = String(previousNumber - numbersOnScreen)
            }
            if operation == 15 {
                label.text = String(previousNumber + numbersOnScreen)
            }
            
            
            }

            
        }
        
        


    
    @IBAction func clearButton(_ sender: UIButton) {
 
       label.text = ""
        clear.isHidden = false
        
    
    }
    

    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

