//
//  SingUpComposer.swift
//  Main
//
//  Created by Yannes Meneguelli on 20/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.



import SwiftUI

final class SingUpComposer {

    static func provideLoginViewController() -> UIViewController {
        let viewModel = SignUpModel()
        let presenter = SignUpPresenter(viewModel: viewModel, wireframe: Wireframe.shared)
        let view =  SignUpView(presenter: presenter, viewModel: viewModel)
        let viewController = UIHostingController(rootView: view)
        presenter.hostingUI = viewController
        return viewController
    }
}
