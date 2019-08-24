gml_pragma('global','scr_badgeinit()');
gml_release_mode(true);
randomize();

global.song = 'intro.it';
global.playing = 'intro.it';

for(var i=0;i<8;i++) {
    global.badges[i,0] = -1; // rank
    global.badges[i,1] = 0;  // current value
    global.badges[i,2] = 'Badge Name'; // name
    global.badges[i,3] = 'Badge Description';
    global.badges[i,4] = 'Clear Description';
    for(var j=0;j<4;j++)
    global.benchmark[i,j] = j+1;
}

load_options();

 i=0; j=0; 
 // 0 HiScore 
    global.badges[i,2] = 'Becolumner';
    global.badges[i,3] = 'Finish a game with high score of at least :value';
    global.badges[i,4] = 'For finishing a game with high score of at least :value';
    global.benchmark[i,j++] = 1000; 
    global.benchmark[i,j++] = 10000; 
    global.benchmark[i,j++] = 50000; 
    global.benchmark[i++,j++] = 200000; j=0;
 // 1 Chromatic    
    global.badges[i,2] = 'Chromatic';
    global.badges[i,3] = 'Clear :value hypercubes';
    global.badges[i,4] = 'For clearing :value hypercubes';
    global.benchmark[i,j++] = 10; 
    global.benchmark[i,j++] = 50; 
    global.benchmark[i,j++] = 100; 
    global.benchmark[i++,j++] = 200; j=0;
 // 2 Color Buster
    global.badges[i,2] = 'Spectrum';
    global.badges[i,3] = 'Make a match that has :value colors at once'; 
    global.badges[i,4] = 'For making a match with :value colors';
    global.benchmark[i,j++] = 3; 
    global.benchmark[i,j++] = 4; 
    global.benchmark[i,j++] = 5; 
    global.benchmark[i++,j++] = 6; j=0;
 // 3 Superstar
    global.badges[i,2] = 'Superstar';
    global.badges[i,3] = 'Make a :value+ match';  
    global.badges[i,4] = 'For making :value+ match';
    global.benchmark[i,j++] = 5; 
    global.benchmark[i,j++] = 7; 
    global.benchmark[i,j++] = 10; 
    global.benchmark[i++,j++] = 15; j=0; 
    
 // 4 Blaster
    global.badges[i,2] = 'Blaster';
    global.badges[i,3] = 'Destroy :value gems in a single move';  
    global.badges[i,4] = 'For destroying :value gems in a single move';
    global.benchmark[i,j++] = 10; 
    global.benchmark[i,j++] = 20; 
    global.benchmark[i,j++] = 35; 
    global.benchmark[i++,j++] = 50; j=0;     
 // 5 Chain Reaction
    global.badges[i,2] = 'Chain Reaction';
    global.badges[i,3] = 'Make :value-cascade';  
    global.badges[i,4] = 'For making a :value-cascade';
    global.benchmark[i,j++] = 3; 
    global.benchmark[i,j++] = 4; 
    global.benchmark[i,j++] = 5; 
    global.benchmark[i++,j++] = 7; j=0;     
 // 6 Dynamo
    global.badges[i,2] = 'Dynamo';
    global.badges[i,3] = 'Make a :value-chain of consecutive matches';
    global.badges[i,4] = 'For making a :value-chain of consecutive matches';
    global.benchmark[i,j++] = 3; 
    global.benchmark[i,j++] = 5; 
    global.benchmark[i,j++] = 9; 
    global.benchmark[i++,j++] = 15; j=0;              
