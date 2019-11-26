//
//  InitializeView.swift
//  BabyChild
//
//  Created by Mow on 06/11/2019.
//  Copyright © 2019 Mow. All rights reserved.
//

import SwiftUI

struct InitializeView: View {
    @EnvironmentObject var child: Child
    @ObservedObject var children: Children
    @Binding var activeProfile: Bool
    @State var new: Bool
    
    var body: some View {
        VStack(spacing: 0){
            List {
                if !self.activeProfile{
                    ForEach(self.children.childrenData, id: \.self) {single in
                        HStack {
                            CellChild(child: single)
                        }.onTapGesture {
                            withAnimation{
                                DataHelper.setChild(id: Int(truncating: single.id))
                                self.child.recreate(childData: single)
                                self.activeProfile = true
                            }
                        }
                    }.onDelete { (indexSet) in
                        self.children.delete(index: indexSet.first!)
                    }
                }
            }
            .sheet(isPresented: $new) {
                CreateProfileView(children: self.children, new: self.$new).environmentObject(self.child)
            }
            .listStyle(GroupedListStyle())
            Button(action: { self.new = true }) {
                RedirectButtonView(name: "Make new profile", background: .gray)
            }
        .padding()
        }
    }
}

struct InitializeView_Previews: PreviewProvider {
    static var previews: some View {
        InitializeView(children: Children(), activeProfile: .constant(true), new: true)
    }
}
