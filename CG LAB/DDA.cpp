#include <windows.h>
#include <GL/glut.h>
#include <iostream>
#include <cmath>

void drawLineDDA(float x1, float y1, float x2, float y2) {
    glColor3f(1.0, 0.0, 0.0); // Set color to red

    // Calculate dx and dy
    float dx = x2 - x1;
    float dy = y2 - y1;

    // Calculate steps needed for generating pixels
    float steps = (abs(dx) > abs(dy)) ? abs(dx) : abs(dy);

    // Calculate increment in x and y for each step
    float xIncrement = dx / steps;
    float yIncrement = dy / steps;

    // Initialize starting point
    float x = x1;
    float y = y1;

    // Plot the initial point
    glBegin(GL_POINTS);
    glVertex2i(round(x), round(y));
    glEnd();
    glFlush();

    // Plot the line using DDA algorithm
    for (int k = 0; k < steps; k++) {
        x += xIncrement;
        y += yIncrement;

        glBegin(GL_POINTS);
        glVertex2i(round(x), round(y));
        glEnd();
        glFlush();
    }
}

void display() {
    glClear(GL_COLOR_BUFFER_BIT);
    drawLineDDA(50, 50, 250, 250); // Change the coordinates as needed
    glFlush();
}

void init()
{
        glMatrixMode(GL_PROJECTION);
        glLoadIdentity();
        gluOrtho2D(0.0, 640.0 ,0.0 , 480.0) ;
}

int main(int argc, char** argv) {
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowSize(500, 500);
    glutCreateWindow("DDA Line Drawing");
    init();
    glutDisplayFunc(display);
    glutMainLoop();
    return 0;
}
