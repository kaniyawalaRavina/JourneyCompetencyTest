//
//  PostVC.swift
//  JourneyCompetencyTest
//
//  Created by Riya Kaniyawala on 11/06/21.
//

import UIKit

class PostVC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var postTableView: UITableView!
    
    // MARK: - Dependencies
    var output : PostViewOutput!

    var posts: [Post?] = []
    var filterPosts: [Post?] = []
    var isSearching: Bool = false
    @IBOutlet weak var searchTextField: UITextField!
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Post"
    }
    
    @IBAction func textChangedForText(_ sender: Any) {
        if searchTextField.text != "" {
            isSearching = true
        } else {
            isSearching = false
        }
        //Search based on username and commented words
        filterPosts = searchTextField.text?.isEmpty ?? true ? posts : posts.filter {
            $0?.title?.range(of: searchTextField.text ?? "", options: .caseInsensitive) != nil
            
        }
        print("comments count: \(filterPosts.count)")
        postTableView.reloadData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        output.viewIsReady()
    }
}

//MARK:- TableView Delegate
extension PostVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isSearching {
            return filterPosts.count
        } else {
        return posts.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var indexedPost: Post?
        if isSearching {
            indexedPost = filterPosts[indexPath.row]
        } else {
            indexedPost = posts[indexPath.row]
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)
        cell.textLabel?.text = indexedPost?.title
        cell.textLabel?.numberOfLines = 0
        cell.detailTextLabel?.text = indexedPost?.body
        cell.detailTextLabel?.numberOfLines = 0
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        output.didTouchPost(post: posts[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

//MARK:- PostViewInput
extension PostVC : PostViewInput {
    
    func update(posts: [Post?]) {
        self.posts = posts
        postTableView.reloadData()
    }

}
