//
//  InterviewTest.swift
//  lazyExample
//
//  Created by dept3 on 6/19/18.
//  Copyright © 2018 dept2. All rights reserved.
//

import Foundation

class InterviewTest {
    var name: String
    public var count: Int
    public lazy var greeting: String = {
        [unowned self] in
        return "1"
    }()
    
    lazy var appendText = "1231231"
    init(name: String) {
        self.name = name
        self.count = 1
    }
    
    
}
