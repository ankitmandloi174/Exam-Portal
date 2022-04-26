function populate() {
    if(quiz.isEnded()) {
      
        showScores();
      

        
    }
    else {
        // show question
        var element = document.getElementById("question");
        element.innerHTML = quiz.getQuestionIndex().text;

        // show options
        var choices = quiz.getQuestionIndex().choices;
        for(var i = 0; i < choices.length; i++) {
            var element = document.getElementById("choice" + i);
            element.innerHTML = choices[i];
            guess("bt" + i, choices[i]);
        }

        showProgress();
    }
};

function guess(id, guess) {
    var button = document.getElementById(id);
    button.onclick = function() {
        quiz.guess(guess);
        populate();
    }
};


function showProgress() {
    var currentQuestionNumber = quiz.questionIndex + 1;
    var element = document.getElementById("progress");
    element.innerHTML = "Question " + currentQuestionNumber + " of " + quiz.questions.length;
};

function showScores() {
     var a=document.createElement('a');
      var link=document.createTextNode('this is link');
      a.appendChild(link);
      a.title="this is link";
      a.href="index.html";
      document.body.appendChild(a);
    var gameOverHTML = "<h1>Result</h1>";
    gameOverHTML += "<h2 id='score'> Your Result: " + quiz.score + "</h2>";
  // gameOverHTML += "<a href='index.html'>" +Sign Out+ "</a>";
   var element = document.getElementById("quiz");
   
    element.innerHTML = gameOverHTML;
    
  
     
};


var questions = [
   new Question(" What type of computing technology refers to services and applications that typically run on a distributed network through virtualized resources?", ["Distributed ", "Cloud","Soft", "Parallel"], "Cloud"),

    new Question("Cloud computing is a kind of abstraction which is based on the notion of combining physical resources and represents them as _______resources to users", ["Real", "Cloud","Virtual", "None of the Mentioned"], "Virtual"),
    

    new Question("Which one of the following cloud concepts is related to sharing and pooling the resources?", ["Polymorphism", "Virtualization","Abstraction", "None of the Mentioned"], "Virtualization"),
    

    new Question(" Which one of the following is Cloud Platform by Amazon?", ["Azure", "AWS","Cloudera", "Google Cloud"], "AWS"),
        
        

];


var quiz = new Quiz(questions);


populate();




