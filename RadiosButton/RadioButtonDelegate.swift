//
//  RadioButtonDelegate.swift
//  RadiosButton
//
//  Created by Luis Genaro Arvizu Vega on 28/03/20.
//  Copyright © 2020 Luis Genaro Arvizu Vega. All rights reserved.
//

import UIKit

public protocol RadioButtonDelegate: class {
    func radioButtonSelected(_ button: RadioButton, status: Bool) -> Void
}
