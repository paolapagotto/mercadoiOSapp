import UIKit

var totalPrice: Double?
var selected: Bool?
var confirmed: Bool?

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
    
    //Métodos de cadastro Users (Cliente & Adm)
    func register() -> Bool {
        //se cpf já existe, print "user already registered"
        //se cpf não for preenchido ou não tiver 11 char, print "cpf number invalid"
        //se cpf tiver 11 char e for novo, permirtir cadastro
        }
    }
    func editProfile(){
        
        
    }
    func consultDeliveries() -> String {
        if checkOut! {
            //se houver idDelivery válido no cpf do usuario
            print("Your delivery \(Delivery:) is on it way")
        } else {
            print("There are no deliveries")
        }
        checkOut = nil
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
    func confirmProducts() -> Bool {
        print("Confirm list of Products Selected:")
        if confirmed! {
            //imprimir propriedades dos produtos selecionados (lista)
            print("")
            return true
        } else {
            print("Keep buying at our website")
        }
    }
    func confirmDeliveryAddress() -> Bool {
        print("Please confirm the delivery address:")
        if confirmed! {
            return true
        } else {
            print("Please correct your address for delivery")
        }
    }
    func selectPayment(){
        print("Please select your payment type:")
        //código aqui para selecionar tipo de pagamento (cartão débito ou crédito)
        
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
    
    
    init(idProduct: Int, brand: String, typeOfProduct: String, description: String, productPrice: Double, quantitySelected: Int, productAvailable: Bool){
        
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
            //print propriedades do produto
            for attribute in Product(attribute){
                print(attribute)
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
        print("TOTAL: R$\(totalPrice ?? 0.00)")
    }
    
}



