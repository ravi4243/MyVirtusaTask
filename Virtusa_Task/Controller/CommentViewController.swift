//
//  CommentViewController.swift
//  Virtusa_Task
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit

class CommentViewController: UIViewController {
    var model: ResultModel?
    @IBOutlet weak var commentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationItem.hidesBackButton = false
        commentLabel.text = model?.body
        commentLabel.layer.borderWidth = 1.0
        commentLabel.layer.borderColor = UIColor.lightGray.cgColor
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back")!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
