import UIKit

struct exchangeRate {
    
    
    var currencyrate: Double {
        willSet {
            print("환율이 1달러에 \(currencyrate)원에서 \(newValue)원으로 변경 예정입니다.")
        }
        didSet {
            print("환율이 1달러에 \(oldValue)원에서 \(currencyrate) 원으로 변경되었습니다.")
        }
    }
    
    var USD: Double {
        willSet {
            print("\(USD)달러의 환전요청이 \(newValue)달러로 변경될 예정이며, \(newValue)달러는 \(newValue * currencyrate)원으로 환전될 예정입니다.")
        }
        didSet {
            print("\(oldValue)달러의 환전요청이 \(USD)달러로 변경되었고, \(USD)달러는 \(USD * currencyrate)원으로 환전되었습니다.")
        }
    }
    
    var KRW: Double {
        willSet {
            print("\(KRW)원의 환전요청이 \(newValue)원으로 변경될 예정이며, \(newValue)원은 \(newValue / currencyrate)달러로 환전될 예정입니다.")
        }
        didSet {
            print("\(oldValue)원의 환전요청이 \(KRW)로 변경되었고, \(KRW)원은 \(KRW / currencyrate)달러로 환전되었습니다.")
        }
    }
}

var rate = exchangeRate(currencyrate: 1100, USD: 40, KRW: 50000)
rate.currencyrate = 1350
rate.USD = 800
rate.KRW = 500000
