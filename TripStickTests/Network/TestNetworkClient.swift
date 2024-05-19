//
//  TestNetworkClient.swift
//  TripStickTests
//
//  Created by ammar on 19/05/2024.
//

import XCTest
@testable import TripStick

final class TestNetworkClient: XCTestCase {
    let network = NetworkClient()
 
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLoadDataFromURL() {
        let exp = expectation(description: "waiting for the API")
//        network.load(endPoint: "google.com",
//                     parameters: nil, method: .get)
//        (targetUrl: FixturesDataSource.url,
//                                     parameters: nil
//                                     , method: .get) { (result: Result<FixtureMainResponse,
//                                                                       NetworkError>) in
//            switch result {
//            case .success(let data):
//                guard let count = data.matches?.count else {
//                    XCTFail("data empty")
//                    exp.fulfill()
//                    return
//                }
//                XCTAssertGreaterThan(count, 0, "arr is empty ")
//                exp.fulfill()
//            case .failure(let error):
//                XCTFail(error.localizedDescription)
//                exp.fulfill()
//            }
//        }
//        waitForExpectations(timeout: 10, handler: nil)
    }
}
