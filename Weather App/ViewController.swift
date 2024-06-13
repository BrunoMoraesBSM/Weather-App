//
//  ViewController.swift
//  Weather App
//
//  Created by Bruno de Souza Moraes on 10/06/24.
//

import UIKit

class ViewController: UIViewController {

    private lazy var backgroungView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
            return imageView
        }()
    
    private lazy var headerView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.backgroundColor = UIColor(named: "contrastColor")
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "São Paulo"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.textColor = UIColor(named: "primaryColor")
        return label
    }()
    
    lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "25°C"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        label.textAlignment = .left
        label.textColor = UIColor(named: "primaryColor")
        return label
    }()
    
    lazy var weatherIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sunIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var humidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Umidade"
        label.textColor = UIColor(named: "contrastColor")
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textAlignment = .left
        return label
    }()
    
    lazy var humidityValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1000mm"
        label.textColor = UIColor(named: "contrastColor")
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var humidityStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [humidityLabel, humidityValueLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        return stackView
    }()
    
    lazy var windLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vento"
        label.textColor = UIColor(named: "contrastColor")
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textAlignment = .left
        return label
    }()
    
    lazy var windValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10Km/h"
        label.textColor = UIColor(named: "contrastColor")
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var windStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [windLabel, windValueLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        return stackView
    }()
    
    private lazy var statsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [humidityStackView, windStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 3
        stackView.backgroundColor = UIColor(named: "softGray")
        stackView.layer.cornerRadius = 10
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 12, leading: 24, bottom: 12, trailing: 24)
        return stackView
    }()
    

        override func viewDidLoad() {
            super.viewDidLoad()
            setupView()
        }

    private func setupView() {

            setHierarchy()
            setConstraints()
        }

        private func setHierarchy() {
            view.addSubview(backgroungView)
            view.addSubview(headerView)
            view.addSubview(statsStackView)
            
            headerView.addSubview(cityLabel)
            headerView.addSubview(temperatureLabel)
            headerView.addSubview(weatherIconImageView)
            
        }

        private func setConstraints() {
            NSLayoutConstraint.activate([
                backgroungView.topAnchor.constraint(equalTo: view.topAnchor),
                backgroungView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                backgroungView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                backgroungView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                
                headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
                headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
                headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
                headerView.heightAnchor.constraint(equalToConstant: 169),
                
                cityLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 15),
                cityLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
                cityLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -15),
                cityLabel.heightAnchor.constraint(equalToConstant: 20),
                
                temperatureLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 21),
                temperatureLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 26),
                
                weatherIconImageView.heightAnchor.constraint(equalToConstant: 86),
                weatherIconImageView.heightAnchor.constraint(equalToConstant: 86),
                weatherIconImageView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -26),
                weatherIconImageView.centerYAnchor.constraint(equalTo: temperatureLabel.centerYAnchor),
                weatherIconImageView.leadingAnchor.constraint(equalTo: temperatureLabel.trailingAnchor, constant: 15),
                
                weatherIconImageView.heightAnchor.constraint(equalToConstant: 86),
                weatherIconImageView.heightAnchor.constraint(equalToConstant: 86),
                weatherIconImageView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -26),
                
                statsStackView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 24),
                statsStackView.widthAnchor.constraint(equalToConstant: 206),
                statsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
                
            ])
            
        }


}

