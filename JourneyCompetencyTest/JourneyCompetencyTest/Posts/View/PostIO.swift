//
//  PostViewInput.swift
//  JourneyCompetencyTest
//
//  Created by Riya Kaniyawala on 11/06/21.
//
import UIKit

//MARK: - Presenter -> View
protocol PostViewInput : AnyObject {
    func update(posts: [Post?])
}

//MARK: - View ->Presenter
protocol PostViewOutput {
    func viewIsReady()
    func didTouchPost(post: Post?)
}
