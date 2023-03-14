#include <bits/stdc++.h>
#include <iostream>
using namespace std;
bool isNumber(string s)
{
    if (s.size() == 0)
        return false;
    for (int i = 0; i < s.size(); i++)
    {
        if ((s[i] >= '0' && s[i] <= '9') == false)
        {
            return false;
        }
    }
    return true;
}
int main()
{
    string keywords[12] = {
        "means",
        "how",
        "many"};
    string operators[6] = {
        "kg",
        "pound",
        "gram",
        "stone"};
    string EndOfLine = "?";
    string str;
    getline(cin, str);
    istringstream iss(str);
    string word;
    string EOL = "?";
    while (iss >> word)
    {
        for (int j = 0; j < 12; j++)
        {
            if (word.compare(keywords[j]) == 0)
            {
                cout << "<Keyword: " << keywords[j] << " >\n";
            }
        }
        for (int k = 0; k < 6; k++)
        {
            if (word.compare(operators[k]) == 0)
            {
                cout << "<operator: " << operators[k] << " >\n";
            }
        }
        if (isNumber(word))
        {
            cout << "<Number: " << word << " >\n";
        }
        if (word == EOL)
        {
            cout << "<End of Line: " << EOL << " >\n";
        }
    }
}