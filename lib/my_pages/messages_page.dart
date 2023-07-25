import 'package:flutter/material.dart';
import 'package:twitter_clone/my_pages/new_message_page.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewMessagePage()),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.mark_email_unread_rounded, size: 30),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Mesaj gönder, mesaj al',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'Direkt mesajlar, sen ve Twitter\' daki diğer \nkişiler arasında gerçekleşen özel sohbetlerdir.\nTweetleri, medyaları ve daha fazlasını paylaşabilirsin',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewMessagePage()),
                );
              },
              child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: const Center(
                  child: Text(
                    'Mesaj yaz',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}












// class NewMessage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text('Yeni Mesaj'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               startSearch();
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   void startSearch() {
//     print('Arama düğmesine tıklandı. Arama işlemi başlatılıyor...');
//     MySearchDelegate();
//   }
// }

// class MySearchDelegate extends SearchDelegate {
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     IconButton(
//       icon: Icon(Icons.clear),
//       onPressed: () {
//         print('My search delegate');
//         if (query.isEmpty) {
//           close(context, null);
//         } else {
//           query = ''; //close searchbar
//         }
//       },
//     );
//     // throw UnimplementedError();
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     icon:
//     Icon(Icons.arrow_back);
//     onPressed:
//     () {
//       close(context, null); //close searchbar
//     };
//     // throw UnimplementedError();
//   }

//   @override
//   Widget buildResults(BuildContext context) => Center(
//         child: Text(
//           query,
//           style: const TextStyle(fontSize: 24),
//         ),
//       );

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> suggestions = ['Özge', 'Nigar', 'İbrahim', 'Enes', 'Özgür'];

//     return ListView.builder(
//       itemCount: suggestions.length,
//       itemBuilder: (context, index) {
//         final suggestion = suggestions[index];

//         return ListTile(
//           title: Text(suggestion),
//           onTap: () {
//             query = suggestion;
//             showResults(context);
//           },
//         );
//       },
//     );
//   }
// }







//   body: Container(
//         width: 400,
//         height: 50,
// child: ListTile(
// leading:  Icon(Icons.search),
// title: TextButton(
//   onPressed: (){
//     showSearch(context: context, delegate: MySearchDelegate());
//   }, child: Text('Kişileri veya grupları ara'),
  
//   ),
// ),
//   ),
