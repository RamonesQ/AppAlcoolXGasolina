//
//  Alert.swift
//  AppAlcoolXGasolina
//
//  Created by Ramon Queiroz dos Santos on 13/01/23.
//

import UIKit

class Alert {

	let controller:UIViewController
	
	init(controller:UIViewController) {
		self.controller = controller
	}
	
	func showAlertInformation(title: String, message: String){
		let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let okButton = UIAlertAction(title: "Ok", style: .default)
		alertController.addAction(okButton)
		controller.present(alertController, animated: true)
	}
}
