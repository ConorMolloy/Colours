//
//  ColourPickerVC.swift
//  Colours
//
//  Created by Conor Molloy on 25/05/2018.
//  Copyright © 2018 Conor Molloy. All rights reserved.
//

import UIKit

class ColourPickerVC: UIViewController {
    
    var delegate: ColourTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func colourButtonPressed(sender: UIButton) {
        //print(sender.titleLabel?.text)
        if delegate != nil {
            delegate?.userDidChoose(colour: sender.backgroundColor!, withName: (sender.titleLabel?.text)!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
