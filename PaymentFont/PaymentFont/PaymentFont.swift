//
//  PaymentFont.swift
//  PaymentFont
//
//  Created by Grigory Avdyushin on 11.07.16.
//  Copyright © 2016 Grigory Avdyushin. All rights reserved.
//

import Foundation

public class PaymentFont {
    
    public static let fontName = "paymentfont-webfont"
    
    public enum Symbols: String {
        
        case amazon = "\u{f000}"
        case americanExpress = "\u{f001}"
        case americanExpressAlt = "\u{f002}"
        case atm = "\u{f003}"
        case bankomat = "\u{f004}"
        case bankTransfer = "\u{f005}"
        case bitcoin = "\u{f006}"
        case bitcoinSign = "\u{f007}"
        case braintree = "\u{f008}"
        case btc = "\u{f009}"
        case card = "\u{f00a}"
        case cartaSi = "\u{f00b}"
        case cash = "\u{f00c}"
        case cashOnDelivery = "\u{f00d}"
        case cb = "\u{f00e}"
        case cirrus = "\u{f00f}"
        case cirrusAlt = "\u{f010}"
        case clickandbuy = "\u{f011}"
        case creditCard = "\u{f012}"
        case diners = "\u{f013}"
        case discover = "\u{f014}"
        case ec = "\u{f015}"
        case eps = "\u{f016}"
        case eur = "\u{f017}"
        case facture = "\u{f018}"
        case fattura = "\u{f019}"
        case flattr = "\u{f01a}"
        case giropay = "\u{f01b}"
        case gratipay = "\u{f01c}"
        case googleWallet = "\u{f01d}"
        case googleWalletAlt = "\u{f01e}"
        case gbp = "\u{f01f}"
        case ideal = "\u{f020}"
        case ils = "\u{f021}"
        case inr = "\u{f022}"
        case invoice = "\u{f023}"
        case invoiceSign = "\u{f024}"
        case invoiceSignAlt = "\u{f025}"
        case invoiceSignAltO = "\u{f026}"
        case invoiceSignO = "\u{f027}"
        case jcb = "\u{f028}"
        case jpy = "\u{f029}"
        case krw = "\u{f02a}"
        case maestro = "\u{f02b}"
        case maestroAlt = "\u{f02c}"
        case mastercard = "\u{f02d}"
        case mastercardAlt = "\u{f02e}"
        case mastercardSecurecode = "\u{f02f}"
        case ogone = "\u{f030}"
        case paybox = "\u{f031}"
        case paylife = "\u{f032}"
        case paypal = "\u{f033}"
        case paypalAlt = "\u{f034}"
        case paysafecard = "\u{f035}"
        case postepay = "\u{f036}"
        case quick = "\u{f037}"
        case rechnung = "\u{f038}"
        case ripple = "\u{f039}"
        case rub = "\u{f03a}"
        case skrill = "\u{f03b}"
        case sofort = "\u{f03c}"
        case square = "\u{f03d}"
        case stripe = "\u{f03e}"
        case truste = "\u{f03f}"
        case try_ = "\u{f040}"
        case unionpay = "\u{f041}"
        case usd = "\u{f042}"
        case verifiedByVisa = "\u{f043}"
        case verisign = "\u{f044}"
        case visa = "\u{f045}"
        case visaElectron = "\u{f046}"
        case westernUnion = "\u{f047}"
        case westernUnionAlt = "\u{f048}"
        case wirecard = "\u{f049}"
        case sepa = "\u{f04a}"
        case sepaAlt = "\u{f04b}"
        case applePay = "\u{f04c}"
        case interac = "\u{f04d}"
        case paymill = "\u{f04e}"
        case dankort = "\u{f04f}"
        case bancontactMisterCash = "\u{f050}"
        case moip = "\u{f051}"
        case pagseguro = "\u{f052}"
        case cashOnPickup = "\u{f053}"
        case sage = "\u{f054}"
        case elo = "\u{f055}"
        case eloAlt = "\u{f056}"
        case payu = "\u{f057}"
        case mercadoPago = "\u{f058}"
        case mercadoPagoSign = "\u{f059}"
        case payshop = "\u{f05a}"
        case multibanco = "\u{f05b}"
        case gratipaySign = "\u{f05c}"
        case six = "\u{f05d}"
        case cashcloud = "\u{f05e}"
        
        var stringValue: String? { return self.rawValue }
        
    }

    static var once: dispatch_once_t = 0
    public static func preloadFont() -> Bool {
        
        guard UIFont.fontNamesForFamilyName(PaymentFont.fontName).count == 0 else { return true }
        
        var result = true
        dispatch_once(&PaymentFont.once) {
            
            let bundle = NSBundle(forClass: PaymentFont.self)
            
            guard let URL = bundle.URLForResource(PaymentFont.fontName, withExtension: "ttf"),
                  let data = NSData(contentsOfURL: URL) else {
                    
                result = false
                return
            }
            
            let provider = CGDataProviderCreateWithCFData(data)
            guard let font = CGFontCreateWithDataProvider(provider) else {
                result = false
                return
            }
            
            result = CTFontManagerRegisterGraphicsFont(font, nil)
            
        }
        
        return result
        
    }
    
    public static func font(size size: CGFloat) -> UIFont? {
        PaymentFont.preloadFont()
        return UIFont(name: PaymentFont.fontName, size: size)
    }
    
    public static func icon(icon: Symbols) -> String? {
        return icon.stringValue
    }
        
}
