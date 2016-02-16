// ::::::::::::::::::::::::::::::::: //
//
//    David Porter
//    Interactive Art Cut-UP
//    Student Project
//    text from Ulysses 
//    Feb 15, 2016
//
// ::::::::::::::::::::::::::::::::: //

// When you cut into the present, 
//the future simply leaks out.

// pulling the fonts
PFont slab;
PFont script;

// strigns of word syntaxes
String[] subject = {"Mr. Leopold Bloom", "She", "The Cat", 
                    "Mr. Bloom", "He", "I", "Hanlon's milkman", "Buckley", "Dlugacz"};
                    
String[] verb = { "watched", "liked", "ate", "gave", "fine", "walked", "stupid", 
                  "curious", "never", "look", "said", "might", "licked" };
                  
String[] determiner = {"fried", "avid", "turning", "dry", "stiffly", "thick", "stuffed", 
                       "inner", "roasted", "fried", "grilled", "creaky", "scented", "tang of"};
                       
String[] noun = {"breakfast", "saucer", "eyes","mice", "chickens", "chookchooks", "hands", 
                 "fire", "knees", "table", "tower", "organs", "relish","boots", "beasts", 
                 "fowls", "giblet soup", "nutty gizzards", "coals", "heart", "liverslices",
                 "hencods' roes", "mutton kidneys", "urine"};


int sub, ver, det, nou;



//color palette array
color scheme[] = { #CFF700, #06799F, #FF9C00, #A101A6};
color palette[] = scheme;


void setup(){
  size(1200, 300);
  
  // load fonts
  slab = loadFont("AmericanTypewriter-40.vlw");
  script = loadFont("AvenirNext-Medium-15.vlw");
}

void draw(){
      background(0);
      
      // quote text
      textFont(script, 15);  
      fill(200);   //  light grey fill   
      textAlign(LEFT);
      text( " When you cut into the present,", 45, 35);
      text( " the future simply leaks out.", 45, 55);


      
      fill(palette[0]);
      text( " press S to change subject" , 45, height/2 + 50); //discription and direction
      fill(palette[1]);
      text( " press V to change verb" , 45, height/2 + 70);
      fill(palette[2]);
      text( " press A to change adjective" , 45, height/2 + 90);
      fill(palette[3]);
      text( " press N to change noun" , 45, height/2 + 110);   
       
      textAlign(CENTER);

      // start of keyPessed functions
      if((keyPressed == true) && (key == 's' || key == 'S')) { // function to make operatin occure
        sub = int(random(subject.length));// select randomly from array
        
      }else if((keyPressed == true) && (key == 'v' || key == 'V')) {
        ver = int(random(verb.length));
        
      }else if((keyPressed == true) && (key == 'a' || key == 'A')) {
        det = int(random(determiner.length));
        
      }else if((keyPressed == true) && (key == 'n' || key == 'N')) {
       nou = int(random(noun.length));
      } 
       
       // subject text
       translate(50, 0);
       textFont(slab, 40);
       fill(palette[0]);
       text(subject[sub], textWidth(subject[sub])/2, height/2); // show static text
        
       // verb text
       textFont(slab, 40);
       fill(palette[1]);
       translate(textWidth(subject[sub]+2), 0);
       text(verb[ver], textWidth(verb[ver])/2, height/2);
       
       // adjective text
       textFont(slab, 40);
       fill(palette[2]);  
       translate(textWidth(verb[ver]+2), 0);
       text(determiner[det], textWidth(determiner[det])/2, height/2);
     
       // noun text
       textFont(slab, 40);
       fill(palette[3]);
       translate(textWidth(determiner[det]+2), 0);
       text(noun[nou], textWidth(noun[nou])/2, height/2);
        
       
          

}