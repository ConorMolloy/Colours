//
//  ViewController.swift
//  Colours
//
//  Created by Conor Molloy on 25/05/2018.
//  Copyright © 2018 Conor Molloy. All rights reserved.
//

import UIKit

class ColourPresenterVC: UIViewController, ColourTransferDelegate {
    
    @IBOutlet weak var colourNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidChoose(colour: UIColor, withName colourName: String) {
        view.backgroundColor = colour
        colourNameLabel.text = colourName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColourPickerVC"{
            guard let colourPickerVC = segue.destination as? ColourPickerVC else { return }
            colourPickerVC.delegate = self
        }
    }


}

