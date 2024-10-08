import 'package:flutter/material.dart';
import 'package:gstockdz/pages/Pres_Retour_Achat.dart';
import 'package:gstockdz/pages/impot_Home_Page.dart';
import 'package:gstockdz/pages/inventaire.dart';
import 'package:gstockdz/pages/user_Stock.dart';
import 'help.dart';
import 'pres_Vente_Retour.dart';
import 'impots.dart';
import 'imprimante.dart';
import 'settings.dart';
import 'caisse.dart';
import 'clients.dart';
import 'fournisseure.dart';
import 'depences.dart';
import 'requet.dart';
import 'pres_Ventes.dart';
import 'Achat_Category1.dart/pres_achat.dart';

class home2 extends StatelessWidget {
  const home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 176, 171, 86),
        title: const Text("StockDz"),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 176, 171, 86),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.print),
              title:
                  const Text('                           طباعة المحاسب اليومي'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.print),
              title: const Text('            طباعة المحاسب اليومي بالمخزون'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.print),
              title: const Text(
                  '                          طباعة  تقرير  راس المال'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: const Text(
                  '                                        حفظ البيانات'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: const Text(
                  '                                    استرجاع البيانات'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },
            ),
            const Divider(),
            const ListTile(
              title: const Text(
                '                                                   إعدادات النظام',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                  '                                         الإعدادات'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text(
                  '                                         الطابعه '),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Imprimante()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.copy),
              title: const Text('                                     الضرائب'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TaxPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.key_sharp),
              title:
                  const Text('                                تفعيل البرنامج'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },
            ),
            const Divider(),
            const ListTile(
              title: const Text(
                '                                                          المساعدة ',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text(
                  '                                            المساعدة'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Help()),
                );
              },
            ),
            ListTile(
              title: const Text(
                  '                                                             وكلاؤنا'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.system_update),
              title:
                  const Text('                               تحديث البرنامج '),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('                            سياسة الخصوصية'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text(
                  '                                  مشاركة البرنامج'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },
            ),
            ListTile(
              title: const Text(
                  '                                                       عن البرنامج'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
          child: Center(
            child: Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              children: List.generate(12, (index) {
                // Define the icon paths and titles
                final icons = [
                  'icons/11.png',
                  'icons/10.png',
                  'icons/111.png',
                  'icons/222.png',
                  'icons/12.png',
                  'icons/15.png',
                  'icons/13.png',
                  'icons/14.png',
                  'icons/16.png',
                  'icons/8.png',
                  'icons/000.png',
                  'icons/145.png'
                ];
                final titles = [
                  'المشتريات',
                  'المبيعات',
                  ' المشتريات-ارجاع ',
                  ' المبيعات-ارجاع',
                  'الموردين',
                  'العملاء',
                  'المصروفات',
                  'الصندوق',
                  'الاستعلامات',
                  'المخزون',
                  'المخازن و المسخدمين',
                  'الفواتير الضريبية'
                ];

                return InkWell(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Presachat()));
                        break;
                      case 1:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PresVentes()));
                        break;

                      case 2:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PresRetourAchat()));
                        break;
                      case 3:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PresVenteRetour()));
                        break;
                      case 4:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Fournisseure()));
                        break;
                      case 5:
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Clients()));
                        break;
                      case 6:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Depences()));
                        break;
                      case 7:
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Caisse()));
                        break;
                      case 8:
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Requet()));
                        break;
                      case 9:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Inventaire()));
                        break;
                      case 10:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserStock()));
                        break;
                      case 11:
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ImpotHomePage()));
                        break;
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 227, 227, 231),
                    ),
                    height: 150,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          icons[index],
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          titles[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
