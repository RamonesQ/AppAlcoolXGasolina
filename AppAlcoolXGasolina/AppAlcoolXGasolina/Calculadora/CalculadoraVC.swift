//
//  CalculadoraVC.swift
//  AppAlcoolXGasolina
//
//  Created by Ramon Queiroz dos Santos on 13/01/23.
//

import UIKit

class CalculadoraVC: UIViewController {

	var screen: CalculadoraScreen?
	
	override func loadView() {
		screen = CalculadoraScreen()
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

extension CalculadoraVC: CalculadoraScreenDelegate {
	func tappedBackButton() {
		print(#function)
	}
	
	func tappedCalculateButton() {
		print(#function)
	}
	
 }
