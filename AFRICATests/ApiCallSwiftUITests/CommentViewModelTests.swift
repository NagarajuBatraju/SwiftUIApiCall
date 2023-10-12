//
//  CommentViewModelTests.swift
//  ApiCallSwiftUITests
//
//  Created by batraju.nagaraju on 12/10/23.
//

import XCTest
@testable import ApiCallSwiftUI

class CommentViewModelTests: XCTestCase {

    func testComments() {
        let sut = CommentViewModel(commentViewService: MockAnimalsViewService())
        sut.fetchComments()
        XCTAssert(sut.comments.count == 500)
    }
}
