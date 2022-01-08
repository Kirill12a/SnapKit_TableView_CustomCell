//
//  XLRightCell.swift
//  SnapKit_TableView_CustomCell
//
//  Created by Kirill Drozdov on 08.01.2022.
//



import UIKit
let img = UIImage.init(named: "hi")?.stretchableImage(withLeftCapWidth: 60, topCapHeight: 60)
class FirstCell: UITableViewCell {
    var containLab:UILabel
    lazy var headImg:UIImageView? = {
        return UIImageView.init(image: UIImage.init(named: "Right"))
    }()
    fileprivate var imgV_R:UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        containLab = UILabel()
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.initUI()
        
    }
    fileprivate func initUI(){
        self.selectionStyle = UITableViewCell.SelectionStyle.none
        self.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        self.contentView.addSubview(headImg!)
        headImg?.snp.makeConstraints({ (make) in
            make.right.equalTo(self.contentView).offset(-15)
            make.top.equalTo(self.contentView).offset(15)
            make.width.equalTo(40)
            make.height.equalTo(40)
        })
        let bacImgv:UIImageView = UIImageView.init()
        bacImgv.image = img
        self.contentView.addSubview(bacImgv)
        bacImgv.snp.makeConstraints{ (make) in
            make.right.equalTo((headImg?.snp_leftMargin)!).offset(-20)
            make.top.equalTo(self.contentView).offset(15)
            make.bottom.equalTo(self.contentView).offset(-15)
            make.width.equalTo(200)
            make.height.equalTo(200)
        }
        containLab.numberOfLines = 0
        containLab.backgroundColor = UIColor.clear
        containLab.font = .boldSystemFont(ofSize: 45)
        containLab.textColor = .purple
        self.contentView.addSubview(containLab)
        containLab.snp.makeConstraints({ (make) in
            make.edges.equalTo(bacImgv).inset(UIEdgeInsets.init(top: 20, left: 20, bottom: 20, right: 20))
        })
    }
     func ConfigCellWithContain(_ contain:String){
        containLab.text = contain
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
