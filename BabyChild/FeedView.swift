//
//  FeedView.swift
//  BabyChild
//
//  Created by Mow on 05/11/2019.
//  Copyright © 2019 Mow. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack(spacing: 12){
            HStack(spacing: 12){
                RedirectButtonView(name: "L")
                Text("Breast")
                    .font(.title)
                    .multilineTextAlignment(.center)
                RedirectButtonView(name: "R")
            }
            RedirectButtonView(name: "Bottle")
            RedirectButtonView(name: "Solid")
            Divider()
            Group{
                HStack{
                    Text("Breast")
                    Spacer()
                    Text("110 ml time")
                }
                HStack{
                    Text("Bottle")
                    Spacer()
                    Text("110 ml time")
                }
                HStack{
                    Text("Solid")
                    Spacer()
                    Text("110 ml time")
                }
            }
//            .padding()
            .padding(.leading)
            .padding(.trailing)
            .padding(.top)
        }
        .navigationBarTitle(Text("Feeding"), displayMode: .inline)
        .frame(minWidth: 0,  maxWidth: Screen.width/1.25, minHeight: 0,  maxHeight: .infinity)
        .padding()
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}