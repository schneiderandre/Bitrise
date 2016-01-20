//
//  ViewModelType.swift
//  Bitrise
//
//  Created by André Schneider on 19/01/16.
//  Copyright © 2016 André Schneider. All rights reserved.
//

import Foundation

protocol ViewModelType {
    var quantity: Observable<String> { get }
    var buttonTitle: Observable<String> { get }

    func increment()
}