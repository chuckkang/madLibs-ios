//
//  AddTextTableViewController.swift
//  angryLibs
//
//  Created by Chucks Mac Book on 11/7/17.
//  Copyright © 2017 Chucks Mac Book. All rights reserved.
//

import UIKit

class AddTextViewController: UIViewController {
    weak var delegate: AddTextViewControllerDelegate?
    var allText: [String?] = []
    
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var thirdText: UITextField!
    @IBOutlet weak var fouthText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        allText.append(firstText.text!)
        allText.append(secondText.text!)
        allText.append(thirdText.text!)
        allText.append(fouthText.text!)
        print(allText, "YTUTYURTYURY")
        delegate?.submitButtonPressed(by: self, allText: allText)
        print("We're in the button pressed")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
