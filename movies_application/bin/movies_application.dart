import 'dart:io';

void main(){
  //!create Categorogies
Categorogy c1 = Categorogy();
c1.name= "Horror";

Categorogy c2 = Categorogy();
c2.name= "Action";

Categorogy c3 = Categorogy();
c3.name= "Comedy";

Categorogy c4 = Categorogy();
c4.name= "Drama";

//!create movies
//Horror
Movie m1 = Movie();
m1.name= "The conjuring";
m1.categorogy=c1;
m1.price = 3.3;

Movie m2 = Movie();
m2.name= "A Quiet Place";
m2.categorogy=c1;
m2.price = 2.3;

//Action
Movie m3 = Movie();
m3.name= "The Expendables";
m3.categorogy=c2;
m3.price = 2.1;

Movie m4 = Movie();
m4.name= "Extraction";
m4.categorogy=c2;
m4.price = 3.0;
//Comedy
Movie m5 = Movie();
m5.name= "The Mask";
m5.categorogy=c3;
m5.price = 4.3;
Movie m6 = Movie();
m6.name= "The Hangover";
m6.categorogy=c3;
m6.price = 2.3;
//Drama
Movie m7 = Movie();
m7.name= "The Night Clerk";
m7.categorogy=c4;
m7.price = 3.2;
Movie m8 = Movie();
m8.name= "Father Stu";
m8.categorogy=c4;
m8.price = 2.0;


List<Categorogy> cat = [c1,c2,c3,c4];
List<Movie> mov = [m1,m2,m3,m4,m5,m6,m7,m8];

print("Available categories:  ");
int count = 1;
for (var c in cat){
    print("$count ${c.name}");
    count = count +1;
}

String? n = stdin.readLineSync();

for(var i in mov){
    // if(i.categorogy.name == n){
    //     i.showMovie();
    // }
   i.showMovie();
}


}

class Movie{
String ? name ;
double ? price ;
Categorogy ? categorogy;

void showMovie(){
  print("$name : $price");
}

}

class Categorogy{
String ? name ;

String? getName(){
    return name;
}
}