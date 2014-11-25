import Foundation

class Calculadora {
    private var displayInterno: String
    private var operador: String
    private var operando1: String
    private var operadorPulsado: Bool

    var display: String {
        get {
            var displayString = displayInterno.isEmpty ? "0" : displayInterno
            var displayInt: Int = (displayString as NSString).integerValue
            var displayDouble: Double = (displayString as NSString).doubleValue
            
            displayDouble.nu

            if displayInt == Int(displayDouble) {
                return String(format:"%d", displayInt)
            } else {
                return String(format:"%f", displayDouble)
            }
        }
    }

    init() {
        displayInterno = ""
        operador = ""
        operando1 = ""
        operadorPulsado = false
    }
    
    func pulsadoDigito(digito: String) {
        displayInterno = operadorPulsado ? digito : displayInterno + digito
        operadorPulsado = false
    }
    
    func pulsadoOperador(operador: String) {
        self.operador = operador
        operadorPulsado = true
        operando1 = displayInterno
    }
    
    func pulsadoIgual() {
        var resultado = 0.0
        var operando1 = (self.operando1 as NSString).doubleValue
        var operando2 = (self.displayInterno as NSString).doubleValue

        switch(operador) {
            case "+": resultado = operando1 + operando2
            case "-": resultado = operando1 - operando2
            case "/": resultado = operando1 / operando2
            case "*": resultado = operando1 * operando2
            default: resultado = 0.0
        }
        
        operadorPulsado = false
        displayInterno = String(format:"%f", resultado)
    }
}