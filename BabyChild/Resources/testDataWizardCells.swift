//
//  testDataWizardCells.swift
//  BabyChild
//
//  Created by Mowsumi Rahman on 30/10/2019.
//  Copyright © 2019 Mowsumi Rahman. All rights reserved.
//

import Foundation
import SwiftUI


// Data for wizard cells

let wizardMenu: [MenuItems] = [
    MenuItems(i: 1, n: "Emergency and remedies", p: 2),
    MenuItems(i: 2, n: "Baby handle videos", p: 2),
    MenuItems(i: 9, n: "Paediatrician", p: 2),
    MenuItems(i: 4, n: "Mommy", p: 1),
    MenuItems(i: 5, n: "Daddy", p: 0),
    MenuItems(i: 7, n: "Milestones", p: 1),
    MenuItems(i: 10, n: "Advices", p: 0),
]

let wizardMenuSegue: [MenuItems] = [
    MenuItems(i: 1, n: "Allergies", p: 2),
    MenuItems(i: 2, n: "Cold", p: 2),
    MenuItems(i: 3, n: "Treating baby in summer", p: 1),
    MenuItems(i: 4, n: "Rashes", p: 1),
]

let wizardMother: [MenuItems] = [
    MenuItems(i: 1, n: "Advices", p: 0),
    MenuItems(i: 2, n: "Vaccinations", p: 2),
    MenuItems(i: 3, n: "Appointments", p: 2),
    MenuItems(i: 4, n: "Where to get help?", p: 1),
]
