 
    public class AdjacencyList
    {

        public Dictionary<String, List<String>> BuildAdjList()
        {
            Dictionary<String, List<String>> adjList = new();

            string[][] edges = { new[] { "A", "B" }, new[] { "B", "C" } };
            HashSet<String> visit = new();

            adjList.Add("A", new List<String>());
            adjList.Add("B", new List<String>());

            foreach (var edge in edges)
            {
                String src = edge[0], dst = edge[1];
                if (!adjList.ContainsKey(src))
                {
                    adjList.Add(src, new List<String>());
                }
                if (!adjList.ContainsKey(dst))
                {
                    adjList.Add(dst, new List<String>());
                }
                adjList[src].Add(dst);
            }
            return adjList;
        }

        // Count paths (backtracking)
        public int Dfs(String node, String target, Dictionary<String, List<String>> adjList, HashSet<String> visit)
        {
            if (visit.Contains(node))
            {
                return 0;
            }
            if (node == target)
            {
                return 1;
            }
            int count = 0;
            visit = new HashSet<String>
            {
                node
            };
            foreach (String neighborin in adjList[node])
            {
                count += Dfs(neighborin, target, adjList, visit);
            }
            visit.Remove(node);
            return count;
        }

        // Shortest path from node to target.
        public int BFS(String node, String target, Dictionary<String, List<String>> adjList)
        {
            int length = 0;
            HashSet<String> visit = new HashSet<String>();
            Queue<String> q = new Queue<string>();
            visit.Add(node);
            q.Enqueue(node);

            while (q.Count != 0)
            {
                int queueLength = q.Count;
                for (int i = 0; i < queueLength; i++)
                {
                    String curr = q.Peek();
                    q.Dequeue();
                    if (curr.Equals(target))
                    {
                        return length;
                    }
                    foreach (String neighbor in adjList[curr])
                    {
                        if (!visit.Contains(neighbor))
                        {
                            visit.Add(neighbor);
                            q.Enqueue(neighbor);
                        }
                    }
                }
                length++;
            }
            return length;
        }
    }