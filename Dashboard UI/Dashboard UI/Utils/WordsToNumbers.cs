﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using System.Diagnostics;

namespace Dashboard_UI
{
    class WordsToNumbers
    {
        private static Dictionary<string, long> numberTable = new Dictionary<string, long>{
            {"zero",0},{"one",1},{"two",2},{"three",3},{"four",4},{"five",5},{"six",6},
            {"seven",7},{"eight",8},{"nine",9},{"ten",10},{"eleven",11},{"twelve",12},
            {"thirteen",13},{"fourteen",14},{"fifteen",15},{"sixteen",16},{"seventeen",17},
            {"eighteen",18},{"nineteen",19},{"twenty",20},{"thirty",30},{"forty",40},
            {"fifty",50},{"sixty",60},{"seventy",70},{"eighty",80},{"ninety",90},
            {"hundred",100},{"thousand",1000}
        };

        public static long ConvertToNumbers(string numberString)
        {
            Debug.WriteLine($"Original: {numberString}");

            var numbers = Regex.Matches(numberString, @"\w+").Cast<Match>()
                    .Select(m => m.Value.ToLowerInvariant())
                    .Where(v => numberTable.ContainsKey(v))
                    .Select(v => numberTable[v]);

            foreach(var n in numbers)
            {
                Debug.WriteLine($"n: {n}");
            }

            long acc = 0, total = 0L;
            foreach (var n in numbers)
            {
                if (n >= 1000)
                {
                    total += acc * n;
                    acc = 0;
                }
                else if (n >= 100)
                {
                    acc *= n;
                }
                else acc += n;
            }
            return (total + acc) * (numberString.StartsWith("minus",
                    StringComparison.InvariantCultureIgnoreCase) ? -1 : 1);
        }
    }
}
