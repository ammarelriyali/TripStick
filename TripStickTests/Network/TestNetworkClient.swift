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

    func testLoadDataFromURL_Success() async throws {
        // give
        let response: FakeResponse =  try await network.load(endPoint: "https://jsonplaceholder.typicode.com/todos/1",
                      method: .get)
        // then
        XCTAssertNotNil(response, "Data should not be nil")
    }
    
    func testLoadDataFromURL_Erorr() async throws {
        // give
        do {
            let _: FakeResponse =  try await network.load(endPoint: "https://jsonplaceholder.t.com/todos/1",
                                                                 method: .get)
        } catch let erorr  {
            // then
            XCTAssertNotNil(erorr, "erorr should not be nil")
        }
    }
}

private struct FakeResponse: Decodable {
    
}
