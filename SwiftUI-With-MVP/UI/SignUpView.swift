//
//  SignUpView.swift
//  UI
//
//  Created by Yannes Meneguelli on 20/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
    
    private var presenter: SignUpPresenter?
    
    @State var showAlert: Bool = false
    @ObservedObject private var viewModel: SignUpModel
    
    init(presenter: SignUpPresenter?, viewModel: SignUpModel) {
        self.presenter = presenter
        self.viewModel = viewModel
    }
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            ViewTextFields(username: $viewModel.username, password: $viewModel.password)
            Button(action: {
                self.singUpButton()
                if !self.viewModel.errorMessage.isEmpty {
                    self.showAlert.toggle()
                }
            }) {
                Text("TapMe")
            }
            
        }.padding()
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Tesste"), message: Text(viewModel.errorMessage), dismissButton: .cancel())
        }
    }
    
    
    private func singUpButton(){
        
        presenter?.SignUpButtonWasPressed()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(presenter: .none, viewModel: .init())
    }
}

