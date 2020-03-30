//
//  RadioButtonController.swift
//  RadiosButton
//
//  Created by Luis Genaro Arvizu Vega on 28/03/20.
//  Copyright © 2020 Luis Genaro Arvizu Vega. All rights reserved.
//

import UIKit

public protocol RadioButtonControllerDelegate: class {
    
    /// Is called when the user tapped an radiobutton and other radiobutton was deselected
    /// - Parameters:
    ///   - radioButtonController: RadioButtonController
    ///   - changed: RadioButton that the user tapped.
    func radioButton(_ radioButtonController: RadioButtonController, radioButton changed: RadioButton)
}

public class RadioButtonController {
    
    public weak var delegate: RadioButtonControllerDelegate?
    
    public var arrRadioButton: [RadioButton] = [RadioButton]()
    
    public init(arrRadioButton: [RadioButton]) {
        self.arrRadioButton = arrRadioButton
        setupRadioButtons()
    }
    
    /// Deselect all RadioButtons except the one you pass by parameter
    /// - Parameter radioButtonSelected: RadioButton that the user tapped or the programmer w
    public func deselectRadioButtons(_ radioButtonSelected: RadioButton) {
        for radioButton in arrRadioButton {
            if radioButton != radioButtonSelected {
                radioButton.isSelected = false
            }
        }
    }
    
    
    /// This method setup all radiobutton from the array arrRadioButton
    public func setupRadioButtons() {
        for radioButton in arrRadioButton {
            radioButton.delegate = self
        }
    }
}

extension RadioButtonController: RadioButtonDelegate {
    public func radioButtonSelected(_ button: RadioButton, status: Bool) {
        self.deselectRadioButtons(button)
        self.delegate?.radioButton(self, radioButton: button)
    }
}
