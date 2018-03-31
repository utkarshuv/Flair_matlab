clc;
clear;

delete(instrfind);
bt=bluetooth_voice;
fopen(bt);

NET.addAssembly('System.Speech');
obj=System.Speech.Synthesis.SpeechSynthesizer;
obj.Volume=100;

clc;
l=1;
q=char(39);
m=strcat('what',q,'s',' up');

Speak(obj,'hello i am flair your assistant . what can i do for you');
disp('What can i do for you?');

while(l>0)
   
    st=voice_scan(bt);
    disp(st);
    
     if(strcmpi('notepad',st)||strcmpi('open notepad',st)||strcmpi('start notepad',st))%notepad
        Speak(obj,'starting notepad');
         system('start notepad');
     end
     
     if(strcmpi('music',st))%music
        Speak(obj,'hindi or english');
        system('start www.gaana.com');
     end
     
     if(strcmpi('repeat',st)||strcmpi('repeat after me',st))%repeat
        Speak(obj,'ok i will repeat . speak now');
        st=voice_scan(bt);
        Speak(obj,st);
     end
     
     
     
     if(strcmpi('internet',st))%chrome
         Speak(obj,'name the website');
         disp('name the website');
         st=voice_scan(bt);
         m=st;
         m=m(~isspace(m));
         web(m);
     end
         
     if(strcmpi('railway',st))%railways
        system('start www.indianrailways.gov.in');
     end
     
     if(strcmpi('who are you',st))
        Speak(obj,'hello people ');
        Speak(obj,'i am flair your assistant');
        Speak(obj,'and i am here to help you');
        Speak(obj,'what can i do for you');
     end
     
     if(strcmpi('how are you',st))
        disp('i am fine ! what about you?');
        Speak(obj,'i am fine . what about you');
     end
     
     if(strcmpi('weather',st) || strcmpi('how is the weather today',st)||strcmpi('mausam',st))
        system('start https://www.google.co.in/search?q=weather&rlz=1C1CHBD_enIN751IN752&oq=weather&aqs=chrome..69i57.992j0j7&sourceid=chrome&ie=UTF-8');
     end
     
     if(strcmpi('movies',st))
        Speak(obj,'do you want to want to book tickets . or watch it online');
        Speak(obj,'say book tickets . or say watch online');
     elseif(strcmpi('book tickets',st))
         system('start www.bookmyshow.com');
     elseif(strcmpi('watch online',st))
         Speak(obj,'where would you like to watch');
         st=voice_scan(bt);
         if(strcmpi('netflix',st))
             Speak(obj,'opening netflix . enjoy');
         system('start www.netflix.com');
         elseif(strcmpi('amazon prime',st))
             Speak(obj,'opening amazon prime videos . enjoy');
         system('start www.primevideo.com');
         end
     end
     
     if(strcmpi('calculator',st))%calculator
        Speak(obj,'starting calculator');
        system('start calc');
        disp('What can i do for you?');
     end
     
     if(strcmpi('you know google assistant',st)||strcmpi('do you know google assistant',st))%googleAssistant
        disp('yeah! google assistant is awesome');
         Speak(obj,'yeah . google assistant is awesome');
     elseif(strcmpi('what do you think about google assistant',st))
             disp('google assistant is awesome');
         Speak(obj,'google assistant is awesome');
     elseif(strcmpi('you know siri',st)||strcmpi('do you know siri',st))
         disp('yeah i know siri');
         Speak(obj,'yeah i know siri');            
     elseif(strcmpi('what do you think about siri',st))
         disp('siri is lit');
         Speak(obj,'siri');            
     end
     
     
     
     if(strcmpi('who is your crush',st)||strcmpi('what is your favourite thing',st))
         Speak(obj,'matlab');
         disp('MATLAB');
     end
     
     if(strcmpi('what do you love',st)||strcmpi('who do you love',st))
        Speak(obj,'my creators');
     end
     
     
     if(strcmpi('when is your birthday',st))
         Speak(obj,'ask my creators . haha');
         disp('ask my creators');
     end
     
      if(strcmpi('hello',st)||strcmpi('hey',st))
         Speak(obj,'hey what can i do for you?');
         disp('hey what can i do for you?');
      end
     
       if(strcmpi(m,st))
         Speak(obj,'nothing is up . everything is down because of gravity . hastaag game of words . hee hee');
         disp('nothing is up . everything is down because of gravity');
       end
     
      if(strcmpi('can you beatbox',st)||strcmpi('beatbox',st))
          disp('sure');
         Speak(obj,'sure . boom boom chhak chaak boom chak boom boom chak chak boomsss');         
         disp('hope you enjoyed . because it was lit');
         Speak(obj,'hope you enjoyed . because it was lit');
      end
     
     
     if(strcmpi('who created you',st)||strcmpi('who is your creator',st)||strcmpi('who are your creators',st))
        Speak(obj,'my creators are . snehil behen . vipin bro . rishabh bro . and utkarsh bro');
        Speak(obj,'and i am proud of them for creating me . hee hee');
        Speak(obj,'i would also like to thank doctor geetika srivastava . for motivating my creators to develop me');
     end
     
     
     if(strcmpi('social media',st))%social media
         Speak(obj,'ok lets waste some time . haha');
        disp('what would you like to open?');
        Speak(obj,' by the way . what would you like to open');
        st=voice_scan(bt);
        if(strcmpi('facebook',st))
            Speak(obj,'opening facebook');
            system('start www.facebook.com');
        elseif(strcmpi('twitter',st))
            Speak(obj,'opening twitter');
            system('start www.twitter.com');
        elseif(strcmpi('instagram',st))
            Speak(obj,'opening instagram');
            system('start www.instagram.com');
        end
     end
      
     
    if(strcmpi('news',st))%news
        disp('choose a language, say HINDI or ENGLISH');
        Speak(obj,'choose a language, say HINDI or ENGLISH');
         st=voice_scan(bt);
        if(strcmpi('english',st))%english news
             Speak(obj,'here is english news for you');
             system('start https://news.google.com/news');
        elseif(strcmpi('hindi',st))%hindi news
            Speak(obj,'here is hindi news for you');
            system('start https://khabar.ndtv.com/');
        end
    end
    
    
    if(strcmpi('click picture',st))%to click picture
        cam=webcam(1);
        disp('SAY CHEESE');
        Speak(obj,'say cheese');
        pause(3);
        disp('DONE');
        Speak(obj,'done');
        img=snapshot(cam);
        clear cam;
        imshow(img);
    end
     
    if(strcmpi('mirror',st))%live video preview/feed
        cam=webcam(1);
        preview(cam);
        Speak(obj,'here is a mirror for you to look amazing');
        pause(20);
        clear cam;
    end
    
    if(strcmpi('tell me a joke',st))%joke
        num=randi(4);
        if(num==1)
            Speak(obj,'how many programmers does it take to change a light bulb');
            Speak(obj,'none . . its a hardware problem . . haha');
        elseif(num==2)
            Speak(obj,'what do computers eat for a snack');
            Speak(obj,'microchips . yum yum');
        elseif(num==3)
            Speak(obj,'which computer sings the best');
            Speak(obj,'a dell . haha');
        elseif(num==4)
            Speak(obj,'why did the programmer use, the entire bottle of shampoo in one go');
            Speak(obj,'because it said . lather, rinse, repeat . hastaag loops . lol');
        end
    end
     
    if(strcmpi('sleep',st))%exiting the loop
        Speak(obj,'ok bye bye . see you later');
        break;
    end
   
    
     
    %img=imread(strcat('F:\DB\',st,'.jpg'));
    %imshow(img);
    l=l+1;
end