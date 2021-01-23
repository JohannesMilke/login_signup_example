class Settings {
  final bool allowNewsletter;
  final bool allowNotifications;

  const Settings({
    this.allowNewsletter = true,
    this.allowNotifications = true,
  });

  Settings copy({
    bool allowNewsletter,
    bool allowNotifications,
  }) =>
      Settings(
        allowNewsletter: allowNewsletter ?? this.allowNewsletter,
        allowNotifications: allowNotifications ?? this.allowNotifications,
      );

  static Settings fromJson(Map<String, dynamic> json) => Settings(
        allowNewsletter: json['allowNewsletter'],
        allowNotifications: json['allowNotifications'],
      );

  Map<String, dynamic> toJson() => {
        'allowNewsletter': allowNewsletter,
        'allowNotifications': allowNotifications,
      };
}
