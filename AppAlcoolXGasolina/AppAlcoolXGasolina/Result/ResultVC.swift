//
//  ResultViewController.swift
//  AppAlcoolXGasolina
//
//  Created by Ramon Queiroz dos Santos on 13/01/23.
//

import UIKit

enum MelhorCombustivel: String{
	case Alcool = "Álcool"
	case Gasolina =  "Gasolina"
}

class ResultViewController: UIViewController {
	
	var screen: ResultScreen?
	let melhorCombustivel: MelhorCombustivel
	
	init(melhorCombustivel: MelhorCombustivel){
		self.melhorCombustivel = melhorCombustivel
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func loadView() {
		screen = ResultScreen()
		view = screen
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		screen?.delegate(delegate: self)
		screen?.resultLabel.text = melhorCombustivel.rawValue
	}
	func popViewController(){
		navigationController?.popViewController(animated: true)
	}
}

extension ResultViewController: ResultScreenDelegate {
	func tappedCalculateButton() {
		popViewController()
	}
	
	func tappedBackButton() {
		popViewController()
	}
	
	
}
