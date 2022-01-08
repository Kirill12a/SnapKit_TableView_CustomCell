//
//  ViewController.swift
//  SnapKit_TableView_CustomCell
//
//  Created by Kirill Drozdov on 08.01.2022.
//

import UIKit




class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let LeftCellIDF = "LeftChatCellIDF"
    let RightCellIDF = "RightChatCellIDF"
    let DataArr = ["Кирилл","Вася","Даня","Антон"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CreateUI()
    }
    func CreateUI() -> Void {
        
        let ChatTable:UITableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), style: UITableView.Style.plain)
        self.view.addSubview(ChatTable)
        ChatTable.separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        ChatTable.delegate = self
        ChatTable.dataSource = self
        ChatTable.register(SecondCell().classForCoder, forCellReuseIdentifier:LeftCellIDF)
        ChatTable.register(FirstCell().classForCoder, forCellReuseIdentifier: RightCellIDF)
        ChatTable.estimatedRowHeight = 80
        ChatTable.rowHeight = UITableView.automaticDimension
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: LeftCellIDF) as! SecondCell
            cell.ConfigCellWithContain(DataArr[indexPath.row])
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: RightCellIDF) as! FirstCell
            cell.ConfigCellWithContain(DataArr[indexPath.row])
            return cell
        }
    }
   

}
