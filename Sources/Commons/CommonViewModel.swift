//
//  CommonViewModel.swift
//  GitLabFlow-FeatureA
//
//  Created by James Reeve on 11/12/19.
//  Copyright © 2019 James Reeve. All rights reserved.
//

import Foundation

enum ExampleFormElements {
    case header
    case body
    case footer
}

protocol ExampleModelProtocol: AnyObject {
    func loadForm(_ elements: [ExampleFormElements])
    func resetLoadingContainer()
    func updateNavigationItems(withTitle title:String, subTitle: String)
}

final class ExampleViewModel {
    //Delegate
    weak var delegate: ExampleModelProtocol?
    
    //Properties
    var headingLabel: String
//    var body: Account
    private var didLoadInitialForm = false
    private var hasRequestedReload = false
    
    init() {
        headingLabel = "Test"
    }
    
//    init(account: Account) {
//        self.body = account
//    }
}
