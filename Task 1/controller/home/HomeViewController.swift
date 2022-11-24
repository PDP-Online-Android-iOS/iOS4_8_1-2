//
//  HomeViewController.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 24/11/22.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Outlets
    
    @IBOutlet weak var rvMain: UITableView!
    
    
    // MARK: - Variables
    
    var posts = [Post]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }

    // MARK: - Methods
    
    func initViews() {
        
        rvMain.dataSource = self
        rvMain.delegate = self
        
        setNavigationBar()
        
        posts.append(Post(fullName: "Sarvar", profileImage: "person_male", postImages: ["post_1", "post_2"]))
        posts.append(Post(fullName: "Madina", profileImage: "person_female", postImages: ["post_3", "post_4"]))
        posts.append(Post(fullName: "Sarvar", profileImage: "person_male", postImages: ["post_1", "post_2"]))
        posts.append(Post(fullName: "Madina", profileImage: "person_female", postImages: ["post_3", "post_4"]))
        posts.append(Post(fullName: "Sarvar", profileImage: "person_male", postImages: ["post_1", "post_2"]))
        posts.append(Post(fullName: "Madina", profileImage: "person_female", postImages: ["post_3", "post_4"]))
        posts.append(Post(fullName: "Sarvar", profileImage: "person_male", postImages: ["post_1", "post_2"]))
        posts.append(Post(fullName: "Madina", profileImage: "person_female", postImages: ["post_3", "post_4"]))
        posts.append(Post(fullName: "Sarvar", profileImage: "person_male", postImages: ["post_1", "post_2"]))
        posts.append(Post(fullName: "Madina", profileImage: "person_female", postImages: ["post_3", "post_4"]))
        posts.append(Post(fullName: "Sarvar", profileImage: "person_male", postImages: ["post_1", "post_2"]))
        posts.append(Post(fullName: "Madina", profileImage: "person_female", postImages: ["post_3", "post_4"]))
        
    }
    
    func setNavigationBar() {
        let camera = UIImage(systemName: "camera")
        let send = UIImage(systemName: "paperplane")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(cameraClick))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(sendClick))
        title = "Instagram"
        
    }
    
    // MARK: - @objc Functions
    
    @objc func cameraClick() {
        
    }
    
    @objc func sendClick() {
        
    }
    
    // MARK: - Actions
    
    
    
    // MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = posts[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.ivProfile.image = UIImage(named: item.profileImage)
        cell.tvFullName.text = item.fullName
        cell.ivFirstPostMedia.image = UIImage(named: item.postImages[0])
        cell.ivSecondPostMedia.image = UIImage(named: item.postImages[1])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        350
    }

}
