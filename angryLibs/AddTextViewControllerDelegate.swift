//
//  File.swift
//  angryLibs
//
//  Created by Chucks Mac Book on 11/7/17.
//  Copyright © 2017 Chucks Mac Book. All rights reserved.
//

import UIKit

protocol AddTextViewControllerDelegate: class {
    func submitButtonPressed(by controller: AddTextViewController, allText arrText: [String?])
}
