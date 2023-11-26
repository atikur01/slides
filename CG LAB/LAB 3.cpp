#include<windows.h>
#include<GL/glut.h>
#include <iostream>
using namespace std;

float x1,x2,y1,y2,temp1,temp2;

void display(){

    glClear(GL_COLOR_BUFFER_BIT);
    float i,m,b,y;
    m = (y2-y1)/(x2-x1);
    b = y1-m*x1;

    for(i =x1;i<=x2;i+=0.001){
        glColor3f(1.0f,1.0f,0.0f);
        glBegin(GL_POINTS);
        y=m*i+b;
        glVertex2f(i,y);
    }
	glEnd();
    glFlush();
}

int main(int argc, char** argv ){

    cout << "Enter x1: ";
    cin >> x1 ;
    cout << endl;

    cout << "Enter y1: ";
    cin >> y1 ;
    cout << endl;

    cout << "Enter x2: ";
    cin >> x2 ;
    cout << endl;

    cout << "Enter y2: ";
    cin >> y2 ;
    cout << endl;


    if(x1>x2){
        temp1 = x1;
        x1 = x2;
        x2 = temp1;
        temp2=y1;
        y1=y2;
        y2=temp2;
    }

    glutInit(&argc,argv);
    glutInitWindowSize(640,640);
    glutInitWindowPosition(80,50);
    glutCreateWindow("Lab 2");
    glutInitDisplayMode(GLUT_RGB|GLUT_SINGLE|GLUT_DEPTH);
    glutDisplayFunc(display);
    glutMainLoop();

    return 0;
}
