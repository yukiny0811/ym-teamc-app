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
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.reload()
    }
    
    func reload() {
        if let yoyakuData = Util.getNearestYoyaku() {
            let dateDiff = Util.dateDifferenceDay(pastDate: Date(), futureDate: yoyakuData.farm.date)
            dateLabel.text = "あと\(dateDiff)日"
            
            if dateDiff <= 1 {
                imageView.image = UIImage(named: "muscuit1")!
            } else if dateDiff <= 10 {
                imageView.image = UIImage(named: "muscuit2")!
            } else {
                imageView.image = UIImage(named: "muscuit3")!
            }
        }
    }
    
}

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
