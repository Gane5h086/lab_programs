#include <iostream>
using namespace std;
int p;
int i;
int j;
int avwt;
int avtat;
int main()
{
cout<<"Welcome to FCFS program "<<endl;
cout<<"Enter the number of processes : ";
cin>>p;
int bt[p];
for (i=0; i < p; i++)
{
cout<<"Enter burst time for process "<<i+1<<endl;
cin>>bt[i];

}
int wt[p];
int tat[p];
wt[0]=0;
tat[0]=0;
//calcu wt
for (i=1;i < p; i++)
{
wt[i]=0;
for(j=0;j<i;j++)
wt[i]+=bt[j];

}
//calcu tat
for(i=0;i<p;i++)
{
tat[i]=bt[i]+wt[i];
avwt+=wt[i];
avtat+=tat[i];
}
cout<<"\nProcess_no\t\tBurst_Time\tWaiting_Time\tTurnaroun
d_Time";
for (i=0;i<p;i++)
{
cout<<"\n"<<i+1<<"\t\t\t\t"<<bt[i]<<"\t\t\t"<<wt[i]<<"\t\t
\t\t"<<tat[i];
}
avwt/=i;
avtat/=i;
cout<<"\n\nAverage Waiting Time:"<<avwt;
cout<<"\nAverage Turnaround Time:"<<avtat;

return 0;
}
