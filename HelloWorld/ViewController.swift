//
//  ViewController.swift
//  HelloWorld
//
//  Created by Динара Шарафутдинова on 03.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }

    @IBAction func greetingButtonDidTap() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
        )
    }
    
    private func setupButton (with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
}

