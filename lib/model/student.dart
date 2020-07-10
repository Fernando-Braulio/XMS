class StudentModel {

  int id;
  String name;
  String turma;
  int game;
  int pending_homework;
  int delayed_homework;
  int up_to_date_homework;

  StudentModel({ id, name, turma, game, pending_homework, delayed_homework, up_to_date_homework});

  StudentModel.fromJson(Map<String, dynamic> json){
    this.name=json['name'];
    this.turma=json['turma'];
    this.id=json['id'];
    this.game=json['game'];
    this.pending_homework=json['pending_homework'];
    this.delayed_homework=json['delayed_homework'];
    this.up_to_date_homework=json['up_to_date_homework'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['turma'] = this.turma;
    data['game'] = this.game;
    data['pending_homework'] = this.pending_homework;
    data['delayed_homework'] = this.delayed_homework;
    data['up_to_date_homework'] = this.up_to_date_homework;
    return data;
  }
}