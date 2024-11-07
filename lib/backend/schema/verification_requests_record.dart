import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VerificationRequestsRecord extends FirestoreRecord {
  VerificationRequestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "RequestID" field.
  String? _requestID;
  String get requestID => _requestID ?? '';
  bool hasRequestID() => _requestID != null;

  // "UserID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "RequestType" field.
  String? _requestType;
  String get requestType => _requestType ?? '';
  bool hasRequestType() => _requestType != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  bool hasComments() => _comments != null;

  // "VerificationDateTime" field.
  DateTime? _verificationDateTime;
  DateTime? get verificationDateTime => _verificationDateTime;
  bool hasVerificationDateTime() => _verificationDateTime != null;

  void _initializeFields() {
    _requestID = snapshotData['RequestID'] as String?;
    _userID = snapshotData['UserID'] as DocumentReference?;
    _requestType = snapshotData['RequestType'] as String?;
    _status = snapshotData['Status'] as String?;
    _comments = snapshotData['Comments'] as String?;
    _verificationDateTime = snapshotData['VerificationDateTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('VerificationRequests');

  static Stream<VerificationRequestsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => VerificationRequestsRecord.fromSnapshot(s));

  static Future<VerificationRequestsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => VerificationRequestsRecord.fromSnapshot(s));

  static VerificationRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VerificationRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VerificationRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VerificationRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VerificationRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VerificationRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVerificationRequestsRecordData({
  String? requestID,
  DocumentReference? userID,
  String? requestType,
  String? status,
  String? comments,
  DateTime? verificationDateTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RequestID': requestID,
      'UserID': userID,
      'RequestType': requestType,
      'Status': status,
      'Comments': comments,
      'VerificationDateTime': verificationDateTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class VerificationRequestsRecordDocumentEquality
    implements Equality<VerificationRequestsRecord> {
  const VerificationRequestsRecordDocumentEquality();

  @override
  bool equals(VerificationRequestsRecord? e1, VerificationRequestsRecord? e2) {
    return e1?.requestID == e2?.requestID &&
        e1?.userID == e2?.userID &&
        e1?.requestType == e2?.requestType &&
        e1?.status == e2?.status &&
        e1?.comments == e2?.comments &&
        e1?.verificationDateTime == e2?.verificationDateTime;
  }

  @override
  int hash(VerificationRequestsRecord? e) => const ListEquality().hash([
        e?.requestID,
        e?.userID,
        e?.requestType,
        e?.status,
        e?.comments,
        e?.verificationDateTime
      ]);

  @override
  bool isValidKey(Object? o) => o is VerificationRequestsRecord;
}
