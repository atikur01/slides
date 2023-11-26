//vertical line drawing
#include<windows.h>
#include<GL/glut.h>
 
void display(){
 
    glClear(GL_COLOR_BUFFER_BIT);
 
    float y1,x,y2,i,temp;
 
    y1=0.1;
    x=0.1;
    y2 = 0.8;
 
    for(i =y1;i<=y2;i+=0.001){
        glColor3f(1.0f,1.0f,0.0f);
        glBegin(GL_POINTS);
        glVertex2f(x,i);
 
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