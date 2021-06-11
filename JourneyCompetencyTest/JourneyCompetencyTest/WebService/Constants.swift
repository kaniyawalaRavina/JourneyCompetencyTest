//
//  Constants.swift
//  JourneyCompetencyTest
//
//  Created by Riya Kaniyawala on 11/06/21.
//

import Foundation
enum CommentsDeailsSection : Int , CaseIterable{
    case PostCommentsDetails
    case CommentsDetails
    
    func sectionTitle() -> String {
        switch self {
        case .PostCommentsDetails:
            return "Post Detail"
        case .CommentsDetails:
            return "Comments Detail"
        }
    }
}
