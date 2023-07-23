import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:foodapp/src/constants/imagePath.dart';
import 'package:get_it/get_it.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<PhotoScreen> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;

  int direction = 0;

  @override
  void initState() {
    startCamera(direction);
    super.initState();
  }

  void startCamera(int direction) async {
    cameras = await availableCameras();

    cameraController = CameraController(
      cameras[direction],
      ResolutionPreset.high,
      enableAudio: false,
    );

    await cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {}); //To refresh widget
    }).catchError((e) {});
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (cameraController.value.isInitialized) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            CameraPreview(cameraController),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20, top: 50),
                child: Icon(
                  Icons.flash_auto_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 45),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.clear,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, bottom: 70),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      direction = direction == 0 ? 1 : 0;
                      startCamera(direction);
                    });
                  },
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFFFFF8EE),
                      ),
                      child: const Image(
                        image: AssetImage(ImagePath.flip),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFFFFC0B7),
                    padding: const EdgeInsets.all(18),
                    fixedSize: const Size(85, 85),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResultPage(),
                      ),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 100,
                    backgroundColor: Color(0xFFFF8473),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 70),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage(ImagePath.cooking),
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}

class CameraService {
  CameraController? _cameraController;
  CameraController? get cameraController => _cameraController;

  Future<void> initialize() async {
    if (_cameraController != null) return;
    CameraDescription description = await _getCameraDescription();
    await _setupCameraController(description: description);
  }

  Future<CameraDescription> _getCameraDescription() async {
    List<CameraDescription> cameras = await availableCameras();
    return cameras.firstWhere((CameraDescription camera) =>
        camera.lensDirection == CameraLensDirection.front);
  }

  Future _setupCameraController({
    required CameraDescription description,
  }) async {
    _cameraController = CameraController(
      description,
      ResolutionPreset.high,
      enableAudio: false,
    );
    await _cameraController?.initialize();
  }

  dispose() async {
    await _cameraController?.dispose();
    _cameraController = null;
  }
}

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<CameraService>(() => CameraService());
}

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.clear,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage(ImagePath.burgers),
              ),
            ),
          ),
          SizedBox(
            height: 110,
            child: ColoredBox(
              color: const Color(0xFFFFF8EE),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFFFF8473),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.24,
                      ),
                      children: [
                        TextSpan(text: "Protein\n"),
                        TextSpan(
                          text: "450g",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Signika',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFFFF8473),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.24,
                      ),
                      children: [
                        TextSpan(text: "Calories\n"),
                        TextSpan(
                          text: "220g",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Signika',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFFFF8473),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.24,
                      ),
                      children: [
                        TextSpan(text: "Fat\n"),
                        TextSpan(
                          text: "100g",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Signika',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFFFF8473),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.24,
                      ),
                      children: [
                        TextSpan(text: "Carbs\n"),
                        TextSpan(
                          text: "49g",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Signika',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 25, bottom: 8),
            child: Text(
              "Details",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 16),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Color(0xFFA8A8A8),
                  fontSize: 16,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.24,
                ),
                children: [
                  TextSpan(
                    text:
                        'A hamburger (also burger for short) is a\nsandwich consisting of one or more cooked\npatties of ground meat, usually beef, placed\ninside a sliced bread ',
                  ),
                  TextSpan(
                    text: 'Read More...',
                    style: TextStyle(
                      color: Color(0xFF7BBC70),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, bottom: 16),
            child: Text(
              "Ingredients",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Signika',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.24,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8EE),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Image(
                        image: AssetImage(ImagePath.bread),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8EE),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Image(
                        image: AssetImage(ImagePath.tomato),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8EE),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Image(
                        image: AssetImage(ImagePath.salad),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8EE),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                      "View\n  All",
                      style: TextStyle(
                        color: Color(0xFFFF8473),
                        fontSize: 12,
                        fontFamily: 'Signika',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.24,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF91C788),
                fixedSize: const Size(290, 72),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              onPressed: () {},
              child: const Center(
                child: Text(
                  "Add To Favorites",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Signika',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.25,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
