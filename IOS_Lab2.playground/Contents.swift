import UIKit
struct Meal {
    var name: String;
    var calories: Int?;
    var type: String?;
    var mealType: MealType;
    func describe() {
        print(describeMeal(meal: self))
    }
}

enum MealType: String {
    case breakfast = "Сніданок"
    case lunch = "Обід"
    case dinner = "Вечеря"
}

func describeMeal(meal:Meal) -> String {
    var description = "Страва: \(meal.name), Прийом їжі: \(meal.mealType)"
    if let calories = meal.calories {
        description += ", Калорійність: \(calories)"
    }
    if let type = meal.type {
        description += ", Тип: \(type)"
    }
    return description
}

let meals: [Meal] = [
    Meal(name: "Борщ", calories: 250, type: "Перша страва", mealType: .lunch),
    Meal(name: "Стейк", calories: 400, type: "Друга страва", mealType: .lunch),
    Meal(name: "Омлет", calories: 180, type: "Сніданок", mealType: .breakfast),
    Meal(name: "Салат", calories: 70, type: "Закуска", mealType: .dinner)
]

for meal in meals {
    print (describeMeal(meal: meal))
}

print(" ")

for meal in meals {
    meal.describe()
}

print(" ")

class Chef {
    var name: String;
    var favoriteMeal: Meal?;
    init(name: String, favoriteMeal: Meal? = nil) {
        self.name = name
        self.favoriteMeal = favoriteMeal
    }
    func showFavoriteMeal() {
        print("Шеф-кухар \(name) має улюблену страву:")
        if let favorite = favoriteMeal {
            favorite.describe()
        }
    }
}
let chef = Chef(name: "Гордон Рамзі", favoriteMeal: meals[1])
chef.showFavoriteMeal()
