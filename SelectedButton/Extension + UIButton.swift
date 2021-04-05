//
//  Extension + UIButton.swift
//  SelectedButton
//
//  Created by HoangKimToi on 4/5/21.
//

import UIKit

extension Array where Element: UIButton {
    func selectedAt(button: UIButton) {
        forEach({
            if $0 == button {
                $0.isSelected = !button.isSelected
            }
        })
    }
    
    private var isSelectedAll: Bool {
        let firstButton = self.first!
        let buttons = self.filter({$0 != firstButton})
        return buttons.allSatisfy{ $0.isSelected == true }
    }
    
    func isSelectedAll(_ button: UIButton) {
        let firstButton = self.first
        if button == firstButton {
            selectedAt(button: button)
            self.forEach({$0.isSelected = button.isSelected})
        } else {
            selectedAt(button: button)
        }
        firstButton?.isSelected = isSelectedAll
    }
}
