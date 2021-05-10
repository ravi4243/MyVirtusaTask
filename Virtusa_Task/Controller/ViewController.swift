//
//  ViewController.swift
//  Virtusa_Task
//
//  Created by Ravi Yadav on 08/05/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tblUsers: UITableView!
    let postCommentsViewModel = PostCommentsViewModel()
    var model = [ResultModel?]()
    var activityIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.registerCell()
        self.setUpActivityIndicatorView()
        fetchPostCommentsAPI()
        tblUsers.backgroundView = UIImageView(image: UIImage(named: "tblBack"))
    }

    
    func registerCell() {
        let nib = UINib.init(nibName: Constants.NameEmailTableViewCell, bundle: nil)
        self.tblUsers.register(nib, forCellReuseIdentifier: Constants.NameEmailTableViewCell)
    }
    
    func setUpActivityIndicatorView() {
        activityIndicator = UIActivityIndicatorView(style: .large)
        self.activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        self.activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = .white
        activityIndicator.backgroundColor = .black
        self.view.addSubview(activityIndicator)
    }
    
    func showLoadingIndicator() {
        activityIndicator.startAnimating()
    }
    
    func hideLoadingIndicator() {
        activityIndicator.stopAnimating()

    }
    
    func fetchPostCommentsAPI() {
        
        self.showLoadingIndicator()
        let url = ServiceUrl.postsURL
        postCommentsViewModel.fetchPostComments(url: url) { [self] (true, data) in
            
            self.model = postCommentsViewModel.model
            DispatchQueue.main.async {
                tblUsers.reloadData()
                self.hideLoadingIndicator()
            }
            
        } failureHandler: { (true, error) in
            self.hideLoadingIndicator()
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblUsers.dequeueReusableCell(withIdentifier: Constants.NameEmailTableViewCell, for: indexPath) as! NameEmailTableViewCell
        cell.configureCell(model: model[indexPath.row]!)
        if indexPath.row%2 == 0 {
            cell.backgroundColor = .darkGray
        } else {
            cell.backgroundColor = .lightGray
        }
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        cell.selectionStyle = .none
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let subModel = model[indexPath.row]
        
        let commentVC = self.storyboard?.instantiateViewController(identifier: "CommentViewController") as! CommentViewController
        commentVC.model = subModel
        self.navigationController?.pushViewController(commentVC, animated: true)
        
    }
}
