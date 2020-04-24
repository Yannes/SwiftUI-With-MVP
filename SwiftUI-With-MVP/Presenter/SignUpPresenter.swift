//
//  SignUpPresenter.swift
//  Presenter
//
//  Created by Yannes Meneguelli on 20/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import UIKit

public final class SignUpPresenter:SignUpProtocol {
    
    

    
    weak var hostingUI: UIViewController?
    
    private var viewModel: SignUpModel
    private var wireframe: Wireframe
    
    init(viewModel: SignUpModel, wireframe: Wireframe) {
        self.viewModel = viewModel
        self.wireframe = wireframe
    }
    
    
    
    public func SignUpButtonWasPressed() {
        
        print("TESTE: \(viewModel.username)")
        print("TESTE: \(viewModel.password)")
        
        
        if viewModel.username == "" || viewModel.password == "" {
            viewModel.errorMessage = "Please provide your username and password"
        }
       
        if viewModel.username != "Yannes" || viewModel.password != "12345" {
            viewModel.errorMessage = "The provided credentials are not correct"
        }else {
            viewModel.errorMessage = "Sucesso"
        }
        
        viewModel.username = ""
        viewModel.password = ""
    }
    

}
