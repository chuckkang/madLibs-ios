//
//  ViewController.swift
//  angryLibs
//
//  Created by Chucks Mac Book on 11/7/17.
//  Copyright © 2017 Chucks Mac Book. All rights reserved.
//

import UIKit

class AngryLibsViewController: UIViewController, AddTextViewControllerDelegate {
    @IBOutlet weak var madLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .white
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func unwindBack(segue:UIStoryboardSegue) {
        
        print("hello")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Juan's solution:  don't forget to add this when doing protocols.
        // the delegate has not been created yet so you need to create the connection first.
        // this ia also because we are using the navigation control to do this.
        
        let view = segue.destination as! UINavigationController
        let addTextTableViewController = view.topViewController as! AddTextViewController
        addTextTableViewController.delegate = self;
        
    }
    func submitButtonPressed(by controller: AddTextViewController, allText arrText: [String?]) {
        madLabel.text = "We are having a \(String(arrText[1]!)) \(arrText[1]!)time."
        dismiss(animated: true, completion: nil)
    }
}

