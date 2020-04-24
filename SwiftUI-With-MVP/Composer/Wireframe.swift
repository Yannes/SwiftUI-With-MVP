//
//  Wireframe.swift
//  Main
//
//  Created by Yannes Meneguelli on 20/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI



public final class Wireframe {
    
   static let shared = Wireframe()

    public init() { }
    
   public func presentInitialViewController(window: UIWindow) {
    let viewController =  SingUpComposer.provideLoginViewController()
        window.rootViewController = viewController
    }
}
