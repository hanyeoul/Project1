//
//  recipeViewController.swift
//  project
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class recipeViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var commentTextField: UITextField!
    @IBOutlet var commentDisplayLabel: UILabel!
    @IBOutlet var reviewPicker: UIPickerView!
    @IBOutlet var reviewLabel: UILabel!
    @IBOutlet var processLabe: UILabel!
    
    var text: String = ""
    let reviewArray: Array<String> = ["최고예요", "좋아요", "무난해요", "그저그래요", "별로예요" ]
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //delegate method
        commentTextField.resignFirstResponder()
        return true }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return reviewArray.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return reviewArray[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        processLabe.text = text

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonDispaly(_ sender: Any) {
        let comments = commentTextField.text!
        commentDisplayLabel.text = "\(comments)"
    }
    
    @IBAction func reivewButton(_ sender: Any) {
        let review: String = reviewArray[self.reviewPicker.selectedRow(inComponent: 0)]
        reviewLabel.text = review
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
