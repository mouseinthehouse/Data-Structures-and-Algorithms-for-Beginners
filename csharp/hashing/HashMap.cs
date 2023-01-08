using System;
using System.Collections;

/* public class Pair
{
    public string Key { get; set; }
    public string Val { get; set; }

    public Pair(string key, string val)
    {
        this.Key = key;
        this.Val = val;
    }
} */

public class HashMap
{
    int Size { get; set; }
    int Capacity { get; set; }
    Pair[] Map { get; set; }

    public HashMap()
    {
        Size = 0;
        Capacity = 2;
        Map = new Pair[2];
    }

    public int Hash(string key)
    {
        int index = 0;
        for (int i = 0; i < key.Length; i++)
        {
            index += (int)key[i];
        }
        return index % this.Capacity;
    }

    public string Get(string key)
    {
        int index = this.Hash(key);
        while (this.Map[index] != null)
        {
            if (this.Map[index].Key == key)
            {
                return this.Map[index].Val;
            }
            index += 1;
            index %= this.Capacity;
        }
        return string.Empty;
    }

    public void Put(string key, string val)
    {
        int index = this.Hash(key);

        while (true)
        {
            if (this.Map[index] == null)
            {
                this.Map[index] = new Pair(key, val);
                this.Size += 1;
                if (this.Size >= this.Capacity / 2)
                {
                    this.ReHash();
                }
                return;
            }
            else if (this.Map[index].Key == key)
            {
                this.Map[index].Val = val;
                return;
            }
            index += 1;
            index %= this.Capacity;
        }
    }

    public void Remove(string key)
    {
        if (this.Get(key) == null)
        {
            return;
        }

        int index = this.Hash(key);
        while (true)
        {
            if (this.Map[index].Key == key)
            {
                // Removing an element using open-addressing actually causes a bug,
                // because we may create a hole in the list, and our get() may
                // stop searching early when it reaches this hole.
                this.Map[index] = null;
                this.Size -= 1;
                return;
            }
            index += 1;
            index %= this.Capacity;
        }
    }

    public void ReHash()
    {
        this.Capacity = 2 * this.Capacity;
        Pair[] newMap = new Pair[this.Capacity];

        Pair[] oldMap = this.Map;
        this.Map = newMap;
        this.Size = 0;
        foreach (Pair p in oldMap)
        {
            if (p != null)
            {
                this.Put(p.Key, p.Val);
            }
        }
    }

    public void Print()
    {
        foreach (Pair p in this.Map)
        {
            if (p != null)
            {
                Console.WriteLine(p.Key + " " + p.Val);
            }
        }
    }
}
