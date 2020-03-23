import 'dart:io';
// import 'package:collection/collection.dart';



class Bank{
var _accno;
var _name;
var _balance;

//method to open an account
void openAccount(){
    stdout.write("Enter Account No: :");
  _accno =int.parse(stdin.readLineSync());

    stdout.write("Enter The Name :");
  _name =int.parse(stdin.readLineSync());

    stdout.write("Enter The Balance :");
  _balance =int.parse(stdin.readLineSync());
}
//metod to display account details
void showAccount(){
  print("Account details $_accno ,  $_name  $_balance");
}

//method to deposit money
void deposit(){
  var amt;
    stdout.write("Enter Amount U want To Deposit :");
  amt =int.parse(stdin.readLineSync());
  _balance= _balance+amt;
}

//method to withdraw money
void withdrawal(){
  var amt;
    stdout.write("Enter Amount U Want to withdraw:");
  amt =int.parse(stdin.readLineSync());
  if (_balance>=amt) {
    _balance = _balance-amt;
  }else{
  print("Less Balance..Transaction Failed..");
  }
}


//method to search an account number
bool search(String acn){
  if (_accno == acn) {
    showAccount();
    return true;
  }
  return false;
}
}


// class Exbank{

// }


void main(){


    stdout.write("How Many Customer U Want to Input :");
  int n =int.parse(stdin.readLineSync());



  // dynamic c= new Bank();
  List<dynamic> c = Bank() as List;(n);

  for (var i = 0; i < c.length; i++) {
    c[i] =new Bank();
    c[i].openAccount();
  }


  int ch;
  do {
    print("Main Menu \n :1: Display All \n , 2:Search By Account \n,3:Deposit\n,5:Exit");
       stdout.write("Your Choice");
  ch =int.parse(stdin.readLineSync());

switch (ch) 
{
  case 1:
    for (var i = 0; i < c.length; i++) 
    {
      c[i].showAccount();
    }
    break;
    
     case 2:
   stdout.write("Enter Account NoU Want To Search.. :");
  var acn =int.parse(stdin.readLineSync());
  bool found=false;
  for (var i = 0; i < c.length; i++) {
    found=c[i].search(acn);
    if (found)
     {
    break;  
    }
  }if (!found) 
  {
   stdout.write("Search Failed ...Account:");
  }
    break;


     case 3:
       stdout.write("Enter Account No.. :");
  var acn =int.parse(stdin.readLineSync());
  
  bool found=false;
  for (var i = 0; i < c.length; i++) {
    found=c[i].search(acn);
    if (found)
     {
    c[i].deposit();
    break;
    }
  }
  if (!found) 
  {
   stdout.write("Search Failed ...Account:");
  }
    break;

     case 4:
     stdout.write("Enter Account No.. :");
  var acn =int.parse(stdin.readLineSync());
  
  bool found=false;
  for (var i = 0; i < c.length; i++) {
    found=c[i].search(acn);
    if (found)
     {
    c[i].withdrawal();
    break;
    }
  }
  if (!found) 
  {
   stdout.write("Search Failed ...Account:");
  }
    break;
     case 5:
print("Goog Bye..");

    break;
  default:
}


  } 
  
  while (ch!=5);
}












// TODO:java reference code//


// import java.util.Scanner;

// class Bank
// {
// 	private String accno;
// 	private String name;
// 	private long balance;

// 	Scanner KB=new Scanner(System.in);
	
// 	//method to open an account
// 	void openAccount()
// 	{ 
// 		System.out.print("Enter Account No: ");
// 		accno=KB.next();
// 		System.out.print("Enter Name: ");
// 		name=KB.next();
// 		System.out.print("Enter Balance: ");
// 		balance=KB.nextLong();
// 	}

// 	//method to display account details
// 	void showAccount()
// 	{ 
// 		System.out.println(accno+","+name+","+balance);
// 	}

// 	//method to deposit money
// 	void deposit()
// 	{
// 		long amt;
// 		System.out.println("Enter Amount U Want to Deposit : ");
// 		amt=KB.nextLong();
// 		balance=balance+amt;
// 	}

// 	//method to withdraw money
// 	void withdrawal()
// 	{
// 		long amt;
// 		System.out.println("Enter Amount U Want to withdraw : ");
// 		amt=KB.nextLong();
// 		if(balance>=amt)
// 		{ 
// 			balance=balance-amt;
// 		}
// 		else
// 		{
// 			System.out.println("Less Balance..Transaction Failed..");
// 		}
// 	}

// 	//method to search an account number
// 	boolean search(String acn)
// 	{ 
// 		if(accno.equals(acn))
// 		{ 
// 			showAccount();
// 			return(true);
// 		}
// 		return(false);
// 	}
// }

// class ExBank
// {  
// 	public static void main(String arg[])
// 	{
// 		Scanner KB=new Scanner(System.in);
		
// 		//create initial accounts
// 		System.out.print("How Many Customer U Want to Input : ");
// 		int n=KB.nextInt();
// 		Bank  C[]=new Bank[n];
// 		for(int i=0;i<C.length;i++)
// 		{   
// 			C[i]=new Bank();
// 			C[i].openAccount();
// 		}
		
// 		//run loop until menu 5 is not pressed
// 		int ch;
// 		do
// 		{
// 			System.out.println("Main Menu\n
// 			1.Display All\n
// 			2.Search By Account\n
// 			3.Deposit\n
// 			4.Withdrawal\n
// 			5.Exit");
// 			System.out.println("Ur Choice :");
// 			ch=KB.nextInt();
// 			switch(ch)
// 			{ 
// 				case 1:
// 					for(int i=0;i<C.length;i++)
// 					{
// 						C[i].showAccount();
// 					}
// 					break;

// 				case 2:
// 					System.out.print("Enter Account No U Want to Search...: ");
// 					String acn=KB.next();
// 					boolean found=false;
// 					for(int i=0;i<C.length;i++)
// 					{  
// 						found=C[i].search(acn);
// 						if(found)
// 						{
// 							break;
// 						}
// 					}
// 					if(!found)
// 					{
// 						System.out.println("Search Failed..Account Not Exist..");
// 					}
// 					break;

// 				case 3:
// 					System.out.print("Enter Account No : ");
// 					acn=KB.next();
// 					found=false;
// 					for(int i=0;i<C.length;i++)
// 					{  
// 						found=C[i].search(acn);
// 						if(found)
// 						{
// 							C[i].deposit();
// 							break;
// 						}
// 					}
// 					if(!found)
// 					{
// 						System.out.println("Search Failed..Account Not Exist..");
// 					}
// 					break;

// 				case 4:
// 					System.out.print("Enter Account No : ");
// 					acn=KB.next();
// 					found=false;
// 					for(int i=0;i<C.length;i++)
// 					{  
// 						found=C[i].search(acn);
// 						if(found)
// 						{
// 							C[i].withdrawal();
// 							break;
// 						}
// 					}
// 					if(!found)
// 					{
// 						System.out.println("Search Failed..Account Not Exist..");
// 					}
// 					break;

// 				case 5:
// 					System.out.println("Good Bye..");
// 					break;
// 			}
// 		}
// 		while(ch!=5);
// 	}
// }
