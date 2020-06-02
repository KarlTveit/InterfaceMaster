import numpy as np
import matplotlib.pyplot as plt
from scipy import stats
#plt.style.use("seaborn")
xmotion = np.loadtxt("xmotion.txt",delimiter=",")
ymotion = np.loadtxt("ymotion.txt",delimiter=",")
zmotion = np.loadtxt("zmotion.txt",delimiter=",")
#print(np.shape(m))
#rowcut = 0
#firstrow = m[0]
rowcuts =  []
xdrifts = []

for i  in range(np.shape(xmotion)[0]):
	if(xmotion[i][0] == -1):
		
		
		#np.vstack((rowcuts,m[i+1]))
		#firstrow = m[rowcut+1]
		#print(i)
		#print firstrow
		#print(m[i-1])
		
		xdrifts = np.append(xdrifts,np.linalg.norm(xmotion[i-1][1:])/5)
		#firstrow = m[rowcut+1][j]
		
		#print(m[i-1][1],",",m[i-1][2],",",m[i-1][3])
		#print(m[1][j])
		#print(firstrow[j])
#print(totaldrifts[1])
##print(np.shape(totaldrifts))

x = np.arange(np.size(xdrifts))
#print(x)

ydrifts = []
for i  in range(np.shape(ymotion)[0]):
	if(ymotion[i][0] == -1):
		
		
		ydrifts = np.append(ydrifts,np.linalg.norm(ymotion[i-1][1:])/5)
		
y = np.arange(np.size(ydrifts))


zdrifts = []
for i  in range(np.shape(zmotion)[0]):
	if(zmotion[i][0] == -1):
		
		
		zdrifts = np.append(zdrifts,np.linalg.norm(zmotion[i-1][1:])/5)
		
z = np.arange(np.size(zdrifts))

slopex, interceptx, r_valuex, p_valuex, std_errx = stats.linregress(x, xdrifts)
slopey, intercepty, r_valuey, p_valuey, std_erry = stats.linregress(y, ydrifts)
slopez, interceptz, r_valuez, p_valuez, std_errz = stats.linregress(z, zdrifts)

xxRegress = np.linspace(np.amin(x), np.amax(x), 100)
xyRegress = slopex*xxRegress + interceptx
yxRegress = np.linspace(np.amin(y), np.amax(y), 100)
yyRegress = slopey*yxRegress + intercepty
zxRegress = np.linspace(np.amin(z), np.amax(z), 100)
zyRegress = slopez*zxRegress + interceptz

xmean = [np.mean(xdrifts)]*len(x)
ymean = [np.mean(ydrifts)]*len(y)
zmean = [np.mean(zdrifts)]*len(z)

plt.figure()
plt.plot(x,xdrifts, 'o', markersize=3,label='Motion in x direction')
plt.plot(y,ydrifts, 'o', markersize=3,label='Motion in y direction')
plt.plot(z,zdrifts, 'o', markersize=3,label='Motion in z direction')
plt.plot(x, xmean, linewidth=1,color="b",linestyle='--')
plt.plot(y, ymean, linewidth=1,color="r",linestyle='--')
plt.plot(z, zmean, linewidth=1,color="g",linestyle='--')
plt.xlabel('Run number')
plt.ylabel('Drift speed (cm/s)')
plt.title('Drift speed using different unite IMU methods')
# plt.xlim(0, 1) # Eksempel
# plt.ylim(0, 1) # Eksempel
plt.legend() # Legger til label-vindu

plt.show()
