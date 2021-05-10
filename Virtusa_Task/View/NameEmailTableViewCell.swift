//
//  NameEmailTableViewCell.swift
//  Virtusa_Task
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit

class NameEmailTableViewCell: UITableViewCell {
    var lblTxt:[String] = []
    @IBOutlet weak var commentLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(model: ResultModel) {
        let tpt = model.body?.components(separatedBy: "\n")
        //lblTxt.append(tpt[1])
        nameLbl.text = model.name
        emailLbl.text = model.email
        commentLbl.text = tpt?[0]
    }
}
