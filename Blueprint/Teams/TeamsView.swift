//
//  TeamsView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-24.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct TeamsView: View {
    
    @State private var searchInput: String?
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Teams")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(10.0)
                
                //TextField("Search", text: $searchInput)
                //.textFieldStyle
            }
            
            HStack{
                Spacer()
                    .frame(width: 20)
                Text("Order teams by: ")
                TeamsOrderModeView()
            }.background(Color("DarkBlue"))
                .frame(height: 30.0)
                .cornerRadius(15.0)

            TeamsListView()
        }.background(Color.clear)
    }
}

struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsView()
    }
}
