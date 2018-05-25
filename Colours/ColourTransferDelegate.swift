//
//  ColourTransferDelegate.swift
//  Colours
//
//  Created by Conor Molloy on 25/05/2018.
//  Copyright © 2018 Conor Molloy. All rights reserved.
//

import Foundation
import UIKit

protocol ColourTransferDelegate {
    func userDidChoose(colour: UIColor, withName: String)
}
