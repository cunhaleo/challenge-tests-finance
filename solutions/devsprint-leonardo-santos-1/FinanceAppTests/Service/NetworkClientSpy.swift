//
//  NetworkClientSpy.swift
//  FinanceAppTests
//
//  Created by Leonardo Cunha on 21/06/22.
//

import Foundation
@testable import FinanceApp

final class NetworkClientSpy: NetworkClientProtocol {
    
    private(set) var performRequestCalled: Bool = false
    private(set) var performRequestCount: Int = 0
    private(set) var performRequestURLPassed: URL?
    var performRequestCompletionDataToBeReturned: Data?
    
    func performRequest(with url: URL, completion: @escaping (Data?) -> ()) {
        performRequestCalled = true
        performRequestCount += 1
        performRequestURLPassed = url
        completion(performRequestCompletionDataToBeReturned)
    }
}
