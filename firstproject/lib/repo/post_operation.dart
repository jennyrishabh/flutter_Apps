import 'package:firstproject/model/five_data.dart';

class post_operation{

  static post_operation _post = post_operation();
  _post_operation(){}

  static post_operation getInstance(){
    return _post;
  }


  // to stop the use of static to egarly load this method we created this class as Singlton class
   List<five_data> getPosts(){
    return [
      five_data(author: 'AAAA', time: '16:29', title: 'hey there 1', imageURL: 'https://i.pinimg.com/originals/83/ad/5e/83ad5e9f49e504a7d0eb647cd57f9a18.jpg'),
      five_data(author: 'BB', time: '31:29', title: 'hey there 2', imageURL: 'https://i.pinimg.com/originals/97/58/1b/97581b53d723484a3f67ae0157cf2383.jpg'),
      five_data(author: 'AAA', time: '22:29', title: 'hey there 3', imageURL: 'https://www.gameplan-a.com/wp-content/uploads/fly-images/13388/Man-speech-talk-inspiration-TedTalks-stage-sign-1440x9999.jpg'),
      five_data(author: 'BBBB', time: '10:29', title: 'hey there 4', imageURL: 'https://www.washingtonpost.com/resizer/S0XoT1tZ_0qO5qSWBeWlrN4znYA=/1440x0/smart/arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/VSBHRBGLD4I6PNIGRIIO2EPM6U.jpg'),

    ];
  }
}