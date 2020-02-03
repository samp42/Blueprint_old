//
//  LeftMenuView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-23.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

/*class ViewDisplayed: ObservableObject {
    
   //@Published var didChange = PassthroughSubject<Void, Never>()
    
    var viewSelected = ViewSelected.ScoreBoard { didSet { didChange.send()}}
}*/

struct LeftMenuView: View {
    //@ObservedObject var currentView = ViewDisplayed()
    
    @EnvironmentObject var global: GlobalEnvironment
    let Buttons = [ViewSelected.ScoreBoard, ViewSelected.Teams, ViewSelected.Lists]

    var body: some View {
            
        VStack{
            EventSelectorView()
            
            GeometryReader{geometry in
                Button(action: {
                    self.global.viewSelected = ViewSelected.ScoreBoard
                }){
                    Text("Score Board")
                        .frame(width:180, height:40)
                }.buttonStyle(leftMenuButtonStyle()).contentShape(RoundedRectangle(cornerRadius: 20))
            }

            Spacer()
                .frame(height: 10)
            
            Button(action: {
                self.global.viewSelected = ViewSelected.Teams
            }){
                Text("Teams")
                    .frame(width:180, height:40)
            }.buttonStyle(leftMenuButtonStyle())
            
            Spacer()
            .frame(height: 10)
            
            Button(action: {
                self.global.viewSelected = ViewSelected.Lists
            }){
                Text("Lists")
                    .frame(width:180, height:40)
            }.buttonStyle(leftMenuButtonStyle())
            
        }.padding(.horizontal, 20)
    }
}


/*
struct LeftMenuView_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenuView(viewSelected: $viewSelected)
    }
}*/