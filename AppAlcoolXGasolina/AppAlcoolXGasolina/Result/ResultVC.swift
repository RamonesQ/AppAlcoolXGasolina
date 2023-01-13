//
//  ResultViewController.swift
//  AppAlcoolXGasolina
//
//  Created by Ramon Queiroz dos Santos on 13/01/23.
//

import UIKit

class ResultViewController: UIViewController {
	
	var screen: ResultScreen?
	
	override func loadView() {
		screen = ResultScreen()
		view = screen
	}

    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
