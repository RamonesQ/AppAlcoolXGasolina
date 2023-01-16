//
//  Calculadora Screen.swift
//  AppAlcoolXGasolina
//
//  Created by Ramon Queiroz dos Santos on 13/01/23.
//

import UIKit

protocol CalculadoraScreenDelegate: AnyObject{
	func tappedBackButton()
	func tappedCalculateButton()
}

class CalculadoraScreen: UIView {
	
	private weak var delegate: CalculadoraScreenDelegate?
	
	public func delegate(delegate: CalculadoraScreenDelegate?){
		self.delegate = delegate
	}
	
	lazy var backgroundImageView: UIImageView = {
		let img = UIImageView()
		img.translatesAutoresizingMaskIntoConstraints = false
		img.image = UIImage(named: "BG BLUR")
		img.contentMode = .scaleAspectFit
		return img
	}()
	
	lazy var backButton: UIButton = {
		let btn = UIButton()
		btn.translatesAutoresizingMaskIntoConstraints = false
		btn.setImage(UIImage(named: "Botão Back"), for: .normal)
		btn.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
		return btn
	}()
	
	lazy var logoImage: UIImageView = {
		let img = UIImageView()
		img.translatesAutoresizingMaskIntoConstraints = false
		img.image = UIImage(named: "LOGO menor")
		img.contentMode = .scaleAspectFit
		return img
	}()
	
	lazy var alcoolTF: UITextField = {
		let tf = UITextField()
		tf.translatesAutoresizingMaskIntoConstraints = false
		tf.autocorrectionType = .no
		tf.backgroundColor = .white
		tf.borderStyle = .roundedRect
		tf.keyboardType = .decimalPad
		tf.placeholder = "Preco do Álcool"
		tf.textColor = .darkGray
		tf.addDoneButtonOnKeyboard()
		return tf
	}()
	
	lazy var gasolinaTF: UITextField = {
		let tf = UITextField()
		tf.translatesAutoresizingMaskIntoConstraints = false
		tf.autocorrectionType = .no
		tf.backgroundColor = .white
		tf.borderStyle = .roundedRect
		tf.keyboardType = .decimalPad
		tf.placeholder = "Preco da Gasolina"
		tf.textColor = .darkGray
		tf.addDoneButtonOnKeyboard()
		return tf
	}()
	
	lazy var calculateButton: UIButton = {
		let btn = UIButton()
		btn.translatesAutoresizingMaskIntoConstraints = false
		btn.setTitle("Calcular", for: .normal)
		btn.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
		btn.setTitleColor(.white, for: .normal)
		btn.clipsToBounds = true
		btn.layer.cornerRadius = 8
		btn.backgroundColor = UIColor(red: 211/255, green: 46/255, blue: 126/255, alpha: 1.0)
		btn.addTarget(self, action: #selector(tappedCalculateButton), for: .touchUpInside)
		return btn
	}()
	
	@objc func tappedBackButton(){
		delegate?.tappedBackButton()
	}
	
	@objc func tappedCalculateButton(){
		delegate?.tappedCalculateButton()
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.configSuperView()
		self.setupConstraints()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func configSuperView(){
		self.addSubview(self.backgroundImageView)
		self.addSubview(self.backButton)
		self.addSubview(self.logoImage)
		self.addSubview(self.calculateButton)
		self.addSubview(self.alcoolTF)
		self.addSubview(self.gasolinaTF)
	}
	
	private func setupConstraints(){
		NSLayoutConstraint.activate([
			self.backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
			self.backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
			self.backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
			self.backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
			
			self.backButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
			self.backButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
			
			self.logoImage.topAnchor.constraint(equalTo: self.backButton.topAnchor, constant: 80),
			self.logoImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
			
			self.alcoolTF.centerYAnchor.constraint(equalTo: self.centerYAnchor),
			self.alcoolTF.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
			self.alcoolTF.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
			self.alcoolTF.heightAnchor.constraint(equalToConstant: 40),
			
			self.gasolinaTF.topAnchor.constraint(equalTo: self.alcoolTF.bottomAnchor, constant: 10),
			self.gasolinaTF.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
			self.gasolinaTF.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
			self.gasolinaTF.heightAnchor.constraint(equalToConstant: 40),
			
			self.calculateButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -130),
			self.calculateButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60),
			self.calculateButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
			self.calculateButton.heightAnchor.constraint(equalToConstant: 44),
		])
	}

}
