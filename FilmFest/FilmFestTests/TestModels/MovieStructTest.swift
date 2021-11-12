//
//  MovieStructTest.swift
//  FilmFestTests
//
//  Created by Hiram Castro Maldonado on 12/11/21.
//

import XCTest
@testable import FilmFest

class MovieStructTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func testExample() throws {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testInit_MovieWithTitle() {
        let testMovie = Movie(title: "Generic Blockbuster")
        
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.title, "Generic Blockbuster")
    }
    
    func testInit_SetMovieTitleAndReleaseDate() {
        let testMovie = Movie(title: "Romantic Comedy", releaseDate: "1987")
        
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.releaseDate, "1987")
    }

}
