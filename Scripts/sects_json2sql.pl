#!/usr/bin/perl

sub printJson {

	my ($sid, $name, $description, $topics) = @_;
	
	
print <<EOF

{
	"$sid" : {
		"section_id": "$sid",
		"section_name": "$name",
		"section_description": "$description",
		"topics" : [ $topics ]
	},
}
EOF

}

# nl /etc/passwd | awk '{print $1}' | head -30 > /tmp/t1
# cd /Users/moyer/Desktop/topics/txt
# ls -1 *.txt | sed "s/.txt//g" > /tmp/t2

# for i in `ls -1 *.txt | sed "s/.txt//g"`; do echo ${i^}; done > /tmp/t1
# nl /tmp/t1

{
	cd 
	for i in `ls -1 /Users/moyer/Desktop/topics/txt/*.txt | sed "s/.txt//g"`; do
	echo ${i^}
	done

	for i in `ls -1 /Users/moyer/Desktop/topics/txt/*.txt`; do
	basename ${i^}
	done

	

for i in `find /Users/moyer/Desktop/topics/txt/*.txt -exec basename {} \; | sed "s/.txt//g"`; do
	echo ${i^}
done
	



	| nl | awk '{ print  "INSERT INTO section VALUES (" $1 "," "\"" $2 "\"" "," "\"" "\"" "," "\"" "\"" ");" }'


cd /Users/moyer/Desktop/topics/txt/*.txt



	for i in `ls -1 *.txt | sed "s/.txt//g"`; do
	echo ${i^}
	done | nl | awk '{ print  "INSERT INTO section VALUES (" $1 "," "\"" $2 "\"" "," "\"" "\"" "," "\"" "\"" ");" }'


DROP TABLE "section";
CREATE TABLE "section" (
	"section_id"	INTEGER NOT NULL UNIQUE,
	"section_name"	TEXT NOT NULL,
	"section_description"	TEXT,
	"section_last_modified"	INTEGER,
	PRIMARY KEY("section_id" AUTOINCREMENT)
);




     1	Apache
     2	Audio
     3	Automation
     4	Bash
     5	Blender
     6	C
     7	Codeigniter
     8	Commandline
     9	Cpp
    10	Css
    11	Cybertools
    12	Devtools
    13	Django
    14	Html
    15	Ios
    16	Java
    17	Javascript
    18	Jquery
    19	Linux
    20	Nums
    21	Perl
    22	Photoshop
    23	Php
    24	Politics
    25	Python
    26	Raspberry
    27	Ruby
    28	Security
    29	Sql
    30	Ssl
    31	Swift
    32	Swiftui
    33	Technology
    34	Topics
    35	Video
    36	Windows
    37	Xcode


printJson(1, 'Apache', 'HTTP Server', '["Installation", "Configuration"]');
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30

