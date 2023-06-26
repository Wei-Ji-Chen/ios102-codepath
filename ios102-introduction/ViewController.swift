//
//  ViewController.swift
//  ios102-introduction
//
//  Created by Wei Ji Chen on 6/25/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstnametextfield: UITextField!
    @IBOutlet weak var lastnametextfield: UITextField!
    @IBOutlet weak var schooltextfield: UITextField!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var numOfPetsLabel: UILabel!
    
   
   
    @IBOutlet weak var yearsegmentedcontrol: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {

          numOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
    
            // Lets us choose the title we have selected from the segmented control
            // In our example that is whether it is first, second, third or forth
            let year = yearsegmentedcontrol.titleForSegment(at: yearsegmentedcontrol.selectedSegmentIndex)
            
            // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
            let introduction = "My name is \(firstnametextfield.text!) \(lastnametextfield.text!) and I attend \(schooltextfield.text!). I am currently in my \(year!) year and I own \(numOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
            
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
            
            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
            
        }

}

