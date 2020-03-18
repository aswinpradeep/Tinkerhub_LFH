import 'dart:io';
import 'dart:core';

class Participant{
	var pname, prole, stack, time;

	Participant(){
		print("Enter name");
		pname = stdin.readLineSync();
	}

	void addStacks(){
		print("Enter stack ");
			stack=stdin.readLineSync();
		
	}
	void setMentorOrLearner(){
		print("Enter M for Mentor or L for Learner: ");
		prole = stdin.readLineSync();
	}
	void setAvailableTime(){
		if (prole == "M"){
			time = int.parse(stdin.readLineSync());
		}
	}
	void getMentor(var stackx, var timex){
		if (prole == "M"){
			for (var tech in stackx){
				var result = stack.Where(tech, orElse: () => null);
				if (result == null){
					break;
        }
				else if (timex < time){
					print("$pname is available to mentor you in $tech");
				}
			}
		}
	}
}

void main(){
	var individual = {}, stack, time;
	print("Enter number of Participants: ");
	int parnum = int.parse(stdin.readLineSync());
	for(int i=0; i<parnum; i++){
		print("\n Enter Details of individual: "+(i+1).toString());
		individual.putIfAbsent(i, () => Participant());
		individual[i].addStacks();
		individual[i].setMentorOrLearner();
		individual[i].setAvailableTime();
	}
	

	print("Enter Stack name ");
	stack=stdin.readLineSync();



	print("Enter avaliable time: ");
	time = int.parse(stdin.readLineSync());

	for(int i=0; i<parnum; i++){
		individual.putIfAbsent(i, () => individual[i].getMentor(stack, time));
	}
}
