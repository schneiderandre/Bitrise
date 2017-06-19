//
//  ViewController.swift
//  Bitrise
//
//  Created by André Schneider on 19/01/16.
//  Copyright © 2016 André Schneider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var quantityLabel: UILabel!

    var viewModel: ViewModelType!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewModelBindings(viewModel)
    }

    @IBAction func increment(_ sender: UIButton) {
        viewModel.increment()
    }

    // Private Methods

    fileprivate func configureViewModelBindings(_ viewModel: ViewModelType) {
        viewModel.quantity.bind { [weak self] value in
            self?.quantityLabel.text = value
        }

        viewModel.buttonTitle.bind { [weak self] value in
            self?.incrementButton.setTitle(value, for: UIControlState())
        }
    }
}
