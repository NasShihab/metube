class ShareButton {
  String text;
  String image;
  void Function() onTap;

  ShareButton({
    required this.text,
    required this.image,
    required this.onTap,
  });
}

List<ShareButton> shareButtonList = [
  ShareButton(
    text: 'FaceBook',
    image: 'assets/icons/facebook.png',
    onTap: () {},
  ),
  ShareButton(
    text: 'Whatsapp',
    image: 'assets/icons/whatsapp.png',
    onTap: () {},
  ),
  ShareButton(
    text: 'Twitter',
    image: 'assets/icons/twitter.png',
    onTap: () {},
  ),
  ShareButton(
    text: 'Instagram',
    image: 'assets/icons/instagram.png',
    onTap: () {},
  ),
  ShareButton(
    text: 'Copy',
    image: 'assets/icons/copy.png',
    onTap: () {},
  ),
  ShareButton(
    text: 'Yahoo',
    image: 'assets/icons/yahoo.png',
    onTap: () {},
  ),
  ShareButton(
    text: 'WeChat',
    image: 'assets/icons/wechat.png',
    onTap: () {},
  ),
  ShareButton(
    text: 'Google',
    image: 'assets/icons/google.png',
    onTap: () {},
  ),
];
