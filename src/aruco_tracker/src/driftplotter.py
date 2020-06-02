import numpy as np
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle
#from mpl_toolkits import mplot3d
#from matplotlib.pyplot import cm
#plt.style.use("seaborn")
n = np.loadtxt("copymethodcopy.txt",delimiter=",")
totaldrifts2 = []
x = [[]]
y = [[]]
count = 0
tempx = []
tempy = []
plt.figure()
currentAxis = plt.gca()
currentAxis.add_patch(Rectangle((-0.135/2 , -0.135/2 ), 0.135, 0.135, fill=None, alpha=1))

#ax = plt.axes(projection='3d')
#color = iter(cm.rainbow(np.linspace(0,1,25)))
for i  in range(np.shape(n)[0]):
	if(n[i][0] == -1):
		
		print(i)
		#c = next(color)
		plt.plot(tempx,tempy, markersize=3)#,color = c)
		#ax.plot3D(tempx,tempy,tempz)
		count = count + 1
		print(count)
		tempx = []
		tempy = []
		#tempz = []
		#break
	else:

		#totaldrifts2 = np.append(totaldrifts2,np.linalg.norm(n[i-1][1:])/5)
		tempx = np.append(tempx, n[i][1])
		tempy = np.append(tempy, n[i][2]+0.15)
		#tempz = np.append(tempy, n[i][3])

	
		
	
	
#x1 = np.arange(np.size(totaldrifts2))
for i in range(len(x)):

	print (len(x))
	#plt.plot(x[i],y[i], 'o', markersize=3)

#plt.plot(x,y, 'o', markersize=3)
#plt.plot(x1,totaldrifts2, 'o', markersize=3,label='Unite method: Copy')
#plt.plot(xRegress, yRegress, linewidth=1, label='Linear fit')s
plt.xlabel('Run number')
plt.ylabel('Drift speed (cm/s)')
plt.title('Drift speed using different unite IMU methods')
# plt.xlim(0, 1) # Eksempel
# plt.ylim(0, 1) # Eksempel
plt.legend() # Legger til label-vindu

plt.show()