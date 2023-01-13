//
//  ResultScreen.swift
//  AppAlcoolXGasolina
//
//  Created by Ramon Queiroz dos Santos on 13/01/23.
//

import UIKit

class ResultScreen: UIView {

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
		//btn.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
		return btn
	}()
	
	lazy var logoImage: UIImageView = {
		let img = UIImageView()
		img.translatesAutoresizingMaskIntoConstraints = false
		img.image = UIImage(named: "LOGO menor")
		img.contentMode = .scaleAspectFit
		return img
	}()
	
	lazy var subtitleLabel: UILabel = {
		let lbl = UILabel()
		lbl.translatesAutoresizingMaskIntoConstraints = false
		lbl.font = UIFont.systemFont(ofSize: 22)
		lbl.text = "Abasteça com:"
		lbl.textColor = .white
		return lbl
	}()
	
	lazy var resultLabel: UILabel = {
		let lbl = UILabel()
		lbl.translatesAutoresizingMaskIntoConstraints = false
		lbl.font = UIFont.systemFont(ofSize: 60, weight: .bold)
		lbl.text = "Gasolina"
		lbl.textColor = .white
		return lbl
	}()
	
	lazy var calculateButton: UIButton = {
		let btn = UIButton()
		btn.translatesAutoresizingMaskIntoConstraints = false
		btn.setTitle("Calcular novamente", for: .normal)
		btn.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
		btn.setTitleColor(.white, for: .normal)
		btn.clipsToBounds = true
		btn.layer.cornerRadius = 8
		btn.backgroundColor = UIColor(red: 211/255, green: 46/255, blue: 126/255, alpha: 1.0)
		//btn.addTarget(self, action: #selector(tappedCalculateButton), for: .touchUpInside)
		return btn
	}()
	
//	@objc func tappedBackButton(){
//		delegate?.tappedBackButton()
//	}
//
//	@objc func tappedCalculateButton(){
//		delegate?.tappedCalculateButton()
//	}

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
		self.addSubview(self.subtitleLabel)
		self.addSubview(self.resultLabel)
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
			
			self.subtitleLabel.topAnchor.constraint(equalTo: self.logoImage.bottomAnchor, constant: 100),
			self.subtitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
			
			self.resultLabel.topAnchor.constraint(equalTo: self.subtitleLabel.bottomAnchor, constant: 30),
			self.resultLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
			
			self.calculateButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -130),
			self.calculateButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60),
			self.calculateButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
			self.calculateButton.heightAnchor.constraint(equalToConstant: 44),
		])
	}

}

