import Foundation

//Task 1
//Написать функцию, которая на вход принимает число:
//сумма, которую пользователь хочет положить на вклад,
//следующий аргумент это годовой процент,
//третий аргумент это срок
//Функция возвращает сколько денег получит пользователь по итогу.
func calculateDeposit(initialAmount: Double, annualRate: Double, years: Int) -> Double {
    let finalAmount = initialAmount * pow(1 + annualRate / 100, Double(years))
    return finalAmount
}
let result = calculateDeposit(initialAmount: 1000, annualRate: 5, years: 3)
print("Итоговая сумма: \(result)")

//Task 2
//Создать перечисление, которое содержит 3 вида пиццы
//и создать переменные с каждым видом пиццы.
enum PizzaType {
    case margherita
    case pepperoni
    case fourCheese
}

var pizza1: PizzaType = .margherita
var pizza2: PizzaType = .pepperoni
var pizza3: PizzaType = .fourCheese

print("Выбрана пицца: \(pizza1)")
print("Выбрана пицца: \(pizza2)")
print("Выбрана пицца: \(pizza3)")


//Task 3
//Добавить возможность получения названия пиццы через rawValue
enum PizzaType2: String {
    case margherita = "Маргарита"
    case pepperoni = "Пепперони"
    case fourCheese = "Четыре сыра"
}

let pizzaName1: String = PizzaType2.margherita.rawValue
let pizzaName2: String = PizzaType2.pepperoni.rawValue
let pizzaName3: String = PizzaType2.fourCheese.rawValue

print("Выбрана пицца: \(pizzaName1)")
print("Выбрана пицца: \(pizzaName2)")
print("Выбрана пицца: \(pizzaName3)")

