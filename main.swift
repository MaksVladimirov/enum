import Foundation

// 2 enum с разным типом RawValue
enum StatusCode: Int {
    case success = 200
    case notFound = 404
    case serverError = 500
}

enum UserRole: String {
    case admin = "Administrator"
    case user = "Regular User"
    case guest = "Guest User"
}

// Enum для анкеты сотрудника
enum Gender: String {
    case male = "Male"
    case female = "Female"
    case other = "Other"
}

enum AgeCategory: String {
    case young = "18-25"
    case middleAged = "26-40"
    case senior = "40+"
}

enum Experience: String {
    case junior = "0-2 years"
    case middle = "2-5 years"
    case senior = "5+ years"
}

// Enum со всеми цветами радуги
enum RainbowColor: String {
    case red, orange, yellow, green, blue, indigo, violet
}

// Функция, выводящая массив case'ов enum в консоль
func printColorAssociations() {
    let associations: [(String, RainbowColor)] = [
        ("apple", .green),
        ("sun", .red),
        ("ocean", .blue),
        ("fire", .orange)
    ]
    
    for (object, color) in associations {
        print("\(object) \(color.rawValue)")
    }
}

// Функция, которая выставляет оценки ученикам в школе
enum Score: String {
    case excellent = "A"
    case good = "B"
    case average = "C"
    case poor = "D"
    case fail = "F"
}

func getNumericScore(score: Score) -> Int {
    switch score {
    case .excellent: return 5
    case .good: return 4
    case .average: return 3
    case .poor: return 2
    case .fail: return 1
    }
}

// Метод, который выводит, какие автомобили стоят в гараже
enum CarBrand: String {
    case toyota, bmw, mercedes, audi, ford
}

func printGarageCars(cars: [CarBrand]) {
    print("Cars in the garage:")
    for car in cars {
        print(car.rawValue.capitalized)
    }
}

// Примеры вызова функций
printColorAssociations()
print("Score B is: \(getNumericScore(score: .good))")
printGarageCars(cars: [.bmw, .toyota, .audi])
