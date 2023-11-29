//
//  YoyakuViewController.swift
//  TeamCApp
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import UIKit
import TeamCLibrary

class YoyakuViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var furiganaTextField: UITextField!
    @IBOutlet var addressTextField: UITextView!
    @IBOutlet var phoneNumberTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    let farm: FarmData
    let onYoyakuFinish: () -> ()
    
    init(farm: FarmData, onYoyakuFinish: @escaping () -> ()) {
        self.farm = farm
        self.onYoyakuFinish = onYoyakuFinish
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func yoyaku() {
        let yoyakuData = YoyakuData(
            name: nameTextField.text!,
            furigana: furiganaTextField.text!,
            address: addressTextField.text,
            phoneNumber: phoneNumberTextField.text!,
            email: emailTextField.text!,
            farm: farm
        )
        Util.newYoyaku(yoyakuData: yoyakuData)
        Util.showDrop("予約が完了しました！")
        onYoyakuFinish()
        self.dismiss(animated: true)
    }
    
}
