macro_file Searcher; // (!se)

// Internet search helper.
// Used for searching on the internet instead of finding thing on your local machine.

#include Aliases.sh
#include Finder.sh
#include Shared.sh



//;

/*

Metadata: Track Size (!tsse)

        Date   Lines      Bytes   Macros  Notes
 -----------  ------  ---------  -------  ----------------------------------------------------

: Dec-9-2024   2,653     39,679       93

: Jan-4-2024   2,609     39,038       91

: Jan-3-2024   2,607     38,994       91

: Jul-5-2022   2,488     37,118       86

: Jan-3-2022   2,455     36,667       84

:Aug-27-2021   2,407     35,873       81

: Jul-1-2021   2,405     35,829       81

: Jan-4-2021   2,367     35,263       80

:Oct-12-2020   2,364     35,213       80

: Jul-2-2020   2,362     35,169       80

: Apr-8-2020   2,360     35,123       80

:Nov-11-2019   2,359     35,102       80

:Jun-23-2019   2,357     35,058       80

:Apr-26-2019   2,355     35,014       80

: Jan-1-2019   2,311     34,328       78

:Jul-25-2018   2,213     32,776       74

:May-17-2018   2,138     31,803       70

: Apr-3-2018   2,068     30,729       68

: Jan-3-2018   2,138     32,477       69

:Jun-25-2017   2,028     30,904       64

:Mar-31-2017   1,943     28,774       62

:Nov-17-2016   1,890     27,955       61

: Oct-7-2016   1,850     27,390       60

: Apr-8-2016   1,740     25,726       57

:Dec-31-2015   1,616     24,154       53

: Oct-5-2015   1,614     24,110       53

: Jul-1-2015   1,612     24,066       53

: Apr-1-2015   1,570     23,553       51

:Jan-16-2015   1,605     24,161       50

: Oct-1-2014   1,567     23,574       49

: Jul-1-2014   1,459     22,065       46

:Apr-10-2014   1,446     22,080       45

: Oct-1-2013   1,361     20,715       43

: Jul-1-2013   1,359     20,671       43

: Apr-1-2013   1,339     19,810       42

: Jan-2-2013   1,335     19,671       42

: Oct-1-2012   1,333     19,627       42

: Jul-2-2012   1,269     18,878       40

: Apr-2-2012   1,203     16,578       40

- Jan-2-2012   1,136    15,715      41

- Dec-20-2011  1,099    15,133      40

- Oct-3-2011   1,077    14,778      39

- Aug-1-2011     968    13,288      36

- Jul-15-2011    966    13,247      36

- Jun-1-2011     923    12,551      35

- Apr-7-2011     957    12,991      37

- Jan-8-2010     664     9,141      25

*/



//;

void
@search_abbreviations(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search Abbreviations.com.';

str url = 'http://www.abbreviations.com/';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

URL += sc;

@surf(url, 0);

/* Use Cases

- scuba

- madd: blah blah

*/

make_message(@trim_period(fp) + ' for "' + sc + '".');
}



//;

void
@search_amazon(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search Amazon.';

str URL = 'http://www.amazon.com/s?ie=UTF8&keywords=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

sc = @commute_common_characters(sc);

URL += sc;
URL += '&index=blended';

@surf(url, 0);

/* Use Cases

- C# algorithm

- trebuchet

*/

make_message(@trim_period(fp) + ' for "' + sc + '".');
}



//;

void
@browse_current_line_w_firefox(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Browser current line with Firefox.';

str URL = @trim_colons(@get_current_line);

@surf(url, 2);

/* Use Cases

https://www.youtube.com/watch?v=N9_ccYCKhWk

*/

make_message(fp);
}



//;

void
@browse_current_line_w_chrome(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Browser current line with Chrome.';

str URL = @trim_colons(@get_current_line);

@surf(url, 1);

make_message(fp);
}



//;

void
@search_graze(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search Graze.';

str URL = 'https://www.graze.com/us/search?q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

sc = @commute_common_characters(sc);

URL += sc;

@surf(url, 0);

/* Use Cases

hot pepper

*/

make_message(@trim_period(fp) + ' for "' + sc + '".');
}



//;

void
@search_google_scholar(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search Google Scholar.';

str URL = 'http://scholar.google.com/scholar?q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

sc = @commute_character(sc, ' ', '+');

URL += sc;
URL += '&hl=en&btnG=Search&as_sdt=1%2C47&as_sdtp=on';

@surf(url, 0);

/* Use Cases

Australopithecus sediba

http://scholar.google.com/scholar?q=sediba&hl=en&btnG=Search&as_sdt=1%2C47&as_sdtp=on

*/

make_message(@trim_period(fp) + ' for "' + sc + '".');
}



