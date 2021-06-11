//
//  CommentsDetailsInteractorOutput.swift
//  JourneyCompetencyTest
//
//  Created by Riya Kaniyawala on 11/06/21.
//


import Foundation

//MARK: - Interactor -> Presenter
protocol CommentsDetailsInteractorOutput: AnyObject {
    
}

//MARK: - Presenter -> Interactor
protocol CommentsDetailsInteractorInupt {
    func getComments(success: @escaping (([Comments?])) -> Void, failure: @escaping (String?) -> ())
}
