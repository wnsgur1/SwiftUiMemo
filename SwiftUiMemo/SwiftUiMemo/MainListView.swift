//
//  MainListVIew.swift
//  SwiftUiMemo
//
//  Created by dgsw8th38 on 7/16/24.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView{
            List(store.list){ memo in
                VStack(alignment: .leading){
                    Text(memo.content)
                        .font(.body)
                        .lineLimit(1)
                    Text (memo.insertDate, style: .date)
                        .font(.callout)
                        .foregroundColor(.secondary)
                }
            }
            .listStyle(.sidebar)
            .navigationTitle(Text("내 메모"))
        }
        
    }
}

#Preview {
    MainListView()
        .environmentObject(MemoStore())
}
