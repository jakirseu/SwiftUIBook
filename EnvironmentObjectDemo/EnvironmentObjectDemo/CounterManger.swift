//
//  CounterManger.swift
//  EnvironmentObjectDemo
//
//  Created by Jakir Hossain on 24/12/24.
//

import SwiftUI
class CounterManger: ObservableObject {
    @Published var count: Int = 0
    func increment() {
        count += 1
    }
}
