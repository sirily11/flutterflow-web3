import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  List<CandidateStruct> candidates = [];
  void addToCandidates(CandidateStruct item) => candidates.add(item);
  void removeFromCandidates(CandidateStruct item) => candidates.remove(item);
  void removeAtIndexFromCandidates(int index) => candidates.removeAt(index);
  void insertAtIndexInCandidates(int index, CandidateStruct item) =>
      candidates.insert(index, item);
  void updateCandidatesAtIndex(int index, Function(CandidateStruct) updateFn) =>
      candidates[index] = updateFn(candidates[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - listCandidates] action in HomePage widget.
  List<CandidateStruct>? fetchCandidateResults;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
