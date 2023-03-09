//
//  ViewController.swift
//  TwoProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 08/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myTableView: UITableView!
    
    var arreyWoman: [Woman] = [
        Woman(name: "VIÚVA NEGRA", descriptionWoman: "Ao nascer, a Viúva Negra, então conhecida como Natasha Romanova, é entregue à KGB, que a prepara para se tornar sua agente suprema. Porém, o seu próprio governo tenta matá-la quando a União Soviética se desfaz.", createdWoman: "Viuva Negra foi criada por Stan Lee (edição), Don Rico (roteiro) e Don Heck (desenhos).", info: "A personagem apareceu pela primeira vez em Tales of Suspense #52 (abril de 1964) e foi introduzida pela primeira vez como uma espiã russa, antagonista do super-herói Homem de Ferro.", image: "viuva negra"),
        Woman(name: "TEMPESTADE", descriptionWoman: "Tempestade é uma personagem fictícia de história em quadrinhos do Universo Marvel Comics, alter-ego de Ororo Munroe, e membro dos X-Men", createdWoman: "Ororo Munroe, também conhecida como Tempestade, apareceu pela primeira vez em Giant Size X-Men #1, de 1975.", info: "A personagem foi criada por Len Wein e Dave Cockrun.", image: "tempestade"),
        Woman(name: "MULHER MARAVILHA", descriptionWoman: "Mulher-Maravilha é uma personagem fictícia de histórias em quadrinhos publicadas pela editora estadunidense DC Comics, originalmente é uma super-heroína guerreira de origem greco-romana, alter ego da Princesa Diana de Themyscira, ilha oculta, também conhecida como Ilha Paraíso, local da civilização de amazonas.", createdWoman: "Mulher-Maravilha apareceu pela primeira vez nas páginas da DC Comics em outubro de 1941.", info: "Criada pelo escritor e psicólogo, Charles Moulton e pelo desenhista H. G. Peter.", image: "mulher maravilha"),
        Woman(name: "CAPITÃ MARVEL", descriptionWoman: "Capitã Marvel, parte do exército de elite dos Kree, uma raça alienígena, encontra-se no meio de uma batalha entre seu povo e os Skrulls.", createdWoman: "Carol Danvers foi criada pelo roteirista Ray Thomas e desenhada por Gene Colan.", info: "Sua primeira aparição nos quadrinhos aconteceu em março de 1968 com a história Marvel Super-Heroes.", image: "carol"),
        Woman(name: "MULHER - GATO", descriptionWoman: "Ela não possui super poderes, todas as suas habilidades são reflexo do seu treino e experiência, ela é uma excelente lutadora, tem grande flexibilidade, boa em disfarces, especialista em furtos, tem resistência e velocidade, que a tornam bem perigosa.", createdWoman: "Mulher-Gato é o alter ego de Selina Kyle, uma personagem fictícia de histórias em quadrinhos; publicada pela editora estadunidense DC Comics, comumente em associação com o Batman. Criada por Bill Finger e Bob Kane", info: "Mulher-Gato teve sua primeira aparição na edição número 1 de Batman, em 1940, no qual ela é conhecida como A Gata", image: "mulhergato")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
        let XIB = UINib(nibName: "MyCustomXIBCell", bundle: nil)
        myTableView.register(XIB, forCellReuseIdentifier: "cellXIB")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreyWoman.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 4 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyCustomCell {
                cell.setup(womanCell: arreyWoman[indexPath.row])
                return cell
            }
            
        } else {
            if let cellXIB = tableView.dequeueReusableCell(withIdentifier: "cellXIB", for: indexPath) as? MyCustomXIBCell {
                cellXIB.setup(womanXIB: arreyWoman[indexPath.row])
                return cellXIB
            }
        }
        
        return UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let two = self.storyboard?.instantiateViewController(identifier: "two") as? TwoViewController {
            two.womanTwo = arreyWoman[indexPath.row]
            self.navigationController?.pushViewController(two, animated: true)
        }
    }
}
