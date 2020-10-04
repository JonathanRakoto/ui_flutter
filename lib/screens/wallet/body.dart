import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_flutter/components/button/wallet/index.dart';
import 'package:ui_flutter/components/card/wallet/index.dart';
import 'package:ui_flutter/constants/size.dart';
import 'package:ui_flutter/constants/styles.dart';

class BodyWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFECF0F1),
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: walletColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)
                )
              ),
              child: CardWallet()
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(defaultPadding),
                  vertical: getProportionateScreenWidth(defaultPadding)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWallet(
                    title: 'Send',
                    icon: Icon(FontAwesomeIcons.levelUpAlt, color: sendMoneyColor)
                  ),
                  SizedBox(width: 10),
                  ButtonWallet(
                    title: 'Receive',
                    icon: Icon(FontAwesomeIcons.levelDownAlt, color: positiveColor),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(defaultPadding)),
              alignment: Alignment.topLeft,
              child: Text('Currency', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(defaultPadding),
                vertical: getProportionateScreenWidth(defaultPadding / 2),
              ),
              alignment: Alignment.topLeft,
              child: Container(
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(defaultPadding),
                          vertical: getProportionateScreenWidth(defaultPadding / 2)
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFFE67E22),
                          child: Icon(
                            FontAwesomeIcons.bitcoin,
                            color: Colors.white,
                          ),
                        ),
                        title: Text('Bitcoin'),
                        trailing: Text('\$8,000'),
                      )
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(defaultPadding),
                          vertical: getProportionateScreenWidth(defaultPadding / 2)
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFFDCDFE0),
                          child: Icon(
                            FontAwesomeIcons.ethereum,
                            color: Color(0xFF2980B9),
                          ),
                        ),
                        title: Text('Ethereum'),
                        trailing: Text('\$450'),
                      )
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(defaultPadding),
                          vertical: getProportionateScreenWidth(defaultPadding / 2)
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFFDCDFE0),
                          child: Icon(
                            FontAwesomeIcons.euroSign,
                            color: Color(0xFF2ECC71),
                          ),
                        ),
                        title: Text('Euro'),
                        trailing: Text('\$99'),
                      )
                    ),
                  ],
                )
              ),
            )
          ],
        )
      ),
    );
  }
}
