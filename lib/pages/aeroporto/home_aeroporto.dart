import 'package:flutter/material.dart';
import 'package:infraero/pages/aeroporto/lista_aeroportos.dart';
import 'package:infraero/pages/config/app_gradient.dart';
import 'package:infraero/pages/config/app_text_styles.dart';
class HomeAeroporto extends StatelessWidget {

  void avancar(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ListaAeroportos()));
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar:
        PreferredSize(
            preferredSize: Size.fromHeight(150),
            child: SafeArea(
                top: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row( children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          }),],),
                    Row(
                      children:<Widget>[
                        Text("Localização do Aeroporto", style: AppTextStyles.titleBlue,)],
                      mainAxisAlignment: MainAxisAlignment.center,)
                    ,],))),
        body: SafeArea(
          child:  PageView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget> [
                Container(
                  decoration: BoxDecoration(gradient: AppGradients.linear),

                  child: Column(
                      children: <Widget> [
                  //       Padding(padding: EdgeInsets.only(bottom: 60)),
                  //       Text("Infraero", style: AppTextStyles.title,)
                  Row(children: <Widget> [
                    ElevatedButton(
                        onPressed: (){
                          avancar(context);
                        },
                        child: Text("Avançar", style: AppTextStyles.button),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          padding:MaterialStateProperty.all( EdgeInsets.symmetric(horizontal: 60)),
                        )),],
                    mainAxisAlignment: MainAxisAlignment.center, ),
                ]),
                )
              ]
            // ),
          ),
        )
    );
  }
}