import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:uichallenge02/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool loading = true;

  //Black Widow
  String bw = "Black Widow";
  String bwimage = "assets/blackwidow.png";
  String bwtag = "blackwidow";
  String bwbio =
      "Natasha was born in Stalingrad (now Volgograd), Russia, USSR. The first and best-known Black Widow is a Russian agent trained as a spy, martial artist, and sniper, and outfitted with an arsenal of high-tech weaponry, including a pair of wrist-mounted energy weapons dubbed her \"Widow's Bite\". She wears no costume during her first few appearances but simply evening wear and a veil. Romanova eventually defects to the U.S. for reasons that include her love for the reluctant-criminal turned superhero archer, Hawkeye.";
  Color bwcolor = Colors.white;
  Color bwgr1 = Colors.brown[900];
  Color bwgr2 = Colors.grey[900];

  //Captain America
  String ca = "Captain America";
  String caimage = "assets/captainamerica.png";
  String catag = "captainamerica";
  String cabio =
      "Steven Rogers was born in the Lower East Side of Manhattan, New York City, in 1920 to poor Irish immigrants, Sarah and Joseph Rogers.[55] Joseph died when Steve was a child, and Sarah died of pneumonia while Steve was a teen. By early 1940, before America's entry into World War II, Rogers is a tall, scrawny fine arts student specializing in illustration and a comic book writer and artist.";
  Color cacolor = Colors.blue;
  Color cagr1 = Colors.blue[900];
  Color cagr2 = Colors.deepPurple[900];

  //Hawkeye
  String he = "Hawkeye";
  String heimage = "assets/hawkeye.png";
  String hetag = "hawkeye";
  String hebio =
      "Clint Barton was born in Waverly, Iowa. At a young age he lost both of his parents in a car accident. After six years in an orphanage, Clint and his brother Barney Barton ran away to join the Carson Carnival of Traveling Wonders. Clint soon caught the eye of the Swordsman, who took the young boy on as his assistant. Along with the help of Trick Shot, the Swordsman trained Clint to become a master archer. Clint later found the Swordsman embezzling money from the carnival. Before he could turn his mentor over to the authorities, Clint was beaten and left for dead, allowing the Swordsman to escape town. Clint's relationship with his brother Barney and Trick Shot soon deteriorated as well.";
  Color hecolor = Colors.grey;
  Color hegr1 = Colors.blueGrey[900];
  Color hegr2 = Colors.grey[900];

  //Hulk
  String hu = "Hulk";
  String huimage = "assets/hulk.png";
  String hutag = "hulk";
  String hubio =
      "During the experimental detonation of a gamma bomb, scientist Robert Bruce Banner saves teenager Rick Jones who has driven onto the testing field; Banner pushes Jones into a trench to save him, but is hit with the blast, absorbing massive amounts of gamma radiation. He awakens later seemingly unscathed, but that night transforms into a lumbering grey form. A pursuing soldier dubs the creature a \"hulk\".[43] Originally, it was believed that Banner's transformations into the Hulk were caused by sunset and undone at sunrise, but later, after Rick witnessed Banner turn into Hulk at daytime following a failed attempt by Ross' men to shoot the Hulk into space, it was discovered to be caused by anger. Banner was cured in The Incredible Hulk #4, but chose to restore Hulk's powers with Banner's intelligence. The gamma-ray machine needed to affect the transformation-induced side effects that made Banner temporarily sick and weak when returned to his normal state.";
  Color hucolor = Colors.green;
  Color hugr1 = Colors.lightGreen[900];
  Color hugr2 = Colors.green[900];

  //Iron Man
  String im = "Iron Man";
  String imimage = "assets/ironman.png";
  String imtag = "ironman";
  String imbio =
      "During the experimental detonation of a gamma bomb, scientist Robert Bruce Banner saves teenager Rick Jones who has driven onto the testing field; Banner pushes Jones into a trench to save him, but is hit with the blast, absorbing massive amounts of gamma radiation. He awakens later seemingly unscathed, but that night transforms into a lumbering grey form. A pursuing soldier dubs the creature a \"hulk\".[43] Originally, it was believed that Banner's transformations into the Hulk were caused by sunset and undone at sunrise, but later, after Rick witnessed Banner turn into Hulk at daytime following a failed attempt by Ross' men to shoot the Hulk into space, it was discovered to be caused by anger. Banner was cured in The Incredible Hulk #4, but chose to restore Hulk's powers with Banner's intelligence. The gamma-ray machine needed to affect the transformation-induced side effects that made Banner temporarily sick and weak when returned to his normal state.";
  Color imcolor = Colors.orange;
  Color imgr1 = Colors.brown[900];
  Color imgr2 = Colors.red[900];

  //Thor
  String th = "Thor";
  String thimage = "assets/thor.png";
  String thtag = "thor";
  String thbio =
      "Thor's father Odin decides his son needed to be taught humility and consequently places Thor (without memories of godhood) into the body and memories of an existing, partially disabled human medical student, Donald Blake. After becoming a doctor, Blake witnesses the arrival of an alien scouting party while he is on vacation in Norway. Blake flees from the aliens into a cave. After discovering Thor's hammer Mjolnir (disguised as a walking stick) and striking it against a rock, he transforms into the thunder god. Later, in Thor #159, Blake is revealed to have always been Thor, Odin's enchantment having caused him to forget his history as The Thunder God and believe himself mortal.";
  Color thcolor = Colors.red;
  Color thgr1 = Colors.black;
  Color thgr2 = Colors.red[900];

  //Vision
  String vi = "Vision";
  String viimage = "assets/vision.png";
  String vitag = "vision";
  String vibio =
      "The robot Ultron is the creator of Vision, a type of android he calls a \"synthezoid\", for use against Ultron's own creator, Dr. Hank Pym (Ant-Man/Giant Man/Goliath/Yellowjacket) and Pym's wife, Janet van Dyne (the Wasp) of the superhero team the Avengers. Ultron sends his new servant to lead the Avengers into a trap. Wasp is the first to encounter the synthezoid, and describes it as a \"vision\" while trying to escape. Adopting the name, Vision is convinced by the Avengers to turn against Ultron. After learning how Ultron created him, using the brain patterns of then-deceased Simon Williams (Wonder Man), Vision becomes a member of the team. The team initially believes the Vision's body was created from that of the android original Human Torch. The Avengers later are told that the time lord Immortus used the power of the Forever Crystal to split the original Human Torch into two entities – one body remained the original Torch while Ultron rebuilt the other as the Vision. This was part of his plan to nurture a relationship for the Scarlet Witch that would prevent her from having any children, as her power level meant that any offspring she might have could threaten the cosmic beings of the Marvel Universe.";
  Color vicolor = Colors.purple;
  Color vigr1 = Colors.purple[900];
  Color vigr2 = Colors.cyan[900];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: loading
          ? Center(
              child: Image.asset(
                "assets/loading.gif",
                fit: BoxFit.contain,
              ),
            )
          : ListView(
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/avengers.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  "THE AVENGERS",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.downToUp,
                              child: Details(
                                name: bw,
                                bio: bwbio,
                                tag: bwtag,
                                image: bwimage,
                                gr1: bwgr1,
                                gr2: bwgr2,
                                color: bwcolor,
                              )));
                    },
                    child: Avenger(
                      name: bw,
                      bio: bwbio,
                      tag: bwtag,
                      image: bwimage,
                      gr1: bwgr1,
                      gr2: bwgr2,
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.downToUp,
                              child: Details(
                                name: ca,
                                bio: cabio,
                                tag: catag,
                                image: caimage,
                                gr1: cagr1,
                                gr2: cagr2,
                                color: cacolor,
                              )));
                    },
                    child: Avenger(
                      name: ca,
                      bio: cabio,
                      tag: catag,
                      image: caimage,
                      gr1: cagr1,
                      gr2: cagr2,
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.downToUp,
                              child: Details(
                                name: he,
                                bio: hebio,
                                tag: hetag,
                                image: heimage,
                                gr1: hegr1,
                                gr2: hegr2,
                                color: hecolor,
                              )));
                    },
                    child: Avenger(
                      name: he,
                      bio: hebio,
                      tag: hetag,
                      image: heimage,
                      gr1: hegr1,
                      gr2: hegr2,
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.downToUp,
                              child: Details(
                                name: hu,
                                bio: hubio,
                                tag: hutag,
                                image: huimage,
                                gr1: hugr1,
                                gr2: hugr2,
                                color: hucolor,
                              )));
                    },
                    child: Avenger(
                      name: hu,
                      bio: hubio,
                      tag: hutag,
                      image: huimage,
                      gr1: hugr1,
                      gr2: hugr2,
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.downToUp,
                              child: Details(
                                name: im,
                                bio: imbio,
                                tag: imtag,
                                image: imimage,
                                gr1: imgr1,
                                gr2: imgr2,
                                color: imcolor,
                              )));
                    },
                    child: Avenger(
                      name: im,
                      bio: imbio,
                      tag: imtag,
                      image: imimage,
                      gr1: imgr1,
                      gr2: imgr2,
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.downToUp,
                              child: Details(
                                name: th,
                                bio: thbio,
                                tag: thtag,
                                image: thimage,
                                gr1: thgr1,
                                gr2: thgr2,
                                color: thcolor,
                              )));
                    },
                    child: Avenger(
                      name: th,
                      bio: thbio,
                      tag: thtag,
                      image: thimage,
                      gr1: thgr1,
                      gr2: thgr2,
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.downToUp,
                              child: Details(
                                name: vi,
                                bio: vibio,
                                tag: vitag,
                                image: viimage,
                                gr1: vigr1,
                                gr2: vigr2,
                                color: vicolor,
                              )));
                    },
                    child: Avenger(
                      name: vi,
                      bio: vibio,
                      tag: vitag,
                      image: viimage,
                      gr1: vigr1,
                      gr2: vigr2,
                    ))
              ],
            ),
    );
  }
}

class Avenger extends StatefulWidget {
  Avenger({
    Key key,
    @required this.name,
    @required this.bio,
    @required this.tag,
    @required this.gr1,
    @required this.gr2,
    @required this.image,
  }) : super(key: key);

  final String tag;
  final String image;
  final String name;
  final String bio;
  final Color gr1;
  final Color gr2;

  @override
  _AvengerState createState() => _AvengerState(
      tag: tag, image: image, name: name, bio: bio, gr1: gr1, gr2: gr2);
}

class _AvengerState extends State<Avenger> {
  _AvengerState({
    Key key,
    @required this.name,
    @required this.bio,
    @required this.tag,
    @required this.gr1,
    @required this.gr2,
    @required this.image,
  });

  String name;
  String bio;
  String image;
  String tag;
  Color gr1;
  Color gr2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(colors: [gr1, gr2])),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          bio,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Hero(tag: tag, child: Image.asset(image)))
          ],
        ),
      ),
    );
  }
}
