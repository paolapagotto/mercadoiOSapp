import UIKit

var totalPrice: Double?
var selected: Bool?


class User {
    var name: String
    var cpf: String
    var birthDate: String
    var gender: String
    var email: String
    var address: String
    
    init(name: String, cpf: String, birthDate: String, gender: String,
         email: String, address: String){
        self.name = name
        self.cpf = cpf
        self.birthDate = birthDate
        self.gender = gender
        self.email = email
        self.address = address
    }
    
    //Métodos de cadastro Users (Cliente e Adm)
    func register(){
        
    }
    func editProfile(){
        
    }
    func consultDeliveries(){
        
    }
    
}


class Delivery {
    var idDelivery: Int
    var deliveryAddress: String
    var deliveryDate: String
    var deliveryPrice: Double
    var deliveryTax: Double
    var paymentType: String
    
    init(idDelivery: Int, deliveryAddress: String, deliveryDate: String,
         deliveryPrice: Double, deliveryTax: Double, paymentType: String){
        
        self.idDelivery = idDelivery
        self.deliveryAddress = deliveryAddress
        self.deliveryDate = deliveryDate
        self.deliveryPrice = deliveryPrice
        self.deliveryTax = deliveryTax
        self.paymentType = paymentType
    }
    
    //Métodos de entrega
    func confirmProducts(){
        
    }
    func confirmDeliveryAddress(){
        
    }
    func selectPayment(){
        
    }
    
}

class Product {
    var idProduct: Int
    var brand: String
    var typeOfProduct: String
    var description: String
    var productPrice: Double
    var quantitySelected: Int?
    var productAvailable: Bool
    
    
    init(idProduct: Int, brand: String, var typeOfProduct: String, description: String, productPrice: Double, quantitySelected: Int, productAvailable: Bool){
        
        self.idProduct = idProduct
        self.brand = brand
        self.typeOfProduct = typeOfProduct
        self.description = description
        self.productPrice = productPrice
        self.quantitySelected = quantitySelected
        self.productAvailable = productAvailable
    }
    
    //Métodos Produtos
    func searchProduct(){
        if productAvailable {
            for attribute in Product(){
                
            }
        } else {
            print("This product is not available anymore.")
        }
    }
    
    func selectProduct() -> Double{
        if quantitySelected! > 0 && selected == true{
            totalPrice = totalPrice! + (Double(quantitySelected!) * productPrice)
        } else if quantitySelected == 0 && selected == true {
            totalPrice = totalPrice! + productPrice
        } else {
            print("Don't go away without checking our special prices for you")
        }
        quantitySelected = nil
        totalPrice = nil
        
        return totalPrice!
    }
    
    func checkOut(){
        print("R$\(totalPrice ?? 0.00)")
    }
    
}



