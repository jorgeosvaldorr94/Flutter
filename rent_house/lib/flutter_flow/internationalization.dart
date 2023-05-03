import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    'wutccdp5': {
      'en': 'Sign In',
      'es': '',
    },
    'ta6wby80': {
      'en': 'Your Email',
      'es': '',
    },
    'mntub7y8': {
      'en': '',
      'es': '',
    },
    '3y9rak8f': {
      'en': 'Your Password',
      'es': '',
    },
    '0wn0z3u7': {
      'en': '',
      'es': '',
    },
    'i30k1rdt': {
      'en': 'Sign In',
      'es': '',
    },
    '4dlej5as': {
      'en': 'forgot password ?',
      'es': '',
    },
    '3j55507q': {
      'en': 'Sign Up',
      'es': '',
    },
    'nil43wiw': {
      'en': 'Your Name',
      'es': '',
    },
    'w9zjrnxu': {
      'en': '',
      'es': '',
    },
    '41j9ladi': {
      'en': 'Your Email',
      'es': '',
    },
    'qdk1dahb': {
      'en': '',
      'es': '',
    },
    '3vkm788a': {
      'en': 'Your Password',
      'es': '',
    },
    'kjbjp55g': {
      'en': '',
      'es': '',
    },
    '43m4shxz': {
      'en': 'Create Account',
      'es': '',
    },
    'oqnjun78': {
      'en': 'Home',
      'es': '',
    },
  },
  // Home
  {
    'l9lhoan7': {
      'en': 'Search...',
      'es': '',
    },
    'zxbmywce': {
      'en': 'Explore the best rental houses and rooms.',
      'es': '',
    },
    'xy16xp3c': {
      'en': 'Add House',
      'es': '',
    },
    'gyr2lqb1': {
      'en': 'Cinque Terre',
      'es': '',
    },
    'yppxyifq': {
      'en': '4.7',
      'es': '',
    },
    'lyl3cln8': {
      'en': '\$220 USD',
      'es': '',
    },
  },
  // Details
  {
    '4xynv3hg': {
      'en': 'DESCRIPTION',
      'es': '',
    },
    '10txb4xv': {
      'en': '',
      'es': '',
    },
    'd684ngxh': {
      'en': '',
      'es': '',
    },
  },
  // Transition
  {
    '49nf9365': {
      'en': 'Home',
      'es': '',
    },
  },
  // EditProfile
  {
    'n0cak6gr': {
      'en': 'Edit Profile',
      'es': '',
    },
    '2d3ugdzz': {
      'en': 'Edit Photo',
      'es': '',
    },
    '6t6atyg0': {
      'en': 'Your Name',
      'es': '',
    },
    'e5fxaonz': {
      'en': 'Specify (+ your country code)',
      'es': '',
    },
    'lrv3blfk': {
      'en': 'Your Phone',
      'es': '',
    },
    'ujebm449': {
      'en': 'Phone Number',
      'es': '',
    },
    'tm86e2o5': {
      'en': 'Email Address',
      'es': '',
    },
    'hplheqc2': {
      'en': 'Delete Profile',
      'es': '',
    },
  },
  // MyProfile
  {
    'zxhphefp': {
      'en': 'Profile',
      'es': '',
    },
    'yx4vpx6w': {
      'en': 'Switch to Dark Mode',
      'es': '',
    },
    'eanteqk6': {
      'en': 'Switch to Light Mode',
      'es': '',
    },
    '88fvrr1i': {
      'en': 'Account Settings',
      'es': '',
    },
    'ub79t01s': {
      'en': 'Edit Profile',
      'es': '',
    },
    'xhjhauzq': {
      'en': 'My Post',
      'es': '',
    },
    'vu18oxzj': {
      'en': 'Admin Houses',
      'es': '',
    },
    'edgfz9g0': {
      'en': 'Admin Users',
      'es': '',
    },
    'gs9iw3ma': {
      'en': '__',
      'es': '',
    },
  },
  // RecoverPassword
  {
    'yxf7ifxe': {
      'en': 'Recover',
      'es': '',
    },
    'euqq32og': {
      'en': 'Instructions to recover your password will be sent to your email',
      'es': '',
    },
    'ec15dg1o': {
      'en': 'Your Email',
      'es': '',
    },
    'eb9oblvq': {
      'en': 'Send',
      'es': '',
    },
  },
  // AddProduct
  {
    'wzju45k3': {
      'en': 'Add Post',
      'es': '',
    },
    'o21dtogz': {
      'en': '',
      'es': '',
    },
    '36ftpm9z': {
      'en': 'Title',
      'es': '',
    },
    '9uoud7m9': {
      'en': '',
      'es': '',
    },
    '9kbgv3mh': {
      'en': 'Price',
      'es': '',
    },
    'jtu54c0o': {
      'en': '',
      'es': '',
    },
    'eyxod8m0': {
      'en': 'City',
      'es': '',
    },
    '2qxvl8z8': {
      'en': '',
      'es': '',
    },
    '818z64af': {
      'en': 'Contact',
      'es': '',
    },
    'n4tak5al': {
      'en': '',
      'es': '',
    },
    'wsuq3eh1': {
      'en': 'Locality',
      'es': '',
    },
    'k3traq4v': {
      'en': '',
      'es': '',
    },
    'ezyxmr41': {
      'en': 'Municipality',
      'es': '',
    },
    'ia2vhgn6': {
      'en': '',
      'es': '',
    },
    'vrcp4mqk': {
      'en': 'Description',
      'es': '',
    },
    '35f7s5zw': {
      'en': '',
      'es': '',
    },
    'pgfdixar': {
      'en': 'Star Property',
      'es': '',
    },
    'qxfenj71': {
      'en': 'Rooms (2 or more)',
      'es': '',
    },
    '3xkk6q1y': {
      'en': 'Heated',
      'es': '',
    },
    'lg75w6bs': {
      'en': 'Pool',
      'es': '',
    },
    'gzyprris': {
      'en': 'Garage',
      'es': '',
    },
    'd4yghwri': {
      'en': 'Additional services',
      'es': '',
    },
  },
  // HouseAdmin
  {
    'ortvir8z': {
      'en': 'Search...',
      'es': '',
    },
    'l4ilzf6n': {
      'en': 'Delete',
      'es': '',
    },
    'w2c2l4uu': {
      'en': 'Cinque Terre',
      'es': '',
    },
    'm4fvywnj': {
      'en': '4.7',
      'es': '',
    },
    'yq8dx7h1': {
      'en': '\$220 USD',
      'es': '',
    },
  },
  // UserAdmin
  {
    'haq5k8p6': {
      'en': 'Search...',
      'es': '',
    },
    'ntr9809n': {
      'en': 'Delete',
      'es': '',
    },
    'yz37s59i': {
      'en': 'Cinque Terre',
      'es': '',
    },
    'stnq2ccf': {
      'en': '4.7',
      'es': '',
    },
    '7xsm45at': {
      'en': '\$220 USD',
      'es': '',
    },
  },
  // OwnProduct
  {
    '04a3ympz': {
      'en': 'Search...',
      'es': '',
    },
    '8gysyveh': {
      'en': 'Cinque Terre',
      'es': '',
    },
    '0xdqn5gf': {
      'en': '4.7',
      'es': '',
    },
    'lv3atjep': {
      'en': '\$220 USD',
      'es': '',
    },
  },
  // EditProduct
  {
    'onix7c0s': {
      'en': 'Edit Post',
      'es': '',
    },
    'rd4yqmj2': {
      'en': '',
      'es': '',
    },
    'hb034zgj': {
      'en': 'Title',
      'es': '',
    },
    '4wlafcf8': {
      'en': '',
      'es': '',
    },
    'yk53o580': {
      'en': 'Price',
      'es': '',
    },
    'vgmeyowj': {
      'en': '',
      'es': '',
    },
    '8pv8rksg': {
      'en': 'City',
      'es': '',
    },
    'dtaxl0eo': {
      'en': '',
      'es': '',
    },
    'fm2g8lxk': {
      'en': 'Contact',
      'es': '',
    },
    'cqw0av3s': {
      'en': '',
      'es': '',
    },
    'zytsqqwi': {
      'en': 'Locality',
      'es': '',
    },
    'vuelnnp5': {
      'en': '',
      'es': '',
    },
    'low1hflp': {
      'en': 'Municipality',
      'es': '',
    },
    'gbg3wnfs': {
      'en': '',
      'es': '',
    },
    'jrd5nsxn': {
      'en': 'Description',
      'es': '',
    },
    'jag7nvth': {
      'en': '',
      'es': '',
    },
  },
  // Favorites
  {
    'qsmhjpcq': {
      'en': 'Search...',
      'es': '',
    },
    'kt3n3pic': {
      'en': 'These are your favorite houses.',
      'es': '',
    },
    'f4hz04em': {
      'en': 'Cinque Terre',
      'es': '',
    },
    'y40hqxe3': {
      'en': '4.7',
      'es': '',
    },
    'ue9xt3i1': {
      'en': '\$220 USD',
      'es': '',
    },
  },
  // Login2
  {
    'gnnoqupc': {
      'en': 'Cuban Rent House',
      'es': '',
    },
    'qjimb8d5': {
      'en': 'Sign In',
      'es': '',
    },
    'kdoxqi0n': {
      'en': 'Email Address',
      'es': '',
    },
    'uxxnohkr': {
      'en': 'Password',
      'es': '',
    },
    '9vjjagto': {
      'en': 'Sign In',
      'es': '',
    },
    '7bq5qyqm': {
      'en': 'Forgot Password?',
      'es': '',
    },
    'lthqjtbl': {
      'en': 'Sign Up',
      'es': '',
    },
    '30fblhaz': {
      'en': 'Email Address',
      'es': '',
    },
    'eu9q44pj': {
      'en': 'Password',
      'es': '',
    },
    'm1yr41h8': {
      'en': 'Create Account',
      'es': '',
    },
    '6ghc2bc0': {
      'en': 'Home',
      'es': '',
    },
  },
  // Miscellaneous
  {
    '3emww9ya': {
      'en': '',
      'es': '',
    },
    'pce78n8u': {
      'en': '',
      'es': '',
    },
    'u9hwp2lv': {
      'en': '',
      'es': '',
    },
    'uw88ewh5': {
      'en': '',
      'es': '',
    },
    'ox7w9s2b': {
      'en': '',
      'es': '',
    },
    '81kzs7bd': {
      'en': '',
      'es': '',
    },
    '3fhdowx6': {
      'en': '',
      'es': '',
    },
    'gxjb9kt5': {
      'en': '',
      'es': '',
    },
    'g8jr3jbj': {
      'en': '',
      'es': '',
    },
    'sjtykkgd': {
      'en': '',
      'es': '',
    },
    'e5coszl2': {
      'en': '',
      'es': '',
    },
    'k7r2eb0p': {
      'en': '',
      'es': '',
    },
    'bw99thco': {
      'en': '',
      'es': '',
    },
    '3vvsgtes': {
      'en': '',
      'es': '',
    },
    'wc8ub3h8': {
      'en': '',
      'es': '',
    },
    '3v9ezou7': {
      'en': '',
      'es': '',
    },
    '2xc5rxqb': {
      'en': '',
      'es': '',
    },
    '4fhf8591': {
      'en': '',
      'es': '',
    },
    'hhg9h2ce': {
      'en': '',
      'es': '',
    },
    'tpgtz7ms': {
      'en': '',
      'es': '',
    },
    'whi68imp': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
