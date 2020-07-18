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
    let building : String
    let clinc : String
    let extensionNumber : String
    let cV : String
    
}

var dentistData : [Dentist] = [
    Dentist(name: "د.مها دشتي",
            isSpecialized: true,
            degreeTitle: "استشاري تركيبات وزراعة وتجميل الأسنان",
            hospital: "مستشفى الأميري", building: "١", clinc: "٣",
            extensionNumber: "١٠٣",
            cV: """
1- University of Manchester BDS.
2- University College London Eastman dental Institute RCSED/RCSI
"""),
    
    Dentist(name: "د.احمد كمال", isSpecialized: true,
            degreeTitle: "إختصاصي علاج وتجميل اللثة وزراعة الأسنان",
            hospital: "مستشفى الأميري",
            building: "٢", clinc: "٥",
            extensionNumber:"١٠٢",
            cV: """
 ١- اختصاصي علاج وتجميل اللثة و زراعة الأسنان
 ٢- البورد الأمريكي العام والتخصصي - ماجستير في الصحة العامة
 """
    ) ]

var dentistData1 : [Dentist] = [
    Dentist(name: "د.أبيار علي",
            isSpecialized: false,
            degreeTitle: "طبيب أسنان مساعد مسجل",
            hospital: "مستوصف بيان",
            building: "١", clinc: "٣",
            extensionNumber: "١٥",
            cV: "بكلريوس طب وجراحة الأسنان"),
    
    Dentist(name: "د.موسى الزنكي",
            isSpecialized: false,
            degreeTitle: "طبيب أسنان مساعد مسجل",
            hospital: "مستوصف بيان",
            building: "١", clinc: "٤",
            extensionNumber: "٣٥",
            cV: "بكلريوس طب وجراحة الأسنان"),
    
    Dentist(name: "د.روان البناي",
            isSpecialized: false,
            degreeTitle: "طبيب أسنان مساعد مسجل",
            hospital: "مستوصف بيان",
            building: "١", clinc: "٥",
            extensionNumber: "٩٩",
            cV: "بكلريوس طب وجراحة الأسنان"),
    
    Dentist(name: "د. رقية زمان",
            isSpecialized: false,
            degreeTitle: "طبيب أسنان مساعد مسجل",
            hospital: "مستوصف بيان",
            building: "١", clinc: "٣",
            extensionNumber: "١٦",
            cV: "بكلريوس طب وجراحة الأسنان")
    
    
]
