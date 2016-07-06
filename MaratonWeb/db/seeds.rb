

deck1 = Deck.create(name_deck: "Matematicas")
card1 = Card.create(question: "¿Cuanto es 5 * 5?", answer: "25")
card2 = Card.create(question: "¿Cuanto es 5 + 5?", answer: "10")
card3 = Card.create(question: "¿Cuanto es 5 / 5?", answer: "1")
card4 = Card.create(question: "¿Cuanto es 23 + 10?", answer: "33")
card5 = Card.create(question: "¿Cuanto es pi con 4 decimales?", answer: "3.1416")
deck1.cards << card1
deck1.cards << card2
deck1.cards << card3
deck1.cards << card4
deck1.cards << card5

deck2 = Deck.create(name_deck: "Variado")
card1 = Card.create(question: "¿Quien es el creador de Apple ", answer: "Steve Jobs")
card2 = Card.create(question: "¿Cuantos años tiene un lustro?", answer: "5")
card3 = Card.create(question: "¿Que cantidad de huesos tiene en total el ser humano?", answer: "206")
card4 = Card.create(question: "¿Como se llama el lugar rodeado de tres cuerdas donde pelean los boxeadores?", answer: "Ring")
card5 = Card.create(question: "¿Quien es el creador de Tesla Motors?", answer: "Elon Muks")
deck2.cards << card1
deck2.cards << card2
deck2.cards << card3
deck2.cards << card4
deck2.cards << card5

deck3 = Deck.create(name_deck: "Cultura General")
card1 = Card.create(question: "¿En cual país se encuentra la torre de Pisa?", answer: "Italia")
card2 = Card.create(question: "¿Cual es la nación mas pequeña del mundo entero?", answer: "El Vaticano")
card3 = Card.create(question: "¿A cual ciudad se le conoce como  la ciudad de los rascacielos?", answer: "Nueva York")
card4 = Card.create(question: "¿Cual es el nombre de la lengua hablada en china?", answer: "Mandarin")
card5 = Card.create(question: "¿Quien pinto la ultima cena?", answer: "Leonardo da Vinci")
deck3.cards << card1
deck3.cards << card2
deck3.cards << card3
deck3.cards << card4
deck3.cards << card5