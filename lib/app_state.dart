import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isForYou = prefs.getString('ff_isForYou') ?? _isForYou;
    });
    _safeInit(() {
      _currentVisitorPage =
          prefs.getInt('ff_currentVisitorPage') ?? _currentVisitorPage;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isUserProfilePictureUploaded = false;
  bool get isUserProfilePictureUploaded => _isUserProfilePictureUploaded;
  set isUserProfilePictureUploaded(bool value) {
    _isUserProfilePictureUploaded = value;
  }

  String _tempProfileImage = '';
  String get tempProfileImage => _tempProfileImage;
  set tempProfileImage(String value) {
    _tempProfileImage = value;
  }

  bool _isUserUploadEventImage = false;
  bool get isUserUploadEventImage => _isUserUploadEventImage;
  set isUserUploadEventImage(bool value) {
    _isUserUploadEventImage = value;
  }

  bool _isUserSetDate = false;
  bool get isUserSetDate => _isUserSetDate;
  set isUserSetDate(bool value) {
    _isUserSetDate = value;
  }

  bool _isUserSetStartTime = false;
  bool get isUserSetStartTime => _isUserSetStartTime;
  set isUserSetStartTime(bool value) {
    _isUserSetStartTime = value;
  }

  bool _isUserSetEndTime = false;
  bool get isUserSetEndTime => _isUserSetEndTime;
  set isUserSetEndTime(bool value) {
    _isUserSetEndTime = value;
  }

  bool _isBasicCleared = false;
  bool get isBasicCleared => _isBasicCleared;
  set isBasicCleared(bool value) {
    _isBasicCleared = value;
  }

  bool _isMusicGenreCleared = false;
  bool get isMusicGenreCleared => _isMusicGenreCleared;
  set isMusicGenreCleared(bool value) {
    _isMusicGenreCleared = value;
  }

  List<String> _tempImageStored = [];
  List<String> get tempImageStored => _tempImageStored;
  set tempImageStored(List<String> value) {
    _tempImageStored = value;
  }

  void addToTempImageStored(String value) {
    tempImageStored.add(value);
  }

  void removeFromTempImageStored(String value) {
    tempImageStored.remove(value);
  }

  void removeAtIndexFromTempImageStored(int index) {
    tempImageStored.removeAt(index);
  }

  void updateTempImageStoredAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    tempImageStored[index] = updateFn(_tempImageStored[index]);
  }

  void insertAtIndexInTempImageStored(int index, String value) {
    tempImageStored.insert(index, value);
  }

  bool _isUserRetrieveEventDate = false;
  bool get isUserRetrieveEventDate => _isUserRetrieveEventDate;
  set isUserRetrieveEventDate(bool value) {
    _isUserRetrieveEventDate = value;
  }

  bool _isUserRetrievedEventStartTime = false;
  bool get isUserRetrievedEventStartTime => _isUserRetrievedEventStartTime;
  set isUserRetrievedEventStartTime(bool value) {
    _isUserRetrievedEventStartTime = value;
  }

  bool _isUserRetrievedEventEndTime = false;
  bool get isUserRetrievedEventEndTime => _isUserRetrievedEventEndTime;
  set isUserRetrievedEventEndTime(bool value) {
    _isUserRetrievedEventEndTime = value;
  }

  bool _isBandHomePageSelected = false;
  bool get isBandHomePageSelected => _isBandHomePageSelected;
  set isBandHomePageSelected(bool value) {
    _isBandHomePageSelected = value;
  }

  bool _isBandCreateEventPageSelected = false;
  bool get isBandCreateEventPageSelected => _isBandCreateEventPageSelected;
  set isBandCreateEventPageSelected(bool value) {
    _isBandCreateEventPageSelected = value;
  }

  bool _isBandProfilePageSelected = false;
  bool get isBandProfilePageSelected => _isBandProfilePageSelected;
  set isBandProfilePageSelected(bool value) {
    _isBandProfilePageSelected = value;
  }

  bool _isSearchActive = false;
  bool get isSearchActive => _isSearchActive;
  set isSearchActive(bool value) {
    _isSearchActive = value;
  }

  bool _isEventAlreadySaved = false;
  bool get isEventAlreadySaved => _isEventAlreadySaved;
  set isEventAlreadySaved(bool value) {
    _isEventAlreadySaved = value;
  }

  List<String> _saveEventList = [];
  List<String> get saveEventList => _saveEventList;
  set saveEventList(List<String> value) {
    _saveEventList = value;
  }

  void addToSaveEventList(String value) {
    saveEventList.add(value);
  }

  void removeFromSaveEventList(String value) {
    saveEventList.remove(value);
  }

  void removeAtIndexFromSaveEventList(int index) {
    saveEventList.removeAt(index);
  }

  void updateSaveEventListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    saveEventList[index] = updateFn(_saveEventList[index]);
  }

  void insertAtIndexInSaveEventList(int index, String value) {
    saveEventList.insert(index, value);
  }

  String _isForYou = 'For You';
  String get isForYou => _isForYou;
  set isForYou(String value) {
    _isForYou = value;
    prefs.setString('ff_isForYou', value);
  }

  int _currentVisitorPage = 0;
  int get currentVisitorPage => _currentVisitorPage;
  set currentVisitorPage(int value) {
    _currentVisitorPage = value;
    prefs.setInt('ff_currentVisitorPage', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
