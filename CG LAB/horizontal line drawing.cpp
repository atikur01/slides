//horizontal line drawing code
#include<windows.h>
#include<GL/glut.h>
 
void display(){
 
    glClear(GL_COLOR_BUFFER_BIT);
 
    float x1,y,x2,i,temp;
 
    if(x1>x2){
        temp = x1;
        x1 = x2;
        x2 = temp;
    }
 
    x1=0.1;
    y=0.1;
    x2 = 0.8;
 
    for(i =x1;i<=x2;i+=0.001){
        glColor3f(1.0f,1.0f,0.0f);
        glBegin(GL_POINTS);
        glVertex2f(i,y);
 
    }
	glEnd();
    glFlush();
}
 
int main(int argc, char** argv ){
 
    glutInit(&argc,argv);
    glutInitWindowSize(640,640);
    glutInitWindowPosition(80,50);
    glutCreateWindow("Lab 2");
    glutInitDisplayMode(GLUT_RGB|GLUT_SINGLE|GLUT_DEPTH);
    glutDisplayFunc(display);
    glutMainLoop();
 
    return 0;
}