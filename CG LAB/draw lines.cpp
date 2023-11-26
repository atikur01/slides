#include<windows.h>
#include<GL/glut.h>
 
void display(){
 
    glClear(GL_COLOR_BUFFER_BIT);
 
    glBegin(GL_LINES);
         glColor3f(1.0f,1.0f,1.0f);
		 glVertex2f(-1.0f, 0.0f);
		 glVertex2f(1.0f, 0.0f);
 
		 glVertex2f(0.0f, 1.0f);
		 glVertex2f(0.0f, -1.0f);
 
		 glColor3f(1.0f,0.0f,0.0f);
		 glVertex2f(0.5f, 0.0f);
		 glVertex2f(0.5f, 0.5f);
 
		 glVertex2f(0.5f, 0.0f);
		 glVertex2f(0.5f,- 0.5f);
 
		 glVertex2f(0.5f, 0.5f);
		 glVertex2f(0.0f, 0.0f);
 
		 glVertex2f(0.5f, -0.5f);
		 glVertex2f(0.0f, 0.0f);
 
 
 
 
	glEnd();
 
    glFlush();
}