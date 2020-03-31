# RadioButton
An easy way to implement RadioButtons in Swift

## Features
* Create RadioButtons in iOS
* Customize the RadioButtons:
  * Colors
  * Width
* Optional Controller
  
## Requirements
* iOS 9+
* Swift 4+

## Installation
`pod 'GARRadioButton', '~> 1.0'`

## Example

1. Create an UIButton
2. Go to Identity Inspector and set RadioButton as **Class** and GARRadioButton as **Module**
<center>
 
![How to set RadioButton](https://github.com/chibombo/RadioButton/blob/ReadmeResources/Resources/Setup_RadioButton2.png "How to set RadioButton")

</center>

3. Go to Attributes Inspector and del delete the **Default Title**
![How to set RadioButton](https://github.com/chibombo/RadioButton/blob/ReadmeResources/Resources/Setup_RadioButton.png "How to set RadioButton")

4. Set **IBOutlets** in the ViewController

5. ViewController
```
import UIKit
import GARRadioButton
class ViewController: UIViewController {

    @IBOutlet weak var radioButtonOne: RadioButton!
    @IBOutlet weak var radioButtonTwo: RadioButton!
    
    var radioController: RadioButtonController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let arrRadioButtons: [RadioButton] = [radioButtonOne, radioButtonTwo]
        radioController = RadioButtonController(arrRadioButton: arrRadioButtons)
    }
}

extension ViewController: RadioButtonControllerDelegate {
    
    func radioButton(_ radioButtonController: RadioButtonController, radioButton changed: RadioButton) {
        
    }
}
```