//;

void
@search_netflix(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search Netflix.';

str URL = 'http://movies.netflix.com/Search?oq=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

sc = @commute_character(sc, ' ', '+');

URL += sc;
URL += '&ac_posn=-1&ac_rec=false&ac_count=-1&ac_match=false&v1=';
URL += sc;
URL += '&search_submit=';

@surf(url, 0);

/* Use Cases

- Used Cars

- Raiders of the Lost Ark

*/

make_message(@trim_period(fp) + ' for "' + sc + '".');
}



//;

void
@search_wikipedia(str sc = parse_str('/1=', mparm_str),
                   int Browser_Number = parse_int('/2=', mparm_str))
{
str fp = 'Search Wikipedia.';

str URL = 'http://en.wikipedia.org/';

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;

sc = @commute_character(sc, ' ', '_');

/*
I found that IE, although the font is too big, is the best for printing. - JRJ Jul-17-2009

- One_Million_Dollar_Paranormal_Challenge#The_One_Million_Paranormal_Challenge

As is:
http://en.wikipedia.org/w/index.php?title=One_Million_Dollar_Paranormal_Challenge#The_One_Mill
ion_Paranormal_Challenge&printable=yes

After an actual click processing:
http://en.wikipedia.org/w/index.php?title=James_Randi_Educational_Foundation&printable=yes

James_Randi_Educational_Foundation

*/

// Print version.
if(Browser_Number == 3)
{
  Browser_Number = 2;
  URL += 'w/index.php?title=';
  URL += sc;
  URL += '&printable=yes';
}
else // Normal version
{
  URL += 'wiki/';
  URL += sc;
}

@surf(url, browser_number);

/* Use Case(s)

- Wars of the Roses

- speed of gravity

- F-35 Lightning II

- Glossary of poker terms: blah blah

*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_wolfram(str parameter = parse_str('/1=', mparm_str))
{
str fp = "Search the Wolfram Alpha website.";

str URL = 'http://www85.wolframalpha.com/input/?i=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;

sc = @commute_character(sc, ' ', '+');
sc = @commute_character(sc, '\?', 'x%3F');

URL += sc;

@surf(url, 0);

/* Use Cases

- What is the speed of gravity?

- How far is the horizon?

- What is the speed of light?

- What is the distance to the horizon?

- speed of light

- September 11, 2001

*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_ask(str parameter = parse_str('/1=', mparm_str))
{
str fp = "Search the Ask dot com website.";

// http://www.ask.com/web?q=What+is+consciousness%3F&search=&qsrc=0&o=0&l=dir

str URL = 'http://www.ask.com/web?q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;

sc = @commute_character(sc, ' ', '+');
sc = @commute_character(sc, '\?', 'x%3F');

URL += sc;

@surf(url, 0);

/* Use Cases

- 1. Use Case on Dec-28-2011:

- What is consciousness?

*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_encyclopedia_dot_com(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search Encyclopedia dot com.';

str URL = 'http://www.encyclopedia.com/searchresults.aspx?q=';

/*

http://www.encyclopedia.com/searchresults.aspx?q=trope

custer

*/

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

URL += sc;

@surf(url, 0);

/* Use Case(s)

- emulate

- onomatopoeia

- empty sella syndrome

*/

make_message(@trim_period(fp) + ' for "' + sc + '".');
}



//;

void
@search_mw_dictionary(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search Merriam-Webster dictionary.';

str URL = 'http://www.merriam-webster.com/dictionary/';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

sc = @commute_character(sc, ' ', '+');

URL += sc;

@surf(url, 0);

/* Use Case(s)

- cause c�l�bre

- fl*sh

- onomatopoeia

*/

make_message(@trim_period(fp) + ' for "' + sc + '".');
}



//;

