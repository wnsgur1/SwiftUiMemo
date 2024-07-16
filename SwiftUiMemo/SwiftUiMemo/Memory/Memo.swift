//
//  Memo.swift
//  SwiftUiMemo
//
//  Created by dgsw8th38 on 7/16/24.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject{
    let id: UUID
    @Published var content: String
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now){
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
