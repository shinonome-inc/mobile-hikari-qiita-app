class I18n {
  static I18n? _instance;

  I18n._();

  factory I18n() => _instance ??= I18n._();

  // top_page
  String get labelAppName => "Qiita Feed App";
  String get labelPlayGround => "-PlayGround-";
  String get labelLogin => "ログイン";
  String get labelNotLogin => "ログインせずに使用する";

  // feed_page
  String get labelFeed => "Feed";
  String get labelFeedJapanese => "フィード";

  // tag_page
  String get labelTag => "Tag";
  String get labelTagJapanese => "タグ";

  // my_page
  String get labelMyPage => "MyPage";
  String get labelMyPageJapanese => "マイページ";

  // settings_page
  String get labelSettings => "Settings";
  String get labelSettingsJapanese => "設定";
}
