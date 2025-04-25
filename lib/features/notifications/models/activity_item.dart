class ActivityItem {
  final String pathIcon;
  final String title;
  final String user;
  final String subtitle;
  final String time;
  final String avatar;
  final String? hintTitle;
  final String? message;
  final String? trailingIconPath;
  final String? secondaryTrailingIconPath;

  ActivityItem({
    required this.pathIcon,
    required this.title,
    required this.user,
    required this.subtitle,
    required this.time,
    required this.avatar,
    this.hintTitle,
    this.message,
    this.trailingIconPath,
    this.secondaryTrailingIconPath,
  });
}
