function y=posfal(a,b,cont,fu)
syms x
a1=subs(fu,a);
b1=subs(fu,b);
c=b-((b-a)*subs(fu,b)/(subs(fu,b)-subs(fu,a)));
c1=subs(fu,c);
d1=a1*c1;
d2=b1*c1;
pen=(b1-a1)/(b-a);
rec=pen*(x-a)+a1;
control=true;
z=-30:.01:30;
ez=subs(fu,z);
ejerec=subs(rec,z);
plot(z,ez)
grid on
hold on
plot(a,a1)
plot(b,b1)
plot(z,ejerec)
disp(a1)
disp(b1)
if d1<0
    w(1)=a;
    w(2)=c;
    while(control)
        for j=1:cont
            w(j+2)=w(j+1)-((w(j+1)-w(j))*subs(fu,w(j+1))/(subs(fu,w(j+1))-subs(fu,w(j))));
            disp(w(j+2))
            plot(w(j+2),subs(fu,w(j+2)),'o')
    aa1=subs(fu,w(j+1))-subs(fu,w(j));
    bb1=w(j+1)-w(j);
    a2=aa1/bb1;
    cc1=x-w(j);
    dd1=subs(fu,w(j));
   recta=(a2*cc1)+dd1;
   ejerecta=subs(recta,z);
   plot(z,ejerecta)
            if w(j+2)==w(j+1)
                y=w(j+2);
                control=false;
                break
            elseif j==cont
                control=false;
                break
           
            end
        end
        
    end
elseif d2<0
     w(1)=b;
    w(2)=c;
    while(control)
        for j=1:cont
            w(j+2)=w(j+1)-((w(j+1)-w(j))*subs(fu,w(j+1))/(subs(fu,w(j+1))-subs(fu,w(j))));
            disp(w(j+2))
             plot(w(j+2),subs(fu,w(j+2)),'o')
             aa1=subs(fu,w(j+1))-subs(fu,w(j));
    bb1=w(j+1)-w(j);
    a2=aa1/bb1;
    cc1=x-w(j);
    dd1=subs(fu,w(j));
   recta=(a2*cc1)+dd1;
   ejerecta=subs(recta,z);
   plot(z,ejerecta)
            if w(j+2)==w(j+1)
                y=w(j+2);
                control=false;
                break
            elseif j==cont
                control=false;
                break
            end
        end
        
    end
else
    disp('raios')
end
hold off
end