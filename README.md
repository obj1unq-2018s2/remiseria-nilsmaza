# Remisería
Hacer un modelo para la remiseria "uver" y "cabifai", ambas pertenecen al mismo dueño. Vamos a trabajar con la flota de vehículos de estas remiseras que suelen trabajar con los mismos autos.
Un auto puede trabajar durante la semana el "uver" y el fin de semana en "cabifai" y otros autos pueden estar registradas en ambas remiseras al mismo tiempo y atender pedidos de ambas.

De cada vehículo nos van a interesar: capacidad (o sea, cantidad de pasajeros que pueden transportar), velocidad máxima, color y peso.

## Considerar estos vehículos:

3 `Chevrolet Corsa`, 2 de color gris plata y uno negro. La capacidad  es 4 pasajeros en los 3.
Uno de los corsa gris plata está fundido y su velocidad máxima es de 100 km/h, los otros dos tienen una velocidad máxima  de 150 km/h. Los corsas grises pesan 1300 kg y el corsa negro pesa 1450 kg porque el dueño es fan de tunning y le puso un parlante gigante en el baúl. 

Dos `Renault 12` que funcionan a gas, uno de color `gris`y otro verde. Cada uno de ellos puede tener puesto, o no, un tanque adicional. La capacidad de un auto a gas es de 4 pasajeros si no tiene puesto el tanque adicional, o 3 pasajeros si sí lo tiene puesto. La velocidad máxima es 120 km/h con, o 110 km/h sin, tanque adicional. El peso es 1200 kg, más 150 kg adicionales si tiene tanque adicional.

Una `Trafic`, que es reconfigurable, porque se le puede cambiar el interior y el motor. La capacidad de la Trafic es la de su interior, la velocidad máxima la que indique su motor, el peso es 4000 kg más lo que pesen interior y motor, y es de color blanco.

Prever dos interiores, uno cómodo (capacidad 5, peso 700 kg) y otro popular (capacidad 12, peso 1000 kg). Y dos motores, uno pulenta (velocidad máxima 130 km/h, peso 800 kg) y otro batatón (velocidad máxima 80 km/h, peso 500 kg).
Autos que son todos distintos entre sí, de cada uno hay que especicar capacidad, velocidad máxima, peso y color.

Ambas `remisería` debe aceptar los siguientes mensajes:

`agregarAFlota(vehiculo)` y `quitarDeFlota(vehiculo)`.

`pesoTotalFlota()`, la suma del peso de cada vehículo agregado a la flota.

`esRecomendable()`, es verdadero si la remisería tiene al menos 3 vehículos, y además, todos los vehículos registrados en la remisería pueden ir al menos a 100 km/h.

`capacidadTotalYendoA(velocidad)`, la cantidad total de personas que puede transportar la remisería, considerando solamente los autos de su flota cuya velocidad máxima sea mayor o igual a la velocidad indicada.

`colorDelAutoMasRapido()`, eso.

Se pide:

1. Implementar  objetos que hagan falta para modelar autos y remiserías según lo que se describió.

2. Armar un test en el que esten las  dos remiserías.
Los autos de "uver" son: dos Corsa, el negro y el gris fundido; un R12 con el tanque adicional puesto.
Los autos de "cobifai" son: los restantes.

Hacer asserts sobre cada una, respecto del peso total, si es recomendable o no, la capacidad total yendo a 140 km/h, y el color del auto más rápido.

3. Agregar al modelo los viajes. De cada viaje nos interesa: los kilómetros, el tiempo máximo de viaje en horas, la cantidad de pasajeros, y también un conjunto de colores incompatibles, o sea, que los pasajeros rechazan hacer el viaje en autos de esos colores.
Las remiseras solo pueden aceptar un viaje solo si tiene al menos un auto que pueda realizar el viaje. Para que un auto pueda hacer un viaje se tienen que dar tres condiciones: que la velocidad máxima sea al menos 10 km/h mayor a la velocidad promedio que necesita el viaje (que es kilómetros dividido tiempo máximo); que la capacidad del auto dé para la cantidad de pasajeros del viaje; y que el auto no sea de un color incompatible para el viaje.
