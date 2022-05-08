//
//  SecretItem.swift
//  The Secret
//
//  Created by Galih Laras Prakoso on 09/05/22.
//

import Foundation

class SecretItem {
    let title: String
    let date: String
    let iconName: String
    
    init(
        title: String,
        date: String,
        iconName: String
    ) {
        self.title = title
        self.date = date
        self.iconName = iconName
    }
    
    static let secretItems: [SecretItem] = [
        SecretItem(
            title: "Instagram Account",
            date: "Tuesday, 22 April 2022",
            iconName: "lockshield"
        ),
        SecretItem(
            title: "Private Links",
            date: "Wednesday, 23 April 2022",
            iconName: "handpoint"
        ),
        SecretItem(
            title: "Private Notes",
            date: "Thursday, 24 April 2022",
            iconName: "pencil"
        ),
        SecretItem(
            title: "Facebook Account",
            date: "Friday, 25 April 2022",
            iconName: "lockshield"
        ),
        SecretItem(
            title: "Movie Links",
            date: "Saturday, 26 April 2022",
            iconName: "handpoint"
        ),
        SecretItem(
            title: "Private Notes",
            date: "Sunday, 27 April 2022",
            iconName: "pencil"
        ),
        SecretItem(
            title: "Instagram Account",
            date: "Tuesday, 22 April 2022",
            iconName: "lockshield"
        ),
        SecretItem(
            title: "Private Links",
            date: "Wednesday, 23 April 2022",
            iconName: "handpoint"
        ),
        SecretItem(
            title: "Private Notes",
            date: "Thursday, 24 April 2022",
            iconName: "pencil"
        ),
        SecretItem(
            title: "Facebook Account",
            date: "Friday, 25 April 2022",
            iconName: "lockshield"
        ),
        SecretItem(
            title: "Movie Links",
            date: "Saturday, 26 April 2022",
            iconName: "handpoint"
        ),
        SecretItem(
            title: "Private Notes",
            date: "Sunday, 27 April 2022",
            iconName: "pencil"
        ),
    ]
}
