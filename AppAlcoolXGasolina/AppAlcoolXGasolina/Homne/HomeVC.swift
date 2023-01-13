//
//  ViewController.swift
//  AppAlcoolXGasolina
//
//  Created by Ramon Queiroz dos Santos on 11/01/23.
//

import UIKit

class HomeVC: UIViewController {

	var screen: HomeScreen?
	
	override func loadView() {
		screen = HomeScreen()
		view = screen
	}
	
	override func viewWillAppear(_ animated: Bool) {
		navigationController?.isToolbarHidden = true
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		screen?.delegate(delegate: self)
	}

}

extension HomeVC: HomeScreenDelegate {
	func tappedStartButton() {
		navigationController?.pushViewController(CalculadoraVC(), animated: true)
	}
}
