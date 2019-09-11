//
//  mealTackingTests.swift
//  mealTackingTests
//
//  Created by Ahmed Shaaban on 11/09/19.
//  Copyright © 2019 Ahmed Shaaban. All rights reserved.
//

import XCTest
@testable import mealTracker


class mealTackingTests: XCTestCase {

    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitilationSucceeds() {
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest postive rating
        let positiveRatingMeal = Meal.init(name: "Postive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }

}


/*
 
 */
