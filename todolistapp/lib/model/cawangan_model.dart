class CawanganModel {
  final String name;
  final String negeri;
  final int poskod;
  final String? id;

  CawanganModel(
      {required this.name,
      required this.negeri,
      required this.poskod,
      this.id});

  CawanganModel.fromMap(Map<String, dynamic> data, String ids)
      : name = data["name"],
        negeri = data['negeri'],
        poskod = data['poskod'],
        id = ids;

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "negeri": negeri,
      "poskod": poskod,
    };
  }
}
