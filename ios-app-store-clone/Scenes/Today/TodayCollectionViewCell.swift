//
//  TodayCollectionViewCell.swift
//  ios-app-store-clone
//
//  Created by 허지인 on 2021/12/22.
//
import SnapKit
import UIKit


final class TodayCollectionViewCell: UICollectionViewCell {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24.0, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14.0, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14.0, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12.0
        imageView.backgroundColor = .gray
        
        return imageView
    }()
    
    func setup() {
        setupSubViews()
        
        //이미지가 아닌 셀에
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.cornerRadius = 10
        
        subTitleLabel.text = "서브타이틀"
        titleLabel.text = "앱의 이름"
        descriptionLabel.text = "설명설명"
    }
}

private extension TodayCollectionViewCell {
    func setupSubViews() {
        [imageView, titleLabel, subTitleLabel, descriptionLabel]
            .forEach{addSubview($0) }
        
        subTitleLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(24.0)
            $0.trailing.equalToSuperview().inset(24.0)
            $0.top.equalToSuperview().inset(24.0)
        }
        
        titleLabel.snp.makeConstraints{
            $0.leading.equalTo(subTitleLabel)
            $0.trailing.equalTo(subTitleLabel)
            $0.top.equalTo(subTitleLabel.snp.bottom).offset(4.0)
        }
        
        descriptionLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(24.0)
            $0.trailing.equalToSuperview().inset(24.0)
            $0.bottom.equalToSuperview().inset(24.0)
        }
        
        imageView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
}
