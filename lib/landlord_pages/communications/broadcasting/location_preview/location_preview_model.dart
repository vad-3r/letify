import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'location_preview_widget.dart' show LocationPreviewWidget;
import 'package:flutter/material.dart';

class LocationPreviewModel extends FlutterFlowModel<LocationPreviewWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> receipt = [];
  void addToReceipt(DocumentReference item) => receipt.add(item);
  void removeFromReceipt(DocumentReference item) => receipt.remove(item);
  void removeAtIndexFromReceipt(int index) => receipt.removeAt(index);
  void insertAtIndexInReceipt(int index, DocumentReference item) =>
      receipt.insert(index, item);
  void updateReceiptAtIndex(int index, Function(DocumentReference) updateFn) =>
      receipt[index] = updateFn(receipt[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BroadcastMessagesRecord? message;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
