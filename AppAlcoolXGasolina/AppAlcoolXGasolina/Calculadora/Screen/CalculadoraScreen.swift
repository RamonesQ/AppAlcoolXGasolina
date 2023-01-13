//
//  Calculadora Screen.swift
//  AppAlcoolXGasolina
//
//  Created by Ramon Queiroz dos Santos on 13/01/23.
//

import UIKit

class CalculadoraScreen: UIView {
	
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
		tf.placeholder = "Preco do Álcool"
		tf.clipsToBounds = true
		tf.layer.cornerRadius = 15
		tf.backgroundColor = .white
		return tf
	}()
	
	lazy var gasolinaTF: UITextField = {
		let tf = UITextField()
		tf.translatesAutoresizingMaskIntoConstraints = false
		tf.placeholder = "Preco da Gasolina"
		tf.clipsToBounds = true
		tf.layer.cornerRadius = 15
		tf.backgroundColor = .white
		return tf
	}()
	
	lazy var calculateButton: UIButton = {
		let btn = UIButton()
		btn.translatesAutoresizingMaskIntoConstraints = false
		btn.setImage(UIImage(named: "Botão desativado"), for: .normal)
		//btn.addTarget(self, action: #selector(tappedStartButton), for: .touchUpInside)
		return btn
	}()

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
			self.alcoolTF.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
			self.alcoolTF.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
			self.alcoolTF.heightAnchor.constraint(equalToConstant: 40),
			
			self.gasolinaTF.topAnchor.constraint(equalTo: self.alcoolTF.bottomAnchor, constant: 10),
			self.gasolinaTF.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
			self.gasolinaTF.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
			self.gasolinaTF.heightAnchor.constraint(equalToConstant: 40),
			
			self.calculateButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
			self.calculateButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -130)
		])
	}

}
