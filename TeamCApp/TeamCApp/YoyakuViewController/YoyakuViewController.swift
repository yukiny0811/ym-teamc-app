//
//  YoyakuViewController.swift
//  TeamCApp
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import UIKit
import TeamCLibrary

class YoyakuViewController: UIViewController {
    
    //ここにIBOutletたちをかく
    
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
    
    //ここにIBActionを書く
    
}
