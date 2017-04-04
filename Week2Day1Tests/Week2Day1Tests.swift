//
//  Week2Day1Tests.swift
//  Week2Day1Tests
//
//  Created by Brent Fordham on 4/4/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import XCTest
@testable import Week2Day1

class Week2Day1Tests: XCTestCase {
    
    func testKnightMoves() {
        let result = knightMoves(startingPosition: Location(x: 0, y: 0))
        let expected = [Location(x: 1, y: 2),
                        Location(x: 1, y: -2),
                        Location(x: 2, y: 1),
                        Location(x: 2, y: -1),
                        Location(x: -1, y: 2),
                        Location(x: -1, y: -2),
                        Location(x: -2, y: 1),
                        Location(x: -2, y: -1)]
        XCTAssertEqual(result, expected)
    }
    
    func testValidKnightMoves() {
        let result = validKnightMoves(startingPosition: Location(x: 0, y: 0))
        let expected = [Location(x: 1, y: 2),
                        Location(x: 2, y: 1)]
        XCTAssertEqual(result, expected)
    }
    
    func testValidKnightMoves2() {
        let result = validKnightMoves(startingPosition: Location(x: 3, y: 6))
        let expected = [Location(x: 4, y: 4),
                      Location(x: 5, y: 7),
                      Location(x: 5, y: 5),
                      Location(x: 2, y: 4),
                      Location(x: 1, y: 7),
                      Location(x: 1, y: 5)]
        XCTAssertEqual(result, expected)
    }
    
    func testValidRookMoves() {
        let result = validRookMoves(startingPosition: Location(x: 0, y: 0))
        let expected = [Location(x: 0, y: 1),
                        Location(x: 0, y: 2),
                        Location(x: 0, y: 3),
                        Location(x: 0, y: 4),
                        Location(x: 0, y: 5),
                        Location(x: 0, y: 6),
                        Location(x: 0, y: 7),
                        Location(x: 1, y: 0),
                        Location(x: 2, y: 0),
                        Location(x: 3, y: 0),
                        Location(x: 4, y: 0),
                        Location(x: 5, y: 0),
                        Location(x: 6, y: 0),
                        Location(x: 7, y: 0)]
        XCTAssertEqual(result, expected)
    }
    
    func testValidRookMoves2() {
        let result = validRookMoves(startingPosition: Location(x: 3, y: 6))
        let expected = [Location(x: 3, y: 7),
                        Location(x: 3, y: 5),
                        Location(x: 3, y: 4),
                        Location(x: 3, y: 3),
                        Location(x: 3, y: 2),
                        Location(x: 3, y: 1),
                        Location(x: 3, y: 0),
                        Location(x: 4, y: 6),
                        Location(x: 5, y: 6),
                        Location(x: 6, y: 6),
                        Location(x: 7, y: 6),
                        Location(x: 2, y: 6),
                        Location(x: 1, y: 6),
                        Location(x: 0, y: 6)]
        XCTAssertEqual(result, expected)
    }
    
    func testListValidEndLocations1() {
        let result = listValidEndLocations(piece: .knight, startingPosition: Location(x: 0, y: 0))
        let expected = [Location(x: 1, y: 2),
                        Location(x: 2, y: 1)]
        XCTAssertEqual(result, expected)
    }
    
    func testListValidEndLocations2() {
        let result = listValidEndLocations(piece: .knight, startingPosition: Location(x: 3, y: 6))
        let expected = [Location(x: 4, y: 4),
                        Location(x: 5, y: 7),
                        Location(x: 5, y: 5),
                        Location(x: 2, y: 4),
                        Location(x: 1, y: 7),
                        Location(x: 1, y: 5)]
        XCTAssertEqual(result, expected)
    }
    
    func testListValidEndLocations3() {
        let result = listValidEndLocations(piece: .rook, startingPosition: Location(x: 0, y: 0))
        let expected = [Location(x: 0, y: 1),
                        Location(x: 0, y: 2),
                        Location(x: 0, y: 3),
                        Location(x: 0, y: 4),
                        Location(x: 0, y: 5),
                        Location(x: 0, y: 6),
                        Location(x: 0, y: 7),
                        Location(x: 1, y: 0),
                        Location(x: 2, y: 0),
                        Location(x: 3, y: 0),
                        Location(x: 4, y: 0),
                        Location(x: 5, y: 0),
                        Location(x: 6, y: 0),
                        Location(x: 7, y: 0)]
        XCTAssertEqual(result, expected)
    }
    
    func testListValidEndLocations4() {
        let result = listValidEndLocations(piece: .rook, startingPosition: Location(x: 3, y: 6))
        let expected = [Location(x: 3, y: 7),
                        Location(x: 3, y: 5),
                        Location(x: 3, y: 4),
                        Location(x: 3, y: 3),
                        Location(x: 3, y: 2),
                        Location(x: 3, y: 1),
                        Location(x: 3, y: 0),
                        Location(x: 4, y: 6),
                        Location(x: 5, y: 6),
                        Location(x: 6, y: 6),
                        Location(x: 7, y: 6),
                        Location(x: 2, y: 6),
                        Location(x: 1, y: 6),
                        Location(x: 0, y: 6)]
        XCTAssertEqual(result, expected)
    }
    
}
