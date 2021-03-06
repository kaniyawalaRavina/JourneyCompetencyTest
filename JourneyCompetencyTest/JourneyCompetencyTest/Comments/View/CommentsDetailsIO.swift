//
//  CommentsDetailsViewInput.swift
//  JourneyCompetencyTest
//
//  Created by Riya Kaniyawala on 11/06/21.
//


import Foundation
//MARK: - Presenter -> View
protocol CommentsDetailsViewInput : AnyObject {
    func update(comments: [Comments?])
}

//MARK: - View ->Presenter
protocol CommentsDetailsViewOutput {
    func viewIsReady()
    
}
