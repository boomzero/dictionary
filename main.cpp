#include <iostream>
#include <set>
#include <string>
#include <sstream>
#include <cpr/cpr.h>
#include "json.h"

using namespace std;
using json = nlohmann::json;
using cpr::Response, cpr::Get, cpr::Url, cpr::Authentication, cpr::Parameters;
set<string> dict;
const string apiURL = "https://api.dictionaryapi.dev/api/v2/entries/en/";

int main() {
    string in;
    while (getline(cin, in)) {
        if (in == "0") break;
        for (char &i: in) {
            if (isalpha(i)) {
                i = tolower(i);
            } else {
                i = ' ';
            }
        }
        stringstream ss(in);
        string buf;
        while (ss >> buf) {
            dict.insert(buf);
        }
    }
    for (set<string>::iterator i = dict.begin(); i != dict.end(); ++i) {
        string req = apiURL;
        req.append(*i);
        Response dat = Get(Url{req});
        if (dat.text.find("Sorry pal, we couldn't find definitions for the word you were looking for.") !=
            string::npos) {
            cout<<*i << ": not found" << endl;
            continue;
        }
        cout << *i << ": ";
        json parsedDat = json::parse(dat.text);
        string rst = parsedDat[0]["meanings"][0]["definitions"][0]["definition"];
        cout << rst << endl;
    }
    return 0;
}
