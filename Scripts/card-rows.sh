topics="Apache
Audio
Automation
Bash
Blender
Blockchain
Bootstrap
C
Codeigniter
Commandline
Cpp
Css
Cybertools
Devtools
Django
Html
Imagemagick
Ios
Java
Javascript
Jquery
Linux
Logos
Manuals
Mysql
Perl
Photoshop
Php
Python
Raspberry
Ruby
Security
Shells
Shortcuts
Shortcuts
Sql
Src
Ssl
Swift
Swiftui
UnrealEngine
Video
Windows
Xcode"

echo $topics

for t in $topics; do
	echo "
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                            <title>$t</title>
                            <rect width="100%" height="100%" fill="#55595c"/>
                            <text x="10%" y="10%" fill="#eceeef" dy=".3em">$t</text>
                        </svg>

                        <div class="card-body">
                            <p class="card-text"></p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>"
done

