import 'package:flutter/material.dart';
import 'package:movie/MovieList.dart';
import 'package:movie/anotherhelper.dart';
import 'package:movie/helper.dart';
import 'package:movie/view.dart';
import 'package:tmdb_api/tmdb_api.dart';




class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentindex =0;
  var children =
  [
    HomePage(),
    MovieList(),
    View(),
  ];

  void _onChanged(int index){//private function
    setState((){
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(//appBar,Body,bottomNavigation are its main properties
      body: children[_currentindex],
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xff1A6350),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onChanged,
        // selectedItemColor: Colors.greenAccent,
        // unselectedItemColor: Colors.redAccent,
        // selectedIconTheme: IconThemeData.***********,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
            backgroundColor: Colors.white,
          ),

        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String apikey = '8bed60782fa09b932fcbd748a06c8320';
  final String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YmVkNjA3ODJmYTA5YjkzMmZjYmQ3NDhhMDZjODMyMCIsInN1YiI6IjYyYzNjZWVlNmEzMDBiMDA0YzU1OTUxZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.bihAXAF0DvelkEWs-_IGuXEWbgd6AmXpu__tz42WcRM';
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];

  @override
  void initState() {
    super.initState();
    loadmovies();
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPouplar();
    print((trendingresult));
    setState(() {
      trendingmovies = trendingresult['results'];
      topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1A6350),

        body: ListView(
          children: [

            TrendingMovies(
              trending: trendingmovies,
            ),
            TopRatedMovies(
              toprated: topratedmovies,
            ),
          ],
        ));
  }
}

