//
//  CalendarViewController.swift
//  OneDriveCam
//
//  Created by Travis Brigman on 2/29/20.
//  Copyright © 2020 Travis Brigman. All rights reserved.
//

import UIKit

import UIKit

class CalendarViewController: UIViewController {

    @IBOutlet var calendarJSON: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        // TEMPORARY
        calendarJSON.text = "Calendar"
        calendarJSON.sizeToFit()
    }
}
