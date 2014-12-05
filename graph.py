import snap
import sys
if __name__ == '__main__':
    filename = sys.argv[1]
    Graph = snap.LoadEdgeList(snap.PNGraph, filename+".txt", 0, 1)
    labels = snap.TIntStrH()
    for NI in Graph.Nodes():
        labels[NI.GetId()] = str(NI.GetId())
    snap.DrawGViz(Graph, snap.gvlDot, filename+".png", filename)