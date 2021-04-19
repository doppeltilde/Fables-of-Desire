// class ChatOne {
//   String chatText;
//   String chatAnswer;

//   ChatOne(String q, String a) {
//     chatText = q;
//     chatAnswer = a;
//   }
// }

// class Chat1Q {
//   int _chatNumber = 0;

//   List<ChatOne> _chatBank = [
//     ChatOne(
//         "She put my hands on her waist and slowly hugged me around my neck...",
//         "Narrator"),
//     ChatOne(
//         "I looked to Jacob for confirmation, but he was of course in his own world with Elaine...",
//         "Narrator"),
//     ChatOne("I'm somehow afraid. I'm not sure why... I feel so strange...",
//         "Alvin"),
//     ChatOne("”Are you alright?”", "Clara"),
//     ChatOne("”Uh, yeah... Sorry.”", "Alvin"),
//     ChatOne(
//         "She gave my a wary look. ”If this is too fast for you, just say so.”",
//         "Clara"),
//     ChatOne(
//         "”You don't have to be afraid. I just wanted to make you feel better. It's not fair to be alone...”",
//         "Clara"),
//     ChatOne("”Yeah, thanks...”, she hugged me.", "Alvin"),
//     ChatOne("It's strange dancing with someone else...", "Alvin"),
//   ];

//   void nextQuestion() {
//     if (_chatNumber < _chatBank.length - 1) {
//       _chatNumber++;
//     }
//   }

//   String getQuestionText() {
//     return _chatBank[_chatNumber].chatText;
//   }

//   String getCorrectAnswer() {
//     return _chatBank[_chatNumber].chatAnswer;
//   }

//   bool isFinished() {
//     if (_chatNumber >= _chatBank.length - 1) {
//       print('Now returning true');
//       return true;
//     } else {
//       return false;
//     }
//   }

//   void reset() {
//     _chatNumber = 0;
//   }
// }
