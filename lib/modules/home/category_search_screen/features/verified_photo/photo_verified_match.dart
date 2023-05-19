import 'package:lms_flutter_project/utils/exports.dart';

class VerifiedPhotoMatch extends StatelessWidget {
  const VerifiedPhotoMatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => gotoSwipeScreen(context),
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            width: Constants.width,
            color: MyColors.cardColor1,
            height: 260.0,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    Image.asset("assets/images/verified_photo-nbg.png"),
                    const SizedBox(
                      width: 50.0,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black87, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: Row(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  gotoSwipeScreen(BuildContext context) =>
      Navigator.pushNamed(context, Routes.photoVerifiedMatch);
}
