import UIKit

class CalculadoraViewController: UIViewController {
    private var calculadora = Calculadora()
    @IBOutlet weak var displayLabel: UILabel!


    @IBAction func pulsarDigito(sender: UIButton) {
        calculadora.pulsadoDigito(sender.titleLabel!.text!)
        displayLabel.text = calculadora.display
    }
    
    
    @IBAction func pulsarOperador(sender: UIButton) {
        calculadora.pulsadoOperador(sender.titleLabel!.text!)
        displayLabel.text = calculadora.display
    }
    
    
    @IBAction func pulsarIgual(sender: UIButton) {
        calculadora.pulsadoIgual()
        displayLabel.text = calculadora.display
    }
    

    @IBAction func pulsarC(sender: AnyObject) {
    }
    
    
    @IBAction func pulsarMemoria(sender: UIButton) {
    }

    @IBAction func pulsarMemoriaMas(sender: UIButton) {
    }
    
    @IBAction func pulsarMemoriaMenos(sender: UIButton) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

