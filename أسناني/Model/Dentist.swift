//
//  Dentist.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import Foundation

struct Dentist {
    let name : String
    let isSpecialized : Bool
    let degreeTitle : String
    let hospital : String
    let building : Int
    let clinc : Int
    let extensionNumber : String
    let cV : String
    
}

var dentistData : [Dentist] = [
    Dentist(name: "د.مها دشتي", isSpecialized: true, degreeTitle: "استشاري تركيبات وزراعة وتجميل الأسنان", hospital: "مستشفى الأميري", building: 1, clinc: 3, extensionNumber: "103", cV: "University of Manchester BDS - University College London Eastman dental Institute RCSED/RCSI"),
    
    Dentist(name: "د.احمد كمال", isSpecialized: true, degreeTitle: "إختصاصي علاج وتجميل اللثة وزراعة الأسنان", hospital: "مستشفى الأميري", building: 2, clinc: 5, extensionNumber: "102", cV: "اختصاصي علاج وتجميل اللثة و زراعة الأسنان - البورد الأمريكي العام والتخصصي - ماجستير في الصحة العامة ") ]

var dentistData1 : [Dentist] = [
    Dentist(name: "د.أبيار علي", isSpecialized: false, degreeTitle: "", hospital: "", building: 1, clinc: 4, extensionNumber: "55", cV: "بكلريوس طب وجراحة الأسنان - الجامعة الأردنية"),
    
    Dentist(name: "د.موسى الزنكي", isSpecialized: false, degreeTitle: "", hospital: "مستوصف العدان", building: 1, clinc: 2, extensionNumber: "105", cV: "بكلريوس طب وجراحة الأسنان - جامعة الشارقة")
]
