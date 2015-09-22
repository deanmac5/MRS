//
//  MRS_iOSTests.swift
//  MRS-iOSTests
//
//  Created by Dean on 22/09/2015.
//  Copyright © 2015 osb. All rights reserved.
//

import XCTest
@testable import MRS_iOS

class MRS_iOSTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
   // MARK: MRS Tests
    
    // Test to confirm that the MediaRelease initialiser returns when no title, snippet or url are provided
    func testMediaReleaseInitialisation(){
        // Success case
        let potential = MediaRelease(title: "Sample Release", snippet: "Good old Collingwood forever, we know how to play the game", url: "http://www.collingwoodfc.com.au")
        XCTAssertNotNil(potential)
        
        // Fail case
        let fail = MediaRelease(title: "", snippet: "", url: "")
        XCTAssertNil(fail, "Empty name is invalid" )
    }
    
}
