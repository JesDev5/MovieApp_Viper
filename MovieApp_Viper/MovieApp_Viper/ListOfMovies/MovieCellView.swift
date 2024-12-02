//
//  MovieCellView.swift
//  MovieApp_Viper
//
//  Created by JessMac on 21/11/24.
//

import Foundation
import UIKit

class MovieCellView: UITableViewCell {
    
    let movieImageView: UIImageView = {
        let imageView  = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let movieName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 32, weight: .bold)
        return label
    }()
    
    let movieDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textColor = .gray
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func setupView() {
        contentView.addSubview(movieImageView)
        contentView.addSubview(movieName)
        contentView.addSubview(movieDescription)
        
        NSLayoutConstraint.activate([
            movieImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            movieImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            movieImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            movieImageView.widthAnchor.constraint(equalToConstant: 100),
            movieImageView.heightAnchor.constraint(equalToConstant: 200),
            
            movieName.topAnchor.constraint(equalTo: movieImageView.topAnchor, constant: 24),
            movieName.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 18),
            movieName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            movieDescription.topAnchor.constraint(equalTo: movieName.bottomAnchor, constant: 8),
            movieDescription.leadingAnchor.constraint(equalTo: movieDescription.trailingAnchor, constant: 20),
            movieDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
        ])
    }
  }


    
   
    

    
   
    
    

