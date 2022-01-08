//
//  XLLeftCell.swift
//  SnapKit_TableView_CustomCell
//
//  Created by Kirill Drozdov on 08.01.2022.
//


import UIKit
import SnapKit

class SecondCell: UITableViewCell {
    var ContainLab:UILabel
    lazy var HeadImg:UIImageView? = {
        return UIImageView.init(image: UIImage.init(named: "Left"))
    }()
    fileprivate var ImgV:UIImageView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        ContainLab = UILabel()
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.InitUI()
    }
    fileprivate func InitUI(){
        self.selectionStyle = UITableViewCell.SelectionStyle.gray
        self.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.blue
        self.contentView.addSubview(HeadImg!)
        HeadImg?.snp.makeConstraints({ (make) in
            make.left.equalTo(self.contentView).offset(15)
            make.top.equalTo(self.contentView).offset(15)
            make.width.equalTo(40)
            make.height.equalTo(40)
            
            
            
            
        })
        let BacImgv:UIImageView = UIImageView.init()
        BacImgv.image = IMG
        self.contentView.addSubview(BacImgv)
        BacImgv.snp.makeConstraints { (make) in
            make.left.equalTo((HeadImg?.snp_rightMargin)!).offset(20)
            make.top.equalTo(self.contentView).offset(15)
            make.bottom.equalTo(self.contentView).offset(-15)
            make.width.lessThanOrEqualTo(200)
            make.height.lessThanOrEqualTo(200)
        }
        ContainLab.numberOfLines = 0
        ContainLab.backgroundColor = UIColor.clear
        self.contentView.addSubview(ContainLab)
        ContainLab.snp.makeConstraints({ (make) in
            make.edges.equalTo(BacImgv).inset(UIEdgeInsets.init(top: 20, left: 20, bottom: 20, right: 20))
        })
    }
    internal func ConfigCellWithContain(_ contain:String){
        ContainLab.text = contain
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
