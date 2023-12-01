import numpy as np
import matplotlib as mtp

from turtle import color 
from matplotlib import pyplot as plt
from matplotlib import style
from collections import Counter
style.use('fivethirtyeight')

dataset = {
    'k' : [[210,95],[200,85],[190,87],[220,86],[200,93],[210,94],[203,90],[203,93],[213,91],[221,89]],
    'r' : [[170,80],[168,82],[190,78],[170,79],[160,83],[150,74],[180,75],[190,70],[160,60],[150,68]],
}

def scatter_plot(new_plot):
    for i in dataset:
        for j in dataset[i]: 
            plt.scatter(j[0],j[1], s=50,color=i)

    plt.scatter(new_plot[0],new_plot[1],color="b",marker= '*')
    plt.show()
    
def K_NN(data,predict,k):
    distances = []
    for group in data:
        for feature in data[group]:
            euclidian_distance = np.linalg.norm(np.array(feature)-np.array(predict))
            distances.append([euclidian_distance,group])
            
    votes = [i[1] for i in sorted(distances)[:k]]  
    vote_result = Counter(votes).most_common(1)[0][0]
    return vote_result

while True:
    new_arr = input('Enter the new sample[height,weight]:').split(',')
    new_sample = []
    new_sample.append(int(new_arr[0]))
    new_sample.append(int(new_arr[1]))
    
    if new_sample == [0,0]:
        break
    else:
        print(new_sample)
        scatter_plot(new_sample)
        result = K_NN(dataset,new_sample,10)
    
    if result == 'k':
        print("Kabadi")
    else:
        print("Wrestler")
        
