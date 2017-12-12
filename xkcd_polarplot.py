import numpy as np
import matplotlib.pyplot as plt
plt.xkcd()

def matplotlib_polarplot(theta, rho, save):
    ax = plt.subplot(111, projection='polar')
    ax.plot(theta, rho)
    # plt.show()
    if save:
        plt.savefig('plots/xkcd_polarplot')

theta = np.array([0,0.3927,0.7854,1.1781,1.5708,1.9635,2.3562,2.7489,3.1416,3.5343,3.9270,4.3197,4.7124,5.1051,5.4978,5.8905,6.2832])
rho = np.array([4,9,20,41,66,121,155,181,156,124,76,27,11,4,2,2,1])
matplotlib_polarplot(theta, rho, True)
