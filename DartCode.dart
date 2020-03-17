
void main(){
    TechLearnerMentor obj=TechLearnerMentor()
    
  
}


class TechLearnerMentor
{
    var stackname;
    var participant;
    var time;

    void addStacks()
    {
      print("enter stackname");
      this.stackname=stdin.readLineSync();

    }
    void setMentorOrLearner()
    {
      print("enter participant designation(type METOR OR LEARNER)");
      this.participant= stdin.readLineSync();

    }
    void setAvailableTime()
    {
        if(this.participant=="MENTOR")
        {
          this.time=stdin.readLineSync();
        }
    }
    void getMentor(var stacknamex,var timex)
    {
      while(stackname==stacknamex)
      {
        if(participant==MENTOR && time<timex)
        {
            print($stackname + "Is free for mentoring");
        }
      }
    }
}
