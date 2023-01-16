//
//  UIViewController + Extension.swift
//  AppAlcoolXGasolina
//
//  Created by Ramon Queiroz dos Santos on 16/01/23.
//

import Foundation
import UIKit

extension UIViewController {
	
	func hideKeyboardWhenTappedAround(){
		let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
		tap.cancelsTouchesInView = false
		view.addGestureRecognizer(tap)
	}
	
	@objc private func dismissKeyboard(){
		view.endEditing(true)
	}
	
	
}
