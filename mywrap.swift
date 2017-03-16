import files;
import io;
import string;

int workers;

printf("turbine_workers()=%d",turbine_workers() );
# swift will log the program_name as it is executed and if they're unique 
# the logs will be easy to parse for tracking execution issues after the workflow
app (file out) mywrapper(string program_name)
{
   program_name @stdout=out 
}

string programs[] = file_lines(input("program_list.txt") );
foreach line,i in programs
{
  printf("swift-t scheduled execution : %s", line);  
  file myout <sprintf("%s.d/%s.out",line,line)> = mywrapper(line); 
}

