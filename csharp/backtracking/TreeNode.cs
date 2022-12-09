using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NeetCodeTester.backtracking
{
    public class TreeNode
    {
        public int Val { get; set; }
        public TreeNode Left { get; set; }
        public TreeNode Right { get; set; }

        public TreeNode(int val)
        {
            this.Val = val;
            this.Left = null;
            this.Right = null;
        }
    }

}
