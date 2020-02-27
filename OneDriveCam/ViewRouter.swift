//
//  ViewRouter.swift
//  OneDriveCam
//
//  Created by Travis Brigman on 2/9/20.
//  Copyright © 2020 Travis Brigman. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ViewRouter: ObservableObject {
    @Published var currentView = "home"
}
