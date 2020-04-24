//
//  SignUpModel.swift
//  Domain
//
//  Created by Yannes Meneguelli on 20/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

public final class SignUpModel: ObservableObject {
        
    public var username: String = ""
    public var password: String = ""
    
    @Published var errorMessage: String = ""
}
