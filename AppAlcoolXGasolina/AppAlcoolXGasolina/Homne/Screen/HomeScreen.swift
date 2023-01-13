//
//  HomeScreen.swift
//  AppAlcoolXGasolina
//
//  Created by Ramon Queiroz dos Santos on 13/01/23.
//

import UIKit

class HomeScreen: UIView {
	
	lazy var backgroundImageView: UIImageView = {
		let img = UIImageView()
		img.translatesAutoresizingMaskIntoConstraints = false
		img.image = UIImage(named: "BG HOME")
		img.contentMode = .scaleAspectFit
		return img
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
	}
	
	private func setupConstraints(){
		NSLayoutConstraint.activate([
			self.backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
			self.backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
			self.backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
			self.backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
		])
	}

}
