import numpy as np
import matplotlib.pyplot as plt
plt.rcParams["font.family"] = "Times New Roman"
plt.style.use("ggplot")
m = np.loadtxt("interpolation.txt",delimiter=",")
n = np.loadtxt("copymethod.txt",delimiter=",")
#print(np.shape(m))
#rowcut = 0
#firstrow = m[0]
rowcuts =  []
totaldrifts = []
for i  in range(np.shape(m)[0]):
	if(m[i][0] == -1):
		
		
		#np.vstack((rowcuts,m[i+1]))
		#firstrow = m[rowcut+1]
		#print(i)
		#print firstrow
		#print(m[i-1])
		
		totaldrifts = np.append(totaldrifts,np.linalg.norm(m[i-1][1:2])/5)
		#firstrow = m[rowcut+1][j]
		
		#print(m[i-1][1],",",m[i-1][2],",",m[i-1][3])
		#print(m[1][j])
		#print(firstrow[j])
#print(totaldrifts[1])
##print(np.shape(totaldrifts))

x = np.arange(np.size(totaldrifts))
#print(x)

totaldrifts2 = []
for i  in range(np.shape(n)[0]):
	if(n[i][0] == -1):
		
		
		totaldrifts2 = np.append(totaldrifts2,np.linalg.norm(n[i-1][1:2])/5)
		
x1 = np.arange(np.size(totaldrifts2))


plt.figure()
plt.plot(x,totaldrifts, 'o', markersize=3,label='Unite method: Linear interpolation')
plt.plot(x1,totaldrifts2, 'o', markersize=3,label='Unite method: Copy')
#plt.plot(xRegress, yRegress, linewidth=1, label='Linear fit')s
plt.xlabel('Run number')
plt.ylabel('Drift speed (m/s)')
plt.title('Drift speed using different unite IMU methods')
# plt.xlim(0, 1) # Eksempel
# plt.ylim(0, 1) # Eksempel
plt.legend() # Legger til label-vindu

plt.show()
