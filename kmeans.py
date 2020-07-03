from random import sample
from collections import defaultdict
from math import sqrt, fsum
from pprint import pprint


def mean(data):
    return fsum(data) / len(data)


def k_means(points, k=3, iterations=20):

    centroids = sample(points, k=k)
    for i in range(iterations):
        labeled = assign_data(centroids, points)
        centroids = compute_centroids(labeled.values())
    return centroids


def distance(p, q, sum=sum, sqrt=sqrt):
    return sqrt(sum([(x - y) ** 2 for x, y in zip(p, q)]))


def assign_data(centroids, data):
    d = defaultdict(list)
    for point in data:
        f = lambda x: distance(point, x)
        closest_centroid = min(centroids, key=f)
        d[closest_centroid].append(point)
    return d


def compute_centroids(groups):
    return [tuple(map(mean, zip(*group))) for group in groups]


def run():
    # recalculate the centroids
    # assign again
    # loop

    points = [(10, 41, 23), (22, 30, 29), (11, 42, 5), (20, 32, 4), (12, 40, 12), (21, 36, 23)]
    pprint(k_means(points))


if __name__ == "__main__":
    run()
