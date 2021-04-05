//
//  ViewController.swift
//  SelectedButton
//
//  Created by HoangKimToi on 4/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var buttons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func didTouchButton(_ sender: UIButton){
        buttons.isSelectedAll(sender)
    }

}

