import 'package:lms_flutter_project/utils/exports.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {Key? key, required this.text, required this.image, this.onTap})
      : super(key: key);
  final String text;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        padding: const EdgeInsets.all(15.0),
        height: 50.0,
        width: Constants.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              color: (image.contains("message")) ? Colors.black54 : null,
            ),
            const Spacer(),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black54),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
