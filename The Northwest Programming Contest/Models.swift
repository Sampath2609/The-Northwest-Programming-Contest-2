//
//  Models.swift
//  The Northwest Programming Contest
//
//  Created by Student on 14/03/19.
//  Copyright © 2019 Rahul  Reddy. All rights reserved.
//

class Schools{
    private var schools:[School]
    
    static var shared = Schools()
    
    init(schools: [School]) {
        self.schools = schools
        self.schools.append(School(name: "Northwest", coach: "Rodgers"))
    }
    
    convenience init(){
        self.init(schools: [])
    }
    
    func numSchools() -> Int{
        return schools.count
    }
    
    subscript(index:Int) -> School {
        return schools[index]
    }
    
    func add(school:School){
        schools.append(school)
    }
    
    func delete(school:School){
        for i in 0 ..< schools.count {
            if schools[i] == school {
                schools.remove(at:i)
                break
            }
        }
    }
    
}

class School:Equatable{
    var name: String
    var coach: String
    var teams: [Team]
    
    func addTeam(name: String, students: [String]){

        teams.append(Team(name: name, students: students))
    }
    
    init(name: String, coach: String) {
        self.name = name
        self.coach = coach
        self.teams = []
    }
    
    static func == (lhs: School, rhs: School) -> Bool {
        return lhs.name == rhs.name && lhs.coach == rhs.coach && lhs.teams == rhs.teams
    }
}

class Team : Equatable{
    var name: String
    var students: [String]
    
    init(name: String, students: [String]){
        self.name = name
        self.students = students
    }
    
    static func == (lhs: Team, rhs: Team) -> Bool {
        return lhs.name == rhs.name && lhs.students == rhs.students
    }
}
