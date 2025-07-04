abstract class StorageService {
  /// يولّد تقرير التخزين ويُعيد مسار الملف (أو null عند الخطأ)
  Future<String?> generateReport();
}
