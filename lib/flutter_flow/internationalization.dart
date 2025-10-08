import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en', 'es'];

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
    String? ptText = '',
    String? enText = '',
    String? esText = '',
  }) =>
      [ptText, enText, esText][languageIndex] ?? '';

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

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login
  {
    'kpw7tnhs': {
      'pt': 'Conecte-se',
      'en': 'Connect',
      'es': 'Conectar',
    },
    '9ug1062h': {
      'pt': 'E-mail',
      'en': 'E-mail',
      'es': 'Correo electrónico',
    },
    'e7k0kuxt': {
      'pt': 'Senha',
      'en': 'Password',
      'es': 'Contraseña',
    },
    'ryh4lbkd': {
      'pt': 'Entrar',
      'en': 'To enter',
      'es': 'Para entrar',
    },
    '6e9clhqa': {
      'pt': 'Criar conta agora',
      'en': 'Create account now',
      'es': 'Crea una cuenta ahora',
    },
    'l7am8sqg': {
      'pt': 'Esqueceu a senha?',
      'en': 'Forgot your password?',
      'es': '¿Olvidaste tu contraseña?',
    },
    'w1bxhxqt': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // animation
  {
    '79vhjc9s': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // homepage
  {
    '7n0ntexk': {
      'pt': 'Notificações',
      'en': 'Notifications',
      'es': 'Notificaciones',
    },
    'lx0c518o': {
      'pt': 'Felipe Personal ',
      'en': 'Felipe Personal',
      'es': 'Felipe Personal',
    },
    '7bpjaj60': {
      'pt': 'Desafios',
      'en': 'Alternative\ntraining',
      'es': 'Entrenamiento alternativo',
    },
    'q4fio4pl': {
      'pt': 'Dicas',
      'en': 'Tips',
      'es': 'Consejos',
    },
    'ybig6h2l': {
      'pt': 'Meus objetivos',
      'en': 'My goals',
      'es': 'Mis metas',
    },
    'wehwka7u': {
      'pt': 'Desempenho',
      'en': 'Alternative\ntraining',
      'es': 'Entrenamiento alternativo',
    },
    '2ltlw5tf': {
      'pt': 'Objetivos em andamento',
      'en': 'Ongoing goals',
      'es': 'Objetivos actuales',
    },
    'rk6ita2w': {
      'pt': 'Você está participando de desafio',
      'en': '',
      'es': '',
    },
    'rpldig0x': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // alternativeTraining
  {
    'ryd5vvtx': {
      'pt': 'Desafios',
      'en': 'Alternative training',
      'es': 'Entrenamiento alternativo',
    },
    '58nq880l': {
      'pt': 'Postar',
      'en': 'Post',
      'es': 'Correo',
    },
    '96hh478u': {
      'pt': 'Mais detalhes',
      'en': 'More details',
      'es': 'Más detalles',
    },
    '1m2szp7c': {
      'pt': 'Tempo restante',
      'en': '',
      'es': '',
    },
    '8hamp1vy': {
      'pt': 'Participando',
      'en': 'More details',
      'es': 'Más detalles',
    },
    'fx1o3s2s': {
      'pt': 'Participar',
      'en': 'More details',
      'es': 'Más detalles',
    },
    'qyf2l4gr': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // sethings
  {
    '9tqz51u3': {
      'pt': 'Configuração',
      'en': 'Settings',
      'es': 'Ajustes',
    },
    '1d0o64o6': {
      'pt': 'Sair da conta',
      'en': 'Log out of account',
      'es': 'Cerrar sesión en la cuenta',
    },
    't5muulby': {
      'pt': 'Adicione sua foto perfil',
      'en': 'Add your profile picture',
      'es': 'Añade tu foto de perfil',
    },
    'aten5lxh': {
      'pt': 'Selecionar idioma do aplicativo',
      'en': 'Select application language',
      'es': 'Seleccionar el idioma de la aplicación',
    },
    'qtrrkpmb': {
      'pt': 'Desativar modo dark',
      'en': 'Disable dark mode',
      'es': 'Desactivar el modo oscuro',
    },
    'ni9e2f58': {
      'pt': 'Ativar modo dark',
      'en': 'Enable dark mode',
      'es': 'Habilitar el modo oscuro',
    },
    '8gl3shmx': {
      'pt': 'Clique nesse botão para alterar a senha',
      'en': 'Click this button to change your password.',
      'es': 'Haga clic en este botón para cambiar su contraseña.',
    },
    'u15aed59': {
      'pt': 'Trocar senha',
      'en': 'Change password',
      'es': 'Cambiar la contraseña',
    },
    '5yiy7783': {
      'pt': 'Excluir conta',
      'en': 'Delete account',
      'es': 'Eliminar cuenta',
    },
    '0u4w0oh4': {
      'pt': 'Versão do aplicativo 1.0',
      'en': 'Application version 1.0',
      'es': 'Versión de la aplicación 1.0',
    },
    'qgz3o18n': {
      'pt': 'Desenvolvido por Veloz aplicativos',
      'en': 'Developed by Veloz Apps',
      'es': 'Desarrollado por Veloz Apps',
    },
    'yoyximw1': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // postAlternativeTraining
  {
    'a04qbdm0': {
      'pt': 'Postar vídeo de desafio',
      'en': 'Post alternative workout video',
      'es': 'Vídeo de entrenamiento alternativo posterior',
    },
    'm1npgrfp': {
      'pt': 'Título',
      'en': 'Title',
      'es': 'Título',
    },
    'fumk1ja3': {
      'pt': 'Subtítulo',
      'en': 'Caption',
      'es': 'Subtítulo',
    },
    'lb4sgpfm': {
      'pt': 'Selecione o período',
      'en': '',
      'es': '',
    },
    'qf2hbqqw': {
      'pt': 'Search...',
      'en': '',
      'es': '',
    },
    '3agl3nqp': {
      'pt': '1 dia',
      'en': '',
      'es': '',
    },
    'ny6vfv3w': {
      'pt': '2 dias',
      'en': '',
      'es': '',
    },
    'u7hkezka': {
      'pt': '3 dias',
      'en': '',
      'es': '',
    },
    't2n4sw8d': {
      'pt': '4 dias',
      'en': '',
      'es': '',
    },
    'l1h45rv5': {
      'pt': '5 dias',
      'en': '',
      'es': '',
    },
    'hljdamgg': {
      'pt': '1 semana',
      'en': '',
      'es': '',
    },
    'pk3ugkyv': {
      'pt': 'Detalhes',
      'en': 'Details',
      'es': 'Detalles',
    },
    '9965jdsf': {
      'pt': 'Adicionar\num vídeo',
      'en': 'Add a video',
      'es': 'Añadir un vídeo',
    },
    '84cz7ofc': {
      'pt': 'Capa do vídeo',
      'en': 'Video cover',
      'es': 'Portada del vídeo',
    },
    'bxhrgrjl': {
      'pt': 'Postar desafio',
      'en': 'Post content',
      'es': 'Contenido de la publicación',
    },
    'm8c4s015': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // createAccount
  {
    'xbrxhvan': {
      'pt': 'Crie sua conta',
      'en': 'Create your account',
      'es': 'Crea tu cuenta',
    },
    '4npo38yw': {
      'pt': 'E-mail',
      'en': 'E-mail',
      'es': 'Correo electrónico',
    },
    '849264lh': {
      'pt': 'Primeiro nome',
      'en': 'First name',
      'es': 'Nombre de pila',
    },
    'u00zgmrf': {
      'pt': 'Sobrenome',
      'en': 'Surname',
      'es': 'Apellido',
    },
    'sbequh67': {
      'pt': 'Senha',
      'en': 'Password',
      'es': 'Contraseña',
    },
    'ej63ltin': {
      'pt': 'Confirme a senha',
      'en': 'Confirm password',
      'es': 'Confirmar Contraseña',
    },
    '1ke9th9j': {
      'pt': 'Criar conta agora',
      'en': 'Create account now',
      'es': 'Crea una cuenta ahora',
    },
    '5fu5j20r': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // tips
  {
    'wei76zye': {
      'pt': 'Dicas',
      'en': 'Tips',
      'es': 'Consejos',
    },
    'y7lzkx9o': {
      'pt': 'Postar dica',
      'en': 'Post tip',
      'es': 'Consejo posterior',
    },
    'dxy075n0': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // editAlternativeTraining
  {
    'katihd69': {
      'pt': 'Editar vídeo de desafiio',
      'en': 'Edit alternative workout video',
      'es': 'Editar vídeo de entrenamiento alternativo',
    },
    'fs16u2kd': {
      'pt': 'Título',
      'en': 'Title',
      'es': 'Título',
    },
    '2nangetn': {
      'pt': 'Subtítulo',
      'en': 'Caption',
      'es': 'Subtítulo',
    },
    '6h8iwbe9': {
      'pt': 'Detalhes',
      'en': 'Details',
      'es': 'Detalles',
    },
    '7j0ntdfq': {
      'pt': 'Adicionar\num vídeo',
      'en': 'Add a video',
      'es': 'Añadir un vídeo',
    },
    'z0efa9zb': {
      'pt': 'Capa do vídeo',
      'en': 'Video cover',
      'es': 'Portada del vídeo',
    },
    'm4kedt4j': {
      'pt': 'Confirmar alteração',
      'en': 'Confirm change',
      'es': 'Confirmar cambio',
    },
    'zjwq1fuy': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // objectives
  {
    '8iemibp4': {
      'pt': 'Objetivos',
      'en': 'Objectives',
      'es': 'Objetivos',
    },
    'uh9ik3b9': {
      'pt': 'Objetivos ADM',
      'en': 'ADM Objectives',
      'es': 'Objetivos de ADM',
    },
    '966wbc97': {
      'pt': 'Meus Objetivos',
      'en': 'My Goals',
      'es': 'Mis metas',
    },
    'ewabpoja': {
      'pt': 'Objetivo',
      'en': 'Final goal',
      'es': 'Objetivo final',
    },
    'bje5ef8y': {
      'pt': 'Final',
      'en': 'Final goal',
      'es': 'Objetivo final',
    },
    '6sevf2ii': {
      'pt': 'Atual',
      'en': 'Final goal',
      'es': 'Objetivo final',
    },
    '3ml816kp': {
      'pt': 'Objetivos concluídos',
      'en': 'Objectives completed',
      'es': 'Objetivos cumplidos',
    },
    't4kna2wd': {
      'pt': 'Criar um objetivo',
      'en': 'Create a goal',
      'es': 'Crea una meta',
    },
    '3o86079r': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // objetivesADM
  {
    'mo2ki1ws': {
      'pt': 'Objetivos ADM',
      'en': 'ADM Objectives',
      'es': 'Objetivos de ADM',
    },
    '87pqfkeh': {
      'pt': 'Objetivos existentes',
      'en': 'Existing objectives',
      'es': 'Objetivos existentes',
    },
    'i9vp6jzm': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // estudio
  {
    '71qa1ueb': {
      'pt': 'Page Title',
      'en': '',
      'es': '',
    },
    '69erhqnr': {
      'pt': 'Hello World',
      'en': '',
      'es': '',
    },
    'p7ydh5ub': {
      'pt': 'Hello World',
      'en': '',
      'es': '',
    },
    'esg5e5gn': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // performance
  {
    '10gk7o6i': {
      'pt': 'Performance',
      'en': 'Settings',
      'es': 'Ajustes',
    },
    '8ddhg0ta': {
      'pt': 'Alunos com mais performance',
      'en': '',
      'es': '',
    },
    '77w2sr9r': {
      'pt': '1',
      'en': '',
      'es': '',
    },
    'k2ht8kqs': {
      'pt': '2',
      'en': '',
      'es': '',
    },
    'ec4bp1lk': {
      'pt': '3',
      'en': '',
      'es': '',
    },
    'xo6s8pal': {
      'pt': '4',
      'en': '',
      'es': '',
    },
    '9mjujifa': {
      'pt': '5',
      'en': '',
      'es': '',
    },
    'fb6aw4y8': {
      'pt': 'Sua performance',
      'en': '',
      'es': '',
    },
    'a75d0gug': {
      'pt': 'Participar do desafio',
      'en': '',
      'es': '',
    },
    'dvbsv9qt': {
      'pt': 'Objetivo',
      'en': '',
      'es': '',
    },
    'c4s8na45': {
      'pt': 'Objetivo completo',
      'en': '',
      'es': '',
    },
    'lv91c2eh': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // alternativeVideoDetails
  {
    'z2iskxwd': {
      'pt': 'Mais detalhes',
      'en': 'More details',
      'es': 'Más detalles',
    },
  },
  // tipsCreate
  {
    'deex1e09': {
      'pt': 'Criar uma dica',
      'en': 'Create a tip',
      'es': 'Crear una sugerencia',
    },
    'u20s8gpa': {
      'pt': 'Título dica',
      'en': 'Title tip',
      'es': 'Consejo del título',
    },
    'nnj45ko9': {
      'pt': 'Dica',
      'en': 'Tip',
      'es': 'Consejo',
    },
    'swyvc2tx': {
      'pt': 'Postar dica',
      'en': 'Post tip',
      'es': 'Consejo posterior',
    },
  },
  // editTips
  {
    'tj2zpzuw': {
      'pt': 'Editar dica',
      'en': 'Edit tip',
      'es': 'Consejo de edición',
    },
    '0gly8dwe': {
      'pt': 'Título dica',
      'en': 'Title tip',
      'es': 'Consejo del título',
    },
    '6trg4dga': {
      'pt': 'Dica',
      'en': 'Tip',
      'es': 'Consejo',
    },
    'n7lz0sbh': {
      'pt': 'Confirmar alteração',
      'en': 'Confirm change',
      'es': 'Confirmar cambio',
    },
  },
  // createObjectiveADM
  {
    'evxudwqe': {
      'pt': 'Criar objetivo ADM',
      'en': 'Create ADM objective',
      'es': 'Crear objetivo ADM',
    },
    'ctv297k5': {
      'pt': 'Nome Objetivo',
      'en': 'Name Objective',
      'es': 'Nombre Objetivo',
    },
    'gwsidkrd': {
      'pt': 'Tipo de objetivo',
      'en': 'Objective type',
      'es': 'Tipo de objetivo',
    },
    'onicdbe7': {
      'pt': 'Detalhes',
      'en': 'Details',
      'es': 'Detalles',
    },
    'otxxf803': {
      'pt': 'Criar Objetivo',
      'en': 'Create Goal',
      'es': 'Crear una meta',
    },
  },
  // createObjectiveUser
  {
    'cnonmqgd': {
      'pt': 'Criar objetivo',
      'en': 'Create goal',
      'es': 'Crear una meta',
    },
    '2asfpy7o': {
      'pt': 'Selecione o tipo de objetivo',
      'en': 'Select the objective type',
      'es': 'Seleccione el tipo de objetivo',
    },
    'y1vnqqlr': {
      'pt': 'Search...',
      'en': 'Search...',
      'es': 'Buscar...',
    },
    'dxys5v3a': {
      'pt': 'Tipo de período',
      'en': 'Select the objective type',
      'es': 'Seleccione el tipo de objetivo',
    },
    'vlz6r461': {
      'pt': 'Search...',
      'en': 'Search...',
      'es': 'Buscar...',
    },
    'tjiam20o': {
      'pt': 'Mês/Meses',
      'en': '',
      'es': '',
    },
    'rfnmgwgs': {
      'pt': 'Dia/dias',
      'en': '',
      'es': '',
    },
    'ixe9lqe2': {
      'pt': 'Detalhes (opcional)',
      'en': 'Details (optional)',
      'es': 'Detalles (opcional)',
    },
    'cq9brbnm': {
      'pt': 'Criar objetivo',
      'en': 'Create goal',
      'es': 'Crear una meta',
    },
  },
  // editObjectiveADM
  {
    '9udyd3jl': {
      'pt': 'Editar objetivo ADM',
      'en': 'Edit ADM objective',
      'es': 'Editar objetivo de ADM',
    },
    'qgwkwj53': {
      'pt': 'Nome Objetivo',
      'en': 'Name Objective',
      'es': 'Nombre Objetivo',
    },
    'olg5jnf5': {
      'pt': 'Tipo de objetivo',
      'en': 'Objective type',
      'es': 'Tipo de objetivo',
    },
    'ev1o0n8t': {
      'pt': 'Detalhes',
      'en': 'Details',
      'es': 'Detalles',
    },
    'cvcsymzj': {
      'pt': 'Confirmar alteração',
      'en': 'Confirm change',
      'es': 'Confirmar cambio',
    },
  },
  // CustonDialogCongratilation
  {
    '3c4yi15n': {
      'pt': 'Párabens',
      'en': 'Congratulations',
      'es': 'Felicidades',
    },
  },
  // ItemlistEnpty
  {
    '5zan7rok': {
      'pt': 'Nome',
      'en': 'Name',
      'es': 'Nombre',
    },
    '3k9dtqgj': {
      'pt': '50%',
      'en': '50%',
      'es': '50%',
    },
    '9kb1jc12': {
      'pt': 'Objetivo final',
      'en': 'Final goal',
      'es': 'Objetivo final',
    },
    'vfamf1d0': {
      'pt': 'Número',
      'en': 'Number',
      'es': 'Número',
    },
  },
  // editObjectiveUser
  {
    'vadctqy2': {
      'pt': 'Editar objetivo',
      'en': 'Edit objective',
      'es': 'Editar objetivo',
    },
    'icfckl9p': {
      'pt': 'Tipo de objetivo',
      'en': 'Objective type',
      'es': 'Tipo de objetivo',
    },
    'xyp9kryv': {
      'pt': 'Objetivo Final',
      'en': 'Final Goal',
      'es': 'Objetivo final',
    },
    'a5wg6rki': {
      'pt': 'Em quanto tempo',
      'en': 'In how much time',
      'es': '¿En cuanto tiempo?',
    },
    'qkxlpfw0': {
      'pt': 'Detalhes  (opcional)',
      'en': 'Details (optional)',
      'es': 'Detalles (opcional)',
    },
    '1wjldcul': {
      'pt': 'Confirmar alteração',
      'en': 'Confirm change',
      'es': 'Confirmar cambio',
    },
  },
  // detailsObjectiveUser
  {
    'tgeio236': {
      'pt': 'Mais detalhes',
      'en': 'More details',
      'es': 'Más detalles',
    },
  },
  // changePassword
  {
    'pdmvvgew': {
      'pt': 'Trocar senha',
      'en': 'Change password',
      'es': 'Cambiar la contraseña',
    },
    'dwq2ttrs': {
      'pt': 'Digite uma senha',
      'en': 'Enter a password',
      'es': 'Introduzca una contraseña',
    },
    'qhzkpfju': {
      'pt': 'Confirme a senha',
      'en': 'Confirm password',
      'es': 'Confirmar Contraseña',
    },
    '61zm56g6': {
      'pt': 'Confirmar e alterar',
      'en': 'Confirm and change',
      'es': 'Confirmar y cambiar',
    },
  },
  // forgetPassword
  {
    'fsje72o6': {
      'pt': 'Recuperação de senha',
      'en': 'Password recovery',
      'es': 'Recuperación de contraseña',
    },
    'imiq0szk': {
      'pt': 'Escreva um e-mail válido',
      'en': 'Please write a valid email address',
      'es': 'Por favor escriba una dirección de correo electrónico válida',
    },
    'bh2cgsav': {
      'pt': 'Enviar e-mail de recuperação',
      'en': 'Send recovery email',
      'es': 'Enviar correo electrónico de recuperación',
    },
  },
  // ChallengerTimer
  {
    '2he4mnor': {
      'pt': 'Tempo restante',
      'en': '',
      'es': '',
    },
  },
  // bannerPrimaryAPP
  {
    'b875h4ev': {
      'pt': 'Alterar imagem do banner home',
      'en': 'Password recovery',
      'es': 'Recuperación de contraseña',
    },
    'jcg8v1wv': {
      'pt': 'Selecione para fazer alteração',
      'en': 'Password recovery',
      'es': 'Recuperación de contraseña',
    },
    'qpb1laig': {
      'pt': '1',
      'en': '',
      'es': '',
    },
    'w3okb3p0': {
      'pt': '2',
      'en': '',
      'es': '',
    },
    'oorxwj91': {
      'pt': '3',
      'en': '',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'qcrffo13': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'ddsao1sz': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'd7aaegz6': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'y83fe72z': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'kemtuycf': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'g6zx8yxg': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'fp2dia2o': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '6rm782by': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'kw4v6xpk': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'r1llgzzm': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'b17z7dea': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'qooyrzw8': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '7cfv0mgh': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'qs5cn06z': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'jomjeidu': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'iui4i48i': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '1w1oeefo': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '9q512s7g': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'y3l6tf01': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'xruo3oua': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '0grkkm6a': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '85dub73d': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'xthocp2f': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'tka153dy': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '0oq5vdw4': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'zr34wn6z': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'paouxwmn': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'f6snp67m': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
