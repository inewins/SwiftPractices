//
//  NumeroUno.swift
//  Quizzy
//
//  Created by Anh Nguyen on 2/21/25.
//
//The first enumeration will represent the products a user can purchase and will store raw values that represent the display name of the software.
//
//The second enumeration will represent the edition of the software and will contain a mutating method.
//
//The final enumeration will represent the delivery methods available to the customer and will have associated values and a computed property.
//
//We’ll also be creating a few functions to complete the functionality of the store. One will iterate through the enumeration containing the various products a user can purchase. The other will send an order confirmation to the user based on the details of their order.
enum ProductType: String, CaseIterable{
  case aceRepository = "Ace Repository"
  case dealForcer = "Deal Forcer"
  case kadencePlanner = "Kadence Planner"
  case mailCannon = "Mail Cannon"

  func displayProductOfferings(){
    print("There are \(ProductType.allCases.count) products:")
    for products in ProductType.allCases {
      print(products.rawValue)
    }
  }
}

enum Edition: String {
  case basic
  case premium
  case ultimate

  mutating func upgrade() {
    switch self{
      case .basic:
        self = .premium
      case .premium:
        self = .ultimate
      case .ultimate:
        print("Can't upgrade further")
    }
  }
}

enum DeliveryMethod {
  case cloudDigital(isLifetime: Bool)
  case shipping(weight: Int)

  var shippingCost: Int {
  switch self {
    case .shipping(let weight):
      return weight * 2
    case .cloudDigital:
      return 0
      }
      }
}

func sendOrderConfirmation(of productType: ProductType, in edition: Edition, by deliveryMethod: DeliveryMethod) {
    print("Thank you for purchasing the \(edition.rawValue) edition of \(productType.rawValue)")

    if case .shipping = deliveryMethod {
        print("Your order will be shipped to you at a cost of $\(deliveryMethod.shippingCost)")
    } else if case .cloudDigital(isLifetime: true) = deliveryMethod {
      print("You have lifetime cloud access")
    } else if case .cloudDigital(isLifetime: false) = deliveryMethod {
      print("You can access your subscription information on the cloud")
    }
    
}

var myEdition = Edition.premium
myEdition.upgrade()

sendOrderConfirmation(of: ProductType.mailCannon, in: myEdition, by: DeliveryMethod.cloudDigital(isLifetime: true))


