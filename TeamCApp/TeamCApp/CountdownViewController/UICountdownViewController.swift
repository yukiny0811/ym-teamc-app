//
//  CountdownViewController.swift
//  TeamCApp
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import UIKit
import TeamCLibrary
import SwiftUI

class UICountdownViewController: UIViewController {
    
    //ここにIBOutletたちをかく
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.reload()
    }
    
    func reload() {
        if let yoyakuData = Util.getNearestYoyaku() {
            //画面表示の処理はここに書く
        }
    }
    
}

//ここはいじらない
struct CountdownView: UIViewRepresentable {
    
    var viewController: UICountdownViewController
    
    init(viewController: UICountdownViewController) {
        self.viewController = viewController
    }
    
    func makeUIView(context: Context) -> some UIView {
        return viewController.view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
