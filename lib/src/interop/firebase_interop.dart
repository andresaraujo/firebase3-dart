@JS('firebase')
library firebase3.firebase_interop;

import 'package:js/js.dart';
import 'package:func/func.dart';
import 'package:firebase3/src/interop/app_interop.dart';
import 'package:firebase3/src/interop/database_interop.dart';
import 'package:firebase3/src/interop/auth_interop.dart';
import 'package:firebase3/src/interop/storage_interop.dart';

external List<AppJsImpl> get apps;
external String get SDK_VERSION;

external AppJsImpl initializeApp(FirebaseOptionsJsImpl options, [String name]);
external AppJsImpl app([String name]);
external AuthJsImpl auth([AppJsImpl app]);
external DatabaseJsImpl database([AppJsImpl app]);
external StorageJsImpl storage([AppJsImpl app]);

@JS('User')
abstract class UserJsImpl extends UserInfoJsImpl {
  external bool get emailVerified;
  external void set emailVerified(bool v);
  external bool get isAnonymous;
  external void set isAnonymous(bool a);
  external List<UserInfoJsImpl> get providerData;
  external void set providerData(List<UserInfoJsImpl> d);
  external String get refreshToken;
  external void set refreshToken(String t);
  external PromiseJsImpl delete();
  external PromiseJsImpl<String> getToken([bool opt_forceRefresh]);
  external PromiseJsImpl<UserJsImpl> link(AuthCredentialJsImpl credential);
  external PromiseJsImpl<UserCredentialJsImpl> linkWithPopup(
      AuthProviderJsImpl provider);
  external PromiseJsImpl linkWithRedirect(AuthProviderJsImpl provider);
  external PromiseJsImpl reauthenticate(AuthCredentialJsImpl credential);
  external PromiseJsImpl reload();
  external PromiseJsImpl sendEmailVerification();
  external PromiseJsImpl<UserJsImpl> unlink(String providerId);
  external PromiseJsImpl updateEmail(String newEmail);
  external PromiseJsImpl updatePassword(String newPassword);
  external PromiseJsImpl updateProfile(UserProfileJsImpl profile);
}

@JS('UserInfo')
abstract class UserInfoJsImpl {
  external String get displayName;
  external void set displayName(String s);
  external String get email;
  external void set email(String s);
  external String get photoURL;
  external void set photoURL(String s);
  external String get providerId;
  external void set providerId(String s);
  external String get uid;
  external void set uid(String s);
}

@JS('Promise')
class PromiseJsImpl<T> extends ThenableJsImpl<T> {
  external PromiseJsImpl(Function resolver);
  external static PromiseJsImpl<List> all(List<PromiseJsImpl> values);
  external static PromiseJsImpl reject(error);
  external static PromiseJsImpl resolve(value);
}

@JS('Thenable')
abstract class ThenableJsImpl<T> {
  external ThenableJsImpl JS$catch([Func1 onReject]);
  external ThenableJsImpl then([Func1 onResolve, Func1 onReject]);
}

@JS('FirebaseError')
abstract class FirebaseErrorJsImpl {
  external String get code;
  external void set code(String s);
  external String get message;
  external void set message(String s);
  external String get name;
  external void set name(String s);
  external String get stack;
  external void set stack(String s);
}

@JS()
@anonymous
class UserProfileJsImpl {
  external String get displayName;
  external void set displayName(String s);
  external String get photoURL;
  external void set photoURL(String s);

  external factory UserProfileJsImpl({String displayName, String photoURL});
}

@JS()
@anonymous
class FirebaseOptionsJsImpl {
  external String get apiKey;
  external void set apiKey(String s);
  external String get authDomain;
  external void set authDomain(String s);
  external String get databaseURL;
  external void set databaseURL(String s);
  external String get storageBucket;
  external void set storageBucket(String s);

  external factory FirebaseOptionsJsImpl(
      {String apiKey,
      String authDomain,
      String databaseURL,
      String storageBucket});
}
