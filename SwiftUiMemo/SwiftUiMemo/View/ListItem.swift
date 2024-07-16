//
//  ListItem.swift
//  SwiftUiMemo
//
//  Created by dgsw8th38 on 7/16/24.
//

import SwiftUI

struct ListItem: View{
    @ObservedObject var memo: Memo
    
    
    var body: some View{
        VStack(alignment: .leading){
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            Text (memo.insertDate, style: .date)
                .font(.callout)
                .foregroundColor(.secondary)
        }
    }
}


#Preview {
    ListItem(memo: Memo(content: "text"))
}
