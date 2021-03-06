//
//  PostRouter.swift
//  JourneyCompetencyTest
//
//  Created by Riya Kaniyawala on 11/06/21.
//

import UIKit

class PostRouter {
    
    //MARK: - Variable & Constant
    weak var viewController : UIViewController?
}

//MARK:- Router Input Method
extension PostRouter : PostRouterInput {
    func openPostDetailsModule(post: Post?) {

        //Navigate to comments:
        let vc = CommentsDetailsFactory.shared.createModule(posts: post)
        self.viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}
