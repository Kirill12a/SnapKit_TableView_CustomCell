//
//  XLLeftCell.swift
//  SnapKit_TableView_CustomCell
//
//  Created by Kirill Drozdov on 08.01.2022.
//


import UIKit
import SnapKit

class SecondCell: UITableViewCell {
    
    var containLab:UILabel
    lazy var headImg:UIImageView? = {
        return UIImageView.init(image: UIImage.init(named: "Left"))
    }()
    
    fileprivate var imgV:UIImageView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        containLab = UILabel()
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.InitUI()
    }
    fileprivate func InitUI(){
        self.selectionStyle = UITableViewCell.SelectionStyle.gray
        self.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.blue
        self.contentView.addSubview(headImg!)
        headImg?.snp.makeConstraints({ (make) in
            make.left.equalTo(self.contentView).offset(10) // Отступ слева
            make.top.equalTo(self.contentView).offset(10)  // Отступ сверху
            make.width.equalTo(50)
            make.height.equalTo(50)
            
            
            
            
        })
        let bacImgv:UIImageView = UIImageView.init()
        bacImgv.image = img
//        bacImgv.backgroundColor = .black
        self.contentView.addSubview(bacImgv)
        bacImgv.snp.makeConstraints { (make) in
            make.left.equalTo((headImg?.snp_leftMargin)!).offset(20)
            make.top.equalTo(self.contentView).offset(20)
            make.bottom.equalTo(self.contentView).offset(-20)
            make.width.equalTo(200)
            make.height.equalTo(200)
        }
        containLab.numberOfLines = 0
        containLab.backgroundColor = UIColor.clear
        self.contentView.addSubview(containLab)
        containLab.snp.makeConstraints({ (make) in
//            make.edges.equalTo(bacImgv).inset(UIEdgeInsets.init(top: 20, left: 20, bottom: 20, right: 20))
            make.centerX.centerY.equalToSuperview()
        })
    }
     func ConfigCellWithContain(_ contain:String){
        containLab.text = contain
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  

}
