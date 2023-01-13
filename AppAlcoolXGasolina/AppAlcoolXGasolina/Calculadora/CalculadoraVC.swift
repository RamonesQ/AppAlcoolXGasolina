//
//  CalculadoraVC.swift
//  AppAlcoolXGasolina
//
//  Created by Ramon Queiroz dos Santos on 13/01/23.
//

import UIKit

class CalculadoraVC: UIViewController {
	
	var screen: CalculadoraScreen?
	var alert: Alert?
	
	override func loadView() {
		screen = CalculadoraScreen()
		view = screen
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		alert = Alert(controller: self)
		screen?.delegate(delegate: self)
	}
	
	func validateTextFields() -> Bool{
		
		guard let precoAlcool = screen?.alcoolTF.text else { return false}
		guard let precogasolina = screen?.gasolinaTF.text else { return false}
		
		if precoAlcool.isEmpty || precogasolina.isEmpty{
			alert?.showAlertInformation(title: "Atenção", message: "Verifique se os campos estão preenchidos")
			return false
		}
		
		return true
	}
	
}

extension CalculadoraVC: CalculadoraScreenDelegate {
	func tappedBackButton() {
		navigationController?.popViewController(animated: true)
	}
	
	func tappedCalculateButton() {
		
		if validateTextFields(){
			let formatter = NumberFormatter()
			formatter.numberStyle = .decimal
			
			let precoAlcool: Double = (formatter.number(from: screen?.alcoolTF.text ?? "0.0") as? Double) ?? 0.0
			let precogasolina: Double = (formatter.number(from: screen?.gasolinaTF.text ?? "0.0") as? Double) ?? 0.0
			
			if precoAlcool / precogasolina > 0.7{
				print("Use Gasolina")
			} else {
				print("Use Alcool")
			}
		}
		
		navigationController?.pushViewController(ResultViewController(), animated: true)
	}
	
}
