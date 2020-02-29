//
//  WelcomeViewController.swift
//  OneDriveCam
//
//  Created by Travis Brigman on 2/27/20.
//  Copyright © 2020 Travis Brigman. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userProfilePhoto: UIImageView!
    @IBOutlet var userDisplayName: UILabel!
    @IBOutlet var userEmail: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        // TEMPORARY
        self.userProfilePhoto.image = UIImage(imageLiteralResourceName: "DefaultUserPhoto")
        self.userDisplayName.text = "Default User"
        self.userEmail.text = "default@contoso.com"
    }

    @IBAction func signOut() {
        self.performSegue(withIdentifier: "userSignedOut", sender: nil)
    }
}
