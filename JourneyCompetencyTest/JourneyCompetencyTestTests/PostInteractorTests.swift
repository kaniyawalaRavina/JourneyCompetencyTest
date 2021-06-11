//
//  PostInteractor.swift
//  JourneyCompetencyTestTests
//
//  Created by Riya Kaniyawala on 11/06/21.
//

import XCTest
@testable import JourneyCompetencyTest

class PostInteractorTests: XCTestCase {

    var postInteractor = PostInteractor()

    override class func setUp() {
        super.setUp()
        
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPosts() throws {

        let expectation = self.expectation(description: "GetPosts")
        postInteractor.loadPosts(success: { posts in
            XCTAssert(!posts.isEmpty, "PostInteractor failed to get posts")
            expectation.fulfill()
        }, failure: { error in
            XCTAssertNil(error)
            expectation.fulfill()
        })
        
        waitForExpectations(timeout: 3, handler: { error in
            XCTAssertNil(error)
        })
    }

}
