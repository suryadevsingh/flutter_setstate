import 'dart:async';

import 'dart:core';

import 'dart:core';

class RequestSwipeBloc {





  updateIndicator(int value) {
    print("value received");
    this._index = value;
    print(" is $_index");

  }


  int _index;

  int get index => _index;

  set index(int value) {
    _index = value;
  }


}