import 'package:eccommerce/utils/dimensions.dart';
import 'package:eccommerce/widgets/app_column.dart';
import 'package:eccommerce/widgets/app_icon.dart';
import 'package:eccommerce/widgets/expandable_text.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Background Image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/images/omg.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          // icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          // introduction food
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularFoodImgSize - 20,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: "Sex with grandMotehr",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                          text:
                              "Hoy, yo quiero coger una loqueraCoger una loqueraGuayar por to'a la discoGuayar por to'a la discoGuayar, guayar(Ay, estoy bien loca con la nota en high)Guayar, guayar(Ay, hoy yo no llego a casa de mi ma'i)Ly-Ly-Ly-Ly (guayar)Tú estás chuckyCara linda, a vece' es media putiTu gato te dejó sola en la disco (¿qué?)¡Cabrón, qué rookie!Ponte en cuatro, menea las nalga'Se ve el gistro debajo de la faldaEn sacármela no se tardaSiempre dulce, nunca sabe amargaBotó al novio, prefiere estar solteraEse phillie nunca se queda afueraSiempre con los condone' en la carteraDe las hija de puta, fue la primera, yeah-yeah (Ra-Rauw)Hoy, yo me escapoY me invento un túnel como El ChapoElla quiere amarrarse a un cacoDe Carolina, un bellaco natoYo que falle, dudosoEsta noche, ando peligrosoElla no es mi esposa, pero la esposoMe lo vio y dijo: ¡Ay, qué venoso! (¡Wow, baby!)Hoy, yo quiero coger una loqueraCoger una loqueraGuayar por to'a la discoGuayar por to'a la discoGuayar, guayar(Ay, estoy bien loca con la nota en high)Guayar, guaar(Ay, hoy yo no llego a casa de mi ma'i)A mal momento, buena notaNo me responsabilizo cuando me explotaVoy pa' encimota, chúpame como una gotaY tú si fuera' Viña del Mar, ya tengo to'a las gaviota'Una que se va, y otras bendiciones que lleganHoy quiero una perra que lo mueva como MeganAquí misionamo' y la data no se riega (no)Chambonean, pero no me matan, como OmegaNecesitaba tiempo del que tengoDe todo me aburro, y con nada me entretengoBajando la 1942 sin dividendoNo viven su vida, y yo los entiendoMirando de los bleachers, mi ex de meticheQuiere que me encapriche, pa' que me la chiche, chicheHace tiempo le apagué el switcheNo es que sea pitcher, es que prefiero bad bitches, qué berrinche (sheesh)Estoy puesto pa' coger una nota cabronaExplotar la cuenta y perrearme una culonaDespertar en ite', no te uite'Somo' unos bellacos(Calloway)Hoy, yo quiero coger una loqueraCoger una loqueraGuayar por to'a la discoGuayar por to'a la discoGuayar, guayar(Ay, estoy bien loca con la nota en high)Guayar, guayar(Ay, hoy yo no llego a casa de mi ma'i)Ly-Ly-Ly-Ly (guayar)Tú estás chuckyCara linda, a vece' es media putiTu gato te dejó sola en la disco (¿qué?)¡Cabrón, qué rookie!Ponte en cuatro, menea las nalga'Se ve el gistro debajo de la faldaEn sacármela no se tardaSiempre dulce, nunca sabe amargaBotó al novio, prefiere estar solteraEse phillie nunca se  una gotaY tú si fuera' Viña del Mar, ya tengo to'a las gaviota'Una que se va, y otras bendiciones que lleganHoy quiero una perra que lo mueva como MeganAquí misionamo' y la data no se riega (no)Chambonean, pero no me matan, como OmegaNecesitaba tiempo del que tengoDe todo me aburro, y con nada me entretengoBajando la 1942 sin dividendoNo viven su vida, y yo los entiendoMirando de los bleachers, mi ex de meticheQuiere que me encapriche, pa' que me la chiche, chicheHace tiempo le apagué el switcheNo es que sea pitcher, es que prefiero bad bitches, qué berrinche (sheesh)Estoy puesto pa' coger una nota cabronaExplotar la cuenta y perrearme una culonaDespertar en otra cama que no sea la míaY mandé al carajo a mi ex, si es tremenda porqueríaGua-Guayar(Ay, un perreo con Lyanno, Rauw y Brray)Gua-Guayar, guayar(Ay, vamo' pa' la cama, dime, ¿qué hay?)Ey, no te quite'No te quite', no te uite'Somo' unos bellacos(Calloway)Hoy, yo quiero coger una loqueraCoger una loqueraGuayar por to'a la discoGuayar por to'a la discoGuayar, guayar(Ay, estoy bien loca con la nota en high)Guayar, guayar(Ay, hoy yo no llego a casa de mi ma'i)Ly-Ly-Ly-Ly (guayar)Tú estás chuckyCara linda, a vece' es media putiTu gato te dejó sola en la disco (¿qué?)¡Cabrón, qué rookie!Ponte en cuatro, menea las nalga'Se ve el gistro debajo de la faldaEn sacármela no se tardaSiempre dulce, nunca sabe amargaBotó al novio, prefiere estar solteraEse phillie nunca se queda afueraSiempre con los condone' en la carteraDe las hija de puta, fue la primera, yeah-yeah (Ra-Rauw)Hoy, yo me escapoY me invento un túnel como El ChapoElla quiere amarrarse a un cacoDe Carolina, un bellaco natoYo que falle, dudosoEsta noche, ando peligrosoElla no es mi esposa, pero la esposoMe lo vio y dijo: ¡Ay, qué venoso! (¡Wow, baby!)Hoy, yo quiero coger una loqueraCoger una loqueraGuayar por to'a la discoGuayar por to'a la discoGuayar, guayar(Ay, estoy bien loca con la nota en high)Guayar, guaar(Ay, hoy yo no llego a casa de mi ma'i)A mal momento, buena notaNo me responsabilizo cuando me explotaVoy pa' encimota, chúpame como una gotaY tú si fuera' Viña del Mar, ya tengo to'a las gaviota'Una que se va, y otras bendiciones que lleganHoy quiero una perra que lo mueva como MeganAquí misionamo' y la data no se riega (no)Chambonean, pero no me matan, como OmegaNecesitaba tiempo del que tengoDe todo me aburro, y con nada me entretengoBajando la 1942 sin dividendoNo viven su vida, y yo los entiendoMirando de los bleachers, mi ex de meticheQuiere que me encapriche, pa' que me la chiche, chicheHace tiempo le apagué el switcheNo es que sea pitcher, es que prefiero bad bitches, qué berrinche (sheesh)Estoy puesto pa' coger una nota cabronaExplotar la cuenta y perrearme una culonaDespertar en otra cama que no sea la míaY mandé al carajo a mi ex, si es tremenda porqueríaGua-Guayar(Ay, un perreo con Lyanno, Rauw y Brray)Gua-Guayar, guayar(Ay, vamo' pa' la cama, dime, ¿qué hay?)Ey, no te quite'No te quite', no te uite'Somo' unos bellacos(Calloway)"),
                    ),
                  ),
                ],
              ),
            ),
          )
          //expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeighBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  Dimensions.radius20,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
            )
          ],
        ),
      ),
    );
  }
}
