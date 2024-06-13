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
        view.backgroundColor = .white
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
                weatherIconImageView.leadingAnchor.constraint(equalTo: temperatureLabel.trailingAnchor, constant: 15)
                
                
            ])
            
        }


}

