import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key, this.d1, this.d2, this.d3, this.d4})
      : super(key: key);

  final String d1;
  final String d2;
  final String d3;
  final String d4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estudio numerológico"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hola ' + d1,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'El resultado de su estudio es: \n',
              ),
              Text(
                'La urgencia interior es como tendemos a ser, como un signo zodiacal, pero numérico. Tu urgencia interior es: ' +
                    urgencia(d1, d2, d3, d4).toString() +
                    ' Este número hace a la persona ' +
                    urgenciaText(urgencia(d1, d2, d3, d4)),
              ),
              Text(
                '\nLa tónica fundamental es en lo que tenemos que trabajar para triunfar en la vida. Tu tónica fundamental es: ' +
                    tonicaFundamental(d1, d2, d3, d4).toString() +
                    ' Este número indica que la persona tiene que ' +
                    tonicaFundamentalText(tonicaFundamental(d1, d2, d3, d4)),
              ),
              Text(
                '\nTu número para hoy es: ' +
                    tonicaDelDia(d1, d2, d3, d4).toString() +
                    ' lo que indica que para tener más probabilidades de éxito en lo que te propongas este día, deberías: ' +
                    tonicaDelDiaText(tonicaDelDia(d1, d2, d3, d4)),
              ),
              Text(
                '\nA esta hora de este mismo día, lo mejor es regirse bajo el número: ' +
                    acontecimientoDelDia(d1, d2, d3, d4).toString() +
                    ' para realizar con éxito lo que deseas ahora. ',
              ),
              Text(cabalaDelAnoTexto(d1, d2, d3, d4)),
            ],
          ),
        ),
      ),
    );
  }

  int urgencia(String d1, d2, d3, d4) {
    int dia = int.parse(d2);
    int mes = int.parse(d3);
    int ano = int.parse(d4);
    int urgencia =
        digitosSuma(dia) + digitosSuma(mes) + digitosSuma(digitosSuma(ano));
    urgencia = digitosSuma(urgencia);
    return urgencia;
  }

  int tonicaFundamental(String d1, d2, d3, d4) {
    d1 = d1.replaceAll(" ", "");
    int datoPrevio = d1.length;
    datoPrevio = digitosSuma(datoPrevio);
    datoPrevio = digitosSuma(datoPrevio);
    int datoUrgencia = urgencia(d1, d2, d3, d4);
    int retornar;
    retornar = datoPrevio + datoUrgencia;
    retornar = digitosSuma(retornar);
    retornar = digitosSuma(retornar);
    return retornar;
  }

  int tonicaDelDia(String d1, d2, d3, d4) {
    DateTime diaA = new DateTime.now();
    int dia = diaA.day;
    int mes = diaA.month;
    int ano = diaA.year;
    int sumaCabalistica =
        digitosSuma(dia) + digitosSuma(mes) + digitosSuma(digitosSuma(ano));
    int tonicaFund = tonicaFundamental(d1, d2, d3, d4);
    int retornar = sumaCabalistica + tonicaFund;
    retornar = digitosSuma(retornar);
    return retornar;
  }

  Map<int, int> cabalaDelAno(String d1, d2, d3, d4) {
    int suma = int.parse(d4) + digitosSuma(int.parse(d4));
    Map<int, int> arcanas = Map<int, int>();
    for (int i = 0; i < 5; i++) {
      arcanas[suma] = sumaCabalistica(suma);
      suma += digitosSuma(suma);
    }
    return arcanas;
  }

  String cabalaDelAnoTexto(String d1, d2, d3, d4) {
    Map<int, int> arcana = cabalaDelAno(d1, d2, d3, d4);
    String retornar =
        '\nDurante la vida tenemos años espaciales relacionados con la ley de causa y efecto (Karma), ' +
            'dependerá de uno si el número nos favorezca o esté en contra de uno, por sus actos.\n';
    arcana.forEach((key, value) {
      retornar += '\nAño: $key, número regente: $value';
    });
    return retornar;
  }

  int acontecimientoDelDia(String d1, d2, d3, d4) {
    DateTime diaA = new DateTime.now();
    int hour = diaA.hour % 12;
    if (hour == 0) hour = 12;
    return sumaCabalistica(hour + tonicaDelDia(d1, d2, d3, d4));
  }

  int digitosSuma(int numEntero) {
    int extNum;
    int sumDigit = 0;
    while (numEntero != 0) {
      extNum = numEntero % 10;
      numEntero = (numEntero / 10).truncate();
      sumDigit += extNum;
    }
    return sumDigit;
  }

  int sumaCabalistica(int number) {
    while (number >= 10) {
      number = digitosSuma(number);
    }
    return number;
  }

  String urgenciaText(int a) {
    List<String> urgenciaTextos = [
      'emprendedora, original, con voluntad.',
      'sociable, con imaginación.',
      'creativa, con arte y belleza.',
      'firme, sólida.',
      'razonativa, con rigor, propensa al aprendizaje.',
      'cariñosa, indecisa.',
      'tendiente a luchar.',
      'paciente.',
      'generosa, con ideas geniales, independiente.',
    ];
    return urgenciaTextos[a - 1];
  }

  String tonicaFundamentalText(int a) {
    List<String> tonicaFundamentalTextos = [
      'trabajar con mucha voluntad, con ideas originales, ser emprendedor.',
      'aprender a asociarse con los demás, escuchar opiniones contrarias sin enojarse, desarrollar la imaginación creadora.',
      'trabajar con arte y belleza en todo lo que haga, en el vestir, en el hablar.',
      'poner las bases firmes en sus proyectos y trabajos.',
      'ver el pro y el contra de todo lo que se proponga.',
      'ser decisivo y poner cariño a lo que haga.',
      'poner mucho empeño en todo lo que haga.',
      'ser muy paciente, saber esperar.',
      'ser generosa y genial, de preferencia trabajar independientemente.',
    ];
    return tonicaFundamentalTextos[a - 1];
  }

  String tonicaDelDiaText(int a) {
    List<String> tonicaDelDiaTextos = [
      'trabajar con mucha voluntad, con ideas originales, ser emprendedor.',
      'aprender a asociarse con los demás, escuchar opiniones contrarias sin enojarse, desarrollar la imaginación creadora.',
      'trabajar con arte y belleza en todo lo que haga, en el vestir, en el hablar.',
      'poner las bases firmes en sus proyectos y trabajos.',
      'ser decisivo y poner cariño a lo que haga.',
      'ver el pro y el contra de todo lo que se proponga.',
      'poner mucho empeño en todo lo que haga.',
      'ser muy paciente, saber esperar.',
      'ser generosa y genial, de preferencia trabajar independientemente.',
    ];
    return tonicaDelDiaTextos[a - 1];
  }
}