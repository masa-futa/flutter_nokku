
import 'package:flutter/material.dart';

class RenderBoxWidget extends SingleChildRenderObjectWidget {
  @override
  RenderObject createRenderObject(BuildContext context) {
    return CustomRenderBox();
  }

}

class CustomRenderBox extends RenderBox {

}