void
@search_dictionary_dot_com(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search Dictionary.com.';

str URL = 'http://dictionary.reference.com/browse/';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;
URL += '?s=t';

@surf(url, 0);

/* Use Case(s)

electricity

crankery

*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_imdb(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search IMDB.';

str URL = 'http://www.imdb.com/find?s=all&q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;

@surf(url, 0);

/* Use Case(s)

Land of the Lost

Merry Gentleman

- Saving Private Ryan

*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_flixter(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search Flixter.';

// Official: http://www.flixster.com/search/?search=Blues+Brothers

str URL = 'http://www.flixster.com/search/?search=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;

@surf(url, 0);

/* Use Case(s)

Cave of Forgotten Dreams

*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_mapquest(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search MapQuest.';

str URL = 'http://www.mapquest.com/maps/';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;

URL += ':US/';

@surf(url, 0);

/*  Use Cases

- Blue Ridge Arsenal

*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_msdn(int is_Exact_Search)
{
str fp = "Search the MSDN website.";

str URL =  "http://social.msdn.microsoft.com/Search/en-us?query=";

str sc = @get_subject_or_selected_text;

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');
sc = @commute_character(sc, '#', '%23');

if(is_Exact_Search)
{
  fp += ' exactly';
  sc = '%22' + sc + '%22';
}
else
{
  fp += ' liberally';
}
fp += '.';

URL += sc;

@surf(url, 0);

/* Use Case(s)

- generics

- Generics in the .NET Framework

- Class Library Generics in the .NET Framework

*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_bing(int is_Exact_Search)
{
str fp = "Search Bing.";

str URL = "http://www.bing.com/search?q=";

str sc = @get_subject_or_selected_text;

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');
sc = @commute_character(sc, '#', '%23');

if(is_Exact_Search)
{
  fp += ' exactly';
  sc = '%22' + sc + '%22';
}
else
{
  fp += ' liberally';
}
fp += '.';

URL += sc + "&go=&qs=n&sk=&sc=8-12&form=QBLH";

@surf(url, 0);

/* Use Case(s)

- software crisis

- http://www.bing.com/search?q=carbonate+crisis

- http://www.bing.com/search?q=%22carbonate+crisis%22

- &go=&form=QBRE&qs=n&sk=

- +&go=&form=QBLH&qs=n&sk=


*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_audible(int search_Type)
{

str fp = 'Search Audible.com.';

str URL = "http://www.audible.com/search?adv";

/*
Patrick McManus

Susan Casey

- 
http://www.audible.com/search/ref=sr_sort_-product_site_launch_date?noscript=noscript&totalsea
rchsize=6&currentpage=1&field_launch-date=-1y&field_availability=0&searchKeywords=Susan+Casey&
field_keywords=Susan+Casey&searchRank=-product_site_launch_date&field_browse=1268224011&field_
file_format=&searchSize=20&searchNodeID=1268224011&searchPage=1&refinementHistory=format-bin%2
Ccontent_type-bin%2Csubjectbin%2Cruntime%2Cprice%2Cauthor_author-bin%2Cnarrator-bin%2Clanguage
%2Cproduct_site_launch_date%2Cread_along_support%2CsearchNodeID%2C+field-file_format&advsearch
Keywords=Susan+Casey&field_distribution_rights_region=US&searchRankSelect=-product_site_launch
_date

*/

str sc = @get_subject_or_selected_text;

str Pretty_sc = sc;

//sc = @commute_character(sc, ' ', '+');
sc = @commute_common_characters(sc);

switch(search_Type)
{
  case 1:
    fp += ' Keyword search.';
    URL += 'searchKeywords=' + sc;
    break;
  case 2:
    fp += ' Title search.';
    URL += '&searchTitle=' + sc;
    break;
  case 3:
    fp += ' Author search.';
    URL += '&searchAuthor=' + sc;
    break;
  default:
}

URL += "&searchRank=-publication_date&searchRankSelect=-publication_date";
//URL += "&searchRankSelect=-product_site_launch";

@surf(url, 0);

/* Use Case(s)

Patrick McManus

Ann Coulter

http://www.audible.com/search/ref=sr_sort_-product_site_launch_date?noscript=noscript&totalsea
rchsize=12&currentpage=1&field_availability=0&field_launch-date=-1y&filterby=field-author_auth
or&searchKeywords=patrick+mcmanus&field_keywords=patrick+mcmanus&searchRank=-product_site_laun
ch_date&field_author_author=patrick+mcmanus&field_file_format=&field_browse=1268224011&searchS
ize=20&searchNodeID=1268224011&searchPage=1&refinementHistory=format-bin%2Ccontent_type-bin%2C
subjectbin%2Cruntime%2Cprice%2Cauthor_author-bin%2Cnarrator-bin%2Clanguage%2Cproduct_site_laun
ch_date%2Cread_along_support%2CsearchNodeID%2C+field-file_format&searchBinNameList=searchNodeI
D%2Cy&advsearchKeywords=patrick+mcmanus&searchAuthor=patrick+mcmanus&field_distribution_rights
_region=US&searchRankSelect=-product_site_launch_date

- Peter Cook

*/

@say(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_playground_ai()
{

str fp = 'Search playgroundai.com.';

str URL = "https://playgroundai.com/search?q=";

str sc = @get_subject_or_selected_text;

str Pretty_sc = sc;

sc = @commute_common_characters(sc);

URL += sc;

@surf(url, 7);

@say(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_audible_keyword_search
{
@search_audible(1);
}



//;

void
@search_audible_title_search
{
@search_audible(2);
}



//;

void
@search_audible_author_search
{
@search_audible(3);
}



//;

void
@search_msdn_liberally
{
@search_msdn(false);
}



//;

void
@search_bing_exactly
{
@search_bing(true);
}



//;

void
@search_bing_liberally
{
@search_bing(false);
}



//;+ Search Google



//;;

void
@search_google_main(int search_type, int browser_number, str search_criterion)
{
str fp = 'Search Google.';

int is_definition_lookup = false;
int is_exact_search = false;
int is_image_search = false;
int is_wiki_search = false;

switch(search_type)
{
  case 1:
    is_exact_search = true;
    break;
  case 2:
    is_definition_lookup = true;
    break;
  case 3:
    is_image_search = true;
    break;
  case 4:
    is_wiki_search = true;
    break;
  default:
}

str URL = 'http://www.google.com/search?hl=en';

str sc;
if(search_criterion == '')
{
  sc = @get_subject_or_selected_text;
}
else
{
  sc = search_criterion; 
}

// Added as an experiment on May-10-2016.
if(is_wiki_search)
{
  sc += ' wiki';
}

if(is_definition_lookup)
{
  sc = 'define ' + sc;
}

str Pretty_sc = sc;

url += "&as_q=";

if(is_image_search)
{
  fp = @trim_period(fp) + ', and swich to image tab,';
}

if(is_exact_search)
{
  url += "&as_epq=";
  make_message(@trim_period(fp) + ' exactly for "' + Pretty_sc + '".');
}
else // not exact or image search
{
  make_message(@trim_period(fp) + ' liberally for "' + Pretty_sc + '".');
}

sc = @commute_character(sc, " ", "+");
sc = @commute_character(sc, "#", "%23");
sc = @commute_character(sc, char(34), "");

URL += sc;

if(!is_exact_search)
{
  url += "&as_epq=";
}

if(is_image_search)
{
  url += "&tbm=isch";
}

URL += "&as_oq=";
URL += "&as_eq=";
URL += "&num=35";
URL += "&lr=";
URL += "&as_filetype=";
URL += "&ft=i";
URL += "&as_sitesearch=";
URL += "&as_qdr=all";
URL += "&as_rights=";
URL += "&as_occt=any";
URL += "&cr=";
URL += "&as_nlo=";
URL += "&as_nhi=";
URL += "&safe=images";

@surf(url, browser_number);

/*  Use Cases

- Richard 2008 Dawkins

- How far is the horizon?

*/

}



//;;

void
@search_google_using_a_def_srch
{
str fp = "Search google using a definition search.";

// skw: define

@search_google_main(2, 7, '');

@say(fp);
}



//;;

void
@run_chrome
{
str fp = "Run chrome.";

// fcd: Jun-13-2014

@surf("http://www.google.com/advanced_search?hl=en&safe=active", 1);

@say(fp);
}



//;;

void
@run_opera
{
str fp = "Run Opera.";

// lu: Nov-5-2018

@surf("http://www.google.com/advanced_search?hl=en&safe=active", 4);

@say(fp);
}



//;;

void
@search_google_exactly
{
@search_google_main(1, 0, '');
}



//;;

void
@search_google_liberally(str sc = parse_str('/1=', mparm_str))
{
str first_parameter, second_parameter;
@parse_arguments(sc, ".", first_parameter, second_parameter);
str lc = first_parameter; // location here below (default) versus remote

@save_location;

if(lc != '')
{
  @find_lc(lc);
}

@search_google_main(0, 7, @get_sj);

@restore_location;
}



//;;

void
@search_google_image_tab(str sc = parse_str('/1=', mparm_str))
{
@search_google_main(3, 0, @get_sj);
}



//;;

void
@search_google_with_wiki()
{
@search_google_main(4, 0, @get_sj);
}



//;;

void
@search_google_exactly_wth_expl()
{
str fp = 'Search Google exactly, using Internet Explorer.';
@search_google_main(1, 0, '');
make_message(fp);
}



//;;

void
@search_google_images(int is_Exact_Search)
{
str fp = 'Search Google Images.';

str URL = 'https://www.google.com/search?as_st=y&tbm=isch&hl=en&as_q=&as_epq=';

str sc = @get_subject_or_selected_text;

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

if(is_Exact_Search)
{
  make_message(@trim_period(fp) + ' exactly for "' + Pretty_sc + '".');
  URL += sc;
  URL += '&as_oq=&as_eq=&cr=&as_sitesearch=&safe=images&tbs=isz:lt,islt:4mp';
}
else
{
  make_message(@trim_period(fp) + ' liberally for "' + Pretty_sc + '".');
  URL += 'as_q=' + sc +
  '&hl=en&btnG=Google+Search&as_epq=&as_oq=&as_eq=&imgtype=&imgsz=&as_filetype=&imgc=
  &as_sitesearch=&safe=images&as_st=y';
}

// I like to use IE for images because it seems to have the best zoom feature, which is
// useful for small images.

@surf(url, 0);

/*  Use Cases

Al Bundy

Present at the creation

*/

}



//;;

void
@search_google_images_exactly
{
@search_google_images(true);
}



//;;

void
@search_google_images_liberally
{
@search_google_images(false);
}



//;+ Search YouTube



//;;

void
@search_youtube(int is_Exact_Search, int sort_by)
{
str fp = 'Search YouTube using Firefox.';

str URL = 'http://www.youtube.com/results?search_query=';

str sc = @get_subject_or_selected_text;

str Pretty_sc = sc;

sc = @commute_character(sc, ' ', '+');

fp = @trim_period(fp);

if(is_Exact_Search == true)
{
  fp += ' exactly';
  sc = '%22' + char(34) + sc + char(34) + '%22';
}
else
{
  fp += ' liberally';
}

if(sort_by == 1)
{
  sc += '&sp=CAI';
  fp += ' and sort by upload date';
}

if(sort_by == 2)
{
  sc += '&sp=CAM';
  fp += ' and sort by view count';
}

URL += sc;
URL += '&search_type=&aq=f';

@surf(url, 2);

/*  Use Case(s)

you're soaking in it
WITH Quotes (27 Hits)

you're soaking in it
WITHOUT Quotes (1,130 Hits)

:+ YouTube Filters

::https://www.youtube.com/results?search_query=%22chatgpt%22&sp=CAM%253D

::chatgpt

::https://www.youtube.com/results?search_query=%22chatgpt%22&sp=CAM%253D

::Rating:
https://www.youtube.com/results?search_query=chatgpt&sp=CAE

::View Count:
https://www.youtube.com/results?search_query=chatgpt&sp=CAM

::This month, Rating:
https://www.youtube.com/results?search_query=chatgpt&sp=CAESAggE

::CAE: Rating

::CAM: View Count

::SaggE: This month

::This month, View count:
https://www.youtube.com/results?search_query=chatgpt&sp=CAMSAggE

::No Filters:
https://www.youtube.com/results?search_query=chatgpt

*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;;

void
@search_yahoo_finance
{
str fp = 'Search Yahoo Finance.';

str URL = 'https://finance.yahoo.com/quote/';

str sc = @get_subject_or_selected_text;

str Pretty_sc = sc;

sc = @commute_character(sc, ' ', '+');

fp = @trim_period(fp);

URL += sc;

@surf(url, 2);

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;+ YouTube Family (!fycmyt)



//;;

void
@goto_youtube
{
str fp = 'Go to YooTube home.';

str URL = 'http://www.youtube.com';

@surf(url, 2);
}



//;;

void
@search_youtube_by_views
{
str fp = 'Search YouTube exactly using Firefox. Sort by views.';
@search_youtube(false, 2);
}



//;;

void
@search_youtube_by_upload_date
{
str fp = 'Search YouTube exactly using Firefox. Sort by upload date.';
@search_youtube(true, 1);
}



//;;

void
@search_youtube_exactly
{
@search_youtube(true, false);
}



//;;

void
@search_youtube_liberally
{
@search_youtube(false, false);
}



//;

void
@search_urban_dictionary(str parameter = parse_str('/1=', mparm_str))
{
str fp = "Search the Urban Dictionary website.";

str URL = "http://www.urbandictionary.com/define.php?term=";

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;

@surf(url, 0);

/* Use Case(s)

- call bullshit

- naterday

*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_thesaurus(str parameter = parse_str('/1=', mparm_str))
{
str fp = "Search Thesaurus.com.";

str URL = "http://thesaurus.reference.com/browse/";

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;

@surf(url, 0);

/* Use Case(s)

- carry out

*/

make_message(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@searcher_say_version
{
str fp = "Searcher.s v. Mar-9-2010.";

@say(fp)
}



//;

void
@search_duck_duck_go(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Duck Duck Go.';

str URL = "http://duckduckgo.com/?q=";

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;

sc = @commute_character(sc, ' ', '+');

URL += sc;

@surf(url, 0);

/* Use Case(s)

MT-4436

Base64 user:password

*/

@say(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_american_heritage_dict(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search American Heritage Dictionary.';

str URL = "http://ahdictionary.com/word/search.html?q=";

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;

sc = @commute_character(sc, ' ', '+');

URL += sc;

URL += "&submit.x=35&submit.y=23";

@surf(url, 0);

/* Use Case(s)

MT-4436

*/

@say(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_free_dictionary(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Free Dictionary.';

str URL = "http://www.thefreedictionary.com/";

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;

sc = @commute_character(sc, ' ', '+');

URL += sc;

//URL += "&submit.x=35&submit.y=23";

@surf(url, 0);

@say(@trim_period(fp) + ' for "' + Pretty_sc + '".');
}



//;

void
@search_hulu(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search Hulu.';

str URL = 'http://www.hulu.com/search?q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

sc = @commute_character(sc, ' ', '+');

URL += sc;

@surf(url, 0);

/* Use Cases

The Unbelievers

*/

make_message(@trim_period(fp) + ' for "' + sc + '".');
}



//;

void
@search_google_maps(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Google Maps.';

str URL = 'https://www.google.com/maps/search/';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

sc = @commute_character(sc, ' ', '+');

URL += sc;

@surf(url, 0);

/* Use Cases

:Correct Search: 
https://www.google.com/maps/place/University+of+California,+Davis/@38.5382322,-121.7639012,17z
/data=!3m1!4b1!4m5!3m4!1s0x80ead37f7489fa3f:0xecbfbb24087e8334!8m2!3d38.5382322!4d-121.7617125

::My CMAC Search:
https://www.google.com/maps/place/University+of+California,+Davis/@38.8978498,-77.1889393,15z/
data=!3m1!4b1

::University of California, Davis

Austin

*/

make_message(@trim_period(fp) + ' for "' + sc + '".');
}



//;

void
@search_google_translate_to_engl(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Google Translate.';

str URL = 'https://translate.google.com/?sl=it&tl=en&op=translate';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += "&text=";
URL += sc;

@surf(url, 0);

/* Use Cases

Austin

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;

void
@search_google_translate_fr_engl(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Google Translate.';

str URL = 'https://translate.google.com/?sl=en&tl=it&op=translate';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += "&text=";
URL += sc;

@surf(url, 0);

/* Use Cases

Austin

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;

void
@search_pluralsight(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search Pluralsight.';

str URL = 'http://pluralsight.com/search?q=';

// New way as of Jan-7-2019.

str URL = 'https://app.pluralsight.com/search/?q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;
URL += "&categories=course&sort=displayDate";

// I noticed that Firefox doesn't give you the sort options dropdown list. Weird. Nov-9-2018
// I noticed that Firefox gives you the sort options dropdown list, but Chrome does not. 
// Weirder. Nov-15-2018

@surf(url, 0);

/* Use Cases

Azure CLI

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;

void
@search_dnr(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search DNR.';

str URL = 'http://www.dotnetrocks.com/search.aspx?q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;

URL += sc;

@surf(url, 0);

/* Use Cases

Lino Tadros

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;

void
@search_yelp(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Yelp.';

str URL = 'http://www.yelp.com/search?find_desc=&find_loc=Washington%2C+DC&ns=1#find_desc=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

//URL += "&find_loc=Washington%2C+DC&ns=1#";
URL += sc;

@surf(url, 0);

/* Use Cases

Austin

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;

void
@search_learning_tree(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Learning Tree.';

str URL = 'https://www.learningtree.com/search-results/?q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

//URL += "/Find?highlight=true&searchTerm=";
URL += sc;

@surf(url, 0);

/* Use Cases

WPF

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;

void
@search_rotten_tomatoes(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Rotten Tomatoes.';

str URL = 'http://www.rottentomatoes.com/search/?search=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

//URL += "/Find?highlight=true&searchTerm=";
URL += sc;

@surf(url, 0);

/* Use Cases

WPF

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;

void
@search_your_dictionary
{
str fp = 'Search Your Dictionary.';

str url = 'http://www.yourdictionary.com/';

str sc;

sc = @get_subject_or_selected_text;

str pretty_sc = sc;

sc = @commute_character(sc, " ", "-");

url += sc;

@surf(url, 0);

/*  Use Cases

sui generis

heiress

*/

@say(@trim_period(fp) + ' for "' + Pretty_sc + '".');

}



//;

str
@get_month()
{
str fp = "Get month.";

// lu: Dec-3-2018

int position_of_first_slash = xpos("/", date, 1);
int position_of_second_slash = xpos("/", date, position_of_first_slash+1);

str month = str_del(date, position_of_first_slash, 14);

// Strip leading zeros from the month field.
if(str_char(month, 1) == '0')
{
  // Delete the first character because it is a zero.
  month = str_del(month, 1, 1);
}

@say(fp + ' Month (' + month + ')');
return(month);
}



//;

str
@get_year()
{
str fp = "Get year.";

// lu: Dec-3-2018

int position_of_first_slash = xpos("/", date, 1);
int position_of_second_slash = xpos("/", date, position_of_first_slash+1);

str year = str_del(date, 1, position_of_second_slash);

@say(fp + ' Year (' + year + ')');
return(year);
}



//;

void
@check_smas_schedule
{
str fp = 'Check the SMAS schedule.';

str url = 'https://smithsonianassociates.org/ticketing/calendar/';

str sc;

// The old date format needs to be like this: 01/25/2016

// https://smithsonianassociates.org/ticketing/calendar/2018/12

str month = @get_month;
str year = @get_year;

sc = @get_year + '/' + @get_month;

url += sc;

@surf(url, 0);

str pretty_sc = sc;

@say(@trim_period(fp) + ' for "' + Pretty_sc + '".');

}



//;

void
@search_rational_wiki(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search RationalWiki.';

// fcd: Aug-25-2016

str URL = 'http://rationalwiki.org/w/index.php?search=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;
URL += "&title=Special%3ASearch";

@surf(url, 0);

/* Use Cases

iron manning

steel man

strawman

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;

void
@search_acronym_finder(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search AcronymFinder.com.';

// fcd: Sep-13-2016

str URL = 'http://www.acronymfinder.com/~/search/af.aspx?Acronym=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;
URL += '&string=exact';

@surf(url, 0);

/* Use Cases

plco

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;

void
@search_google_play(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Google Play.';

// fcd: Jan-24-2017

str URL = 'https://play.google.com/store/search?q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;
URL += '&c=apps';

@surf(url, 0);

/* Use Cases

Server Beacon

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;

void
@search_spanish(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Spanish translation.';

// fcd: Jan-1-2018

str URL = 'https://translate.google.com/#es/en/';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;
//URL += '&type=Repositories&ref=advsearch&l=&l=';

@surf(url, 0);

/* Use Cases

cerrado

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;+ GitHub



//;;

void
@search_github(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Github.';

// fcd: Dec-30-2017

str URL = 'https://github.com/search?utf8=%E2%9C%93&q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;
URL += '&type=Repositories&ref=advsearch&l=&l=';

@surf(url, 0);

/* Use Cases

typewriter

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;;

void
@search_github_xa(str parameter = parse_str('/1=', mparm_str))
{

str fp = 'Search Github and append Xamarin Forms.';

// fcd: Dec-30-2017

str URL = 'https://github.com/search?utf8=%E2%9C%93&q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc + ' Xamarin Forms';
URL += '&type=Repositories&ref=advsearch&l=&l=';

@surf(url, 0);

/* Use Cases

typewriter

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;;

void
@search_github_users(str parameter = parse_str('/1=', mparm_str))
{
str fp = 'Search GitHub users.';

// fcd: Oct-20-2016

str URL = 'https://github.com/search?utf8=%E2%9C%93&q=';

str sc = parameter;

if(sc == '')
{
  sc = @get_subject_or_selected_text;
}

str Pretty_sc = sc;
sc = @commute_character(sc, ' ', '+');

URL += sc;
URL += '&type=Users&ref=searchresults';

@surf(url, 0);

/* Use Cases

Don Box

Old Way?: 
https://github.com/search?utf8=%E2%9C%93&q=RichardCampbell&type=Users&ref=searchresults

*/

@say(@trim_period(fp) + ' for "' + pretty_sc + '".');
}



//;

void
@search_google_with_app_2(str sc = parse_str('/1=', mparm_str))
{
str fp = "How tall is [blank].";
// lu: Mar-3-2025
@search_google_main(0, 0, 'How tall is ' + @get_sj + '?');
}



//;

void
@search_google_with_appendag(str sc = parse_str('/1=', mparm_str))
{
str fp = "Search Google with an appended word.";
// lu: Mar-5-2018
@search_google_main(0, 0, @get_sj + ' ' + @lower(sc));
}



//;

void
@search_google_with_prependage(str sc = parse_str('/1=', mparm_str))
{
str fp = "Search Google with an prepended word.";
// lu: Oct-16-2023
@search_google_main(0, 0, @lower(sc) + @get_sj);
}



//;

void
@search_google_with_appended_dfw
{
str fp = "Search Google with appended words.";
// lu: Mar-5-2018
@search_google_main(0, 0, @get_sj + ' download for windows');
}



//;

void
@search_google_with_appended_aco
{
str fp = "Search Google with appended words.";
// lu: Dec-19-2021
@search_google_main(0, 0, @get_sj + " in Assassin's Creed Odyssey?");
}



//;

void
@search_google_with_appended_sts
{
str fp = "Search Google with appended words - streaming service.";
// lu: Nov-8-2021
@search_google_main(0, 0, @get_sj + ' on which streaming service can I watch');
}



//;

void
@search_google_with_appended_fcl
{
str fp = "Search Google with appended words.";
// lu: Apr-17-2019
@search_google_main(0, 4, @get_sj + ' from the command line');
}



//;

void
@search_google_with_appended_ba
{
str fp = "Search Google with appended words.";
// lu: Jan-21-2022
@search_google_main(0, 0, @get_sj + ' bash shell script');
}



//;

void
@search_google_with_appended_pn
{
str fp = "Search Google with appended words.";
// lu: Mar-5-2018
@search_google_main(0, 0, @get_sj + ' phone number');
}



//;

void
@search_google_with_appended_rd
{
str fp = "Search Google with appended words.";
// lu: May-4-2018
@search_google_main(0, 0, @get_sj + ' release date');
}



//;

void
@search_google_with_appended_xf
{
str fp = "Search Google with Xamarin Forms.";
// lu: Jun-26-2018
@search_google_main(0, 0, @get_sj + ' Xamarin Forms');
}



//;

void
@search_google_with_appended_xa
{
str fp = "Search Google with Xamarin Forms Xaml.";
// lu: Jun-26-2018
@search_google_main(0, 0, @get_sj + ' Xamarin Forms Xaml');
}



//;

void
@search_google_with_appended_td
{
str fp = "Search Google with appended words.";
// lu: Apr-3-2018
@search_google_main(0, 0, @get_sj + ' tour dates');
}



//;

void
@search_npm_for_packages
{
str fp = 'Search NPM for packages.';

str URL = 'https://www.npmjs.com/package/';

str sc = @get_subject_or_selected_text;

URL += sc;

@surf(url, 0);

/*  Use Cases

underscore

*/

}



//;

void
@search_npm_for_packages_json
{
str fp = "Search NPM for a package's JSON information.";

str URL = 'registry.npmjs.org/';

str sc = @get_subject_or_selected_text;

URL += sc;

@surf(url, 0);

/*  Use Cases

underscore

*/

}



//;

void
@search_earth_model_l1(str fpp = parse_str('/1=', mparm_str), str url = parse_str('/2=', mparm_str))
{

str fp = 'Search earth model, level 1.';

str sc = @get_subject_or_selected_text;

str Pretty_sc = sc;

url += sc;

sc = @commute_character(sc, ' ', '+');

@surf(url, 0);

str status_Message = @trim_period(fp) + ' for "' + Pretty_sc + '".';

@say(status_Message);
}



//;

void
@search_google_play
{
str fp = "Search Google Play.";

str url = 'https://play.google.com/store/search?q=';

@search_earth_model_l1(fp, url);

/*  Use Cases

century spice road

century spice roads

*/

}



//;

void
@search_google_trends
{
str fp = "Search Google Trends.";

str url = 'https://trends.google.com/trends/explore?q=';

//JavaScript&geo=US

@search_earth_model_l1(fp, url);

/*  Use Cases

German Helmets

Brazil World Cup

*/

}



//;

void
@search_filext
{
str fp = "Search FilExt.";

str url = 'https://filext.com/file-extension/';

str sc = @get_subject_or_selected_text;

str Pretty_sc = sc;

url += sc;

sc = @commute_character(sc, ' ', '+');

@surf(url, 0);

str status_Message = @trim_period(fp) + ' for "' + Pretty_sc + '".';

@say(status_Message);

}



//; (!efse)
