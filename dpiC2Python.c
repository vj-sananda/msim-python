#include <Python.h>

void run_python_code(int a, int b, int c) {

  char *py_cmd;

  py_cmd = (char *)malloc(25*sizeof(char));

  fprintf(stderr,"C values passed through DPI a=%d, b=%d, c=%d\n\n",a,b,c);

  Py_Initialize();

  sprintf(py_cmd,"a=%d",a);
  PyRun_SimpleString(py_cmd);
  
  sprintf(py_cmd,"b=%d",b);
  PyRun_SimpleString(py_cmd);
  
  sprintf(py_cmd,"c=%d",c);
  PyRun_SimpleString(py_cmd);

  PyRun_SimpleString("execfile(\"python_code.py\")");

  Py_Finalize();
}

