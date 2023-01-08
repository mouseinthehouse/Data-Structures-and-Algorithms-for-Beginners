using System;
using System.Collections;

public class Counting
{
    public static void main(String[] args)
    {
        string[] names = { "alice", "brad", "collin", "brad", "dylan", "kim" };
        Dictionary<string, int> countMap = new Dictionary<string, int>();

        foreach (string name in names)
        {
            // If countMap does not contain name
            if (!countMap.ContainsKey(name))
            {
                countMap.Add(name, 1);
            }
            else
            {
                countMap.TryGetValue(name, out int val);
                countMap[name] = val + 1;
            }
        }
        Console.WriteLine(countMap);
    }
}
