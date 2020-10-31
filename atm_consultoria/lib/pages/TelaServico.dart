import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  @override
  _TelaServicoState createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Serviços',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset('images/detalhe_servico.png'),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Serviços Oferecidos',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Serviços de consultoria em algumas coisas:',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontStyle: FontStyle.normal),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                _lorem_ipsum,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontStyle: FontStyle.normal),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _lorem_ipsum =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum eu enim eu volutpat. Sed ac ornare magna, sed porta dolor. Nam eleifend nisi ultricies magna mattis consequat. Nunc ac faucibus arcu. Nullam aliquet lacus augue, ut blandit augue sagittis eget. Morbi sollicitudin nisl non ipsum pretium, vitae volutpat elit ultrices. Donec ac dignissim arcu. Donec non eros posuere, maximus purus eu, mattis ipsum. Nulla aliquet pellentesque dictum. Duis non ultricies libero, sit amet ullamcorper massa. In eleifend tincidunt justo, eget feugiat lectus commodo vitae. Sed consectetur ornare diam quis malesuada. Duis fermentum auctor ipsum at ultrices\nDuis egestas, ligula eu tristique semper, neque tortor aliquet quam, nec posuere urna lacus sit amet ligula. Sed interdum ullamcorper arcu, vitae vehicula lorem dignissim vel. Vivamus eu rhoncus eros. Duis eros ligula, semper id aliquet congue, accumsan eget mi. Curabitur tincidunt leo risus, sit amet pretium risus facilisis sed. Donec ut viverra sapien. Praesent non laoreet eros. Integer egestas tempus sapien a posuere. Phasellus feugiat neque aliquet leo semper scelerisque. Suspendisse venenatis neque in scelerisque rutrum. Morbi id neque sit amet ligula gravida mattis.\nDuis ullamcorper leo nec aliquet aliquam. Phasellus lobortis est eu aliquet accumsan. Pellentesque in eros urna. Vivamus euismod turpis ac elementum tincidunt. Praesent elementum semper rutrum. Vestibulum tempus est non justo sollicitudin porta. Aenean a sollicitudin magna. In efficitur venenatis tortor, sit amet egestas purus condimentum nec. Quisque consectetur tellus risus, sed bibendum odio dignissim id. Suspendisse eget odio a enim tempor bibendum et quis mi. In pharetra tellus ac leo ultricies rhoncus.\nAliquam erat volutpat. Aenean euismod vel justo vel mollis. Vivamus ullamcorper est metus, at suscipit neque ornare vel. Fusce at convallis neque. Nunc venenatis dignissim diam, quis laoreet lacus sollicitudin quis. Aliquam turpis tellus, mattis et aliquam iaculis, rutrum vitae sapien. Etiam mollis velit non fermentum fringilla.";
}
