class AdjListNode{
	int dest;
	AdjListNode next;
}

class AdjList{
	AdjListNode head;
}

public class Graph{
	int v;
	AdjList[] array;

	public static AdjListNode addAdjListNode(int dest){
		AdjListNode adln = new AdjListNode();
		adln.next = null;
		adln.dest = dest;
		return adln;
	}


	public static Graph createGraph(int v){
		Graph graph = new Graph();
		graph.v = v;
		graph.array = new AdjList[v];

		int i;
		for (i=0;i<v ;i++ ) {
			System.out.println(graph.array[i]);
			//graph.array[i].head = null;
		}

		return graph;
	}

	public static void addEdge(Graph graph, int src, int dest){
		AdjListNode newNode = addAdjListNode(dest);
		
		newNode.next = graph.array[src].head;
		graph.array[src].head = newNode;

		newNode = addAdjListNode(src);
		newNode.next = graph.array[src].head;
		graph.array[src].head = newNode;		
	}

	public static void printGraph(Graph graph){
		int v;
		for (v= 0;v < graph.v ;++v ) {
			AdjListNode pC = graph.array[v].head;

			System.out.println("Graph");

			while(pC != null){
				System.out.print("  "+pC.dest);
				pC = pC.next;
			}
		}
	}


	public static void main(String[] args) {
		int v = 5;
		Graph graph = createGraph(v);
		addEdge(graph, 0, 1);
    	addEdge(graph, 0, 4);
    	addEdge(graph, 1, 2);
    	addEdge(graph, 1, 3);
    	addEdge(graph, 1, 4);
    	addEdge(graph, 2, 3);
    	addEdge(graph, 3, 4);

    	printGraph(graph);
	}
}