import 'package:flutter/material.dart';
import 'package:lastfmmusic/ui/dumb_widgets/custom_text_field.dart';
import 'package:lastfmmusic/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => model.isBusy
          ? const CircularProgressIndicator()
          : Scaffold(
              appBar: AppBar(
                title: const Text('Last FM Music 4.0'),
                elevation: 0.0,
                bottom: PreferredSize(
                  preferredSize: Size(MediaQuery.of(context).size.width, 42.0),
                  child: Container(
                    height: 42.0,
                    color: Colors.white,
                    child: CustomTextField(
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: 'Search Albums',
                      hintStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.grey,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: GestureDetector(
                          onTap: () => model.searchAlbum(),
                          child: Container(
                            width: 30.0,
                            height: 10.0,
                            child: const Center(
                              child: Text('search'),
                            ),
                            color: Colors.black12,
                          ),
                        ),
                      ),
                      showBorder: false,
                      onChanged: (value) => model.setSearchKeywords(value),
                    ),
                  ),
                ),
              ),
              body: ListView.builder(
                itemCount: model.albumList.length,
                itemBuilder: (context, index) {
                  var album = model.albumList[index];
                  return ListTile(
                    leading: const Icon(Icons.album),
                    title: Text(album.name ?? ''),
                  );
                },
              ),
            ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
