#include<stdio.h>
int main(){
    int bt[100],wt[100],tat[100],i,n;
    float wtavg, tatavg;

    printf("Enter the number of process : ");
    scanf("%d",&n);

    printf("Enter the burst time ");
    for(i=0; i<n; i++)
    {
        printf("\nEnter the %d th Burst Time ",i);
        scanf("%d",&bt[i]);
    }

    wt[0]=wtavg=0;
    tat[0]=tatavg=bt[0];

    for(i=1; i<n; i++)
    {
        wt[i]=tat[i-1];
        tat[i]=bt[i]+wt[i];
        wtavg=wtavg+wt[i];
        tatavg=tatavg+tat[i];
    }
    printf("\nPROCESS\t\tBURST TIME\tWAITING TIME\tTURNAROUND TIME");

     for(i=0; i<n; i++)
    {
      printf("\nP%d \t\t %d \t\t %d \t\t %d ",i,bt[i],wt[i],tat[i]);
    }
  printf("\n\nAverage Waiting Time −−> %f \n", wtavg/n);
  printf("\nAverage Turnaround Time −−> %f \n", tatavg/n);
}
