//
//  ViewModel.swift
//  Bitrise
//
//  Created by André Schneider on 19/01/16.
//  Copyright © 2016 André Schneider. All rights reserved.
//

import Foundation

struct ViewModel: ViewModelType {
    let quantity = Observable("0")
    let buttonTitle = Observable("increment")

    func increment() {
        guard let value = Int(quantity.value) else {
            return
        }
        quantity.value(String(value + 1))
    }
}
