{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf210
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\f0\fs24 \cf0 % Intro Options\
\\ProvidesClass\{freya-cv\}[2015/04/17 CV class]\
\\NeedsTeXFormat\{LaTeX2e\}\
\\DeclareOption\{print\}\{\\def\\@cv@print\{\}\}\
\\DeclareOption*\{%\
  \\PassOptionsToClass\{\\CurrentOption\}\{article\}\
\}\
\\ProcessOptions\\relax\
\\LoadClass\{article\}\
\
% Package Imports\
\\usepackage[hmargin=1.25cm, vmargin=0.7cm]\{geometry\}\
\\usepackage[usenames,dvipsnames]\{xcolor\}\
\\usepackage\{hyperref\}\
\\usepackage\{titlesec\}\
\\usepackage[absolute]\{textpos\}\
\\usepackage[UKenglish]\{babel\}\
\\usepackage[UKenglish]\{isodate\}\
\\usepackage\{fontspec,xltxtra,xunicode\}\
\\usepackage\{subfiles\}\
\\usepackage\{comment\}\
\
%Long form vs short form\
\\excludecomment\{verbose\}\
% \\includecomment\{verbose\}\
\
% Color definitions\
\\definecolor\{date\}\{HTML\}\{666666\} \
\\definecolor\{primary\}\{HTML\}\{2b2b2b\} \
\\definecolor\{headings\}\{HTML\}\{6A6A6A\}\
\\definecolor\{subheadings\}\{HTML\}\{333333\}\
\
% Set main fonts\
\\defaultfontfeatures\{Mapping=tex-text\}\
\\setmainfont[Color=primary, Path = fonts/lato/]\{Lato-Lig\}\
\\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]\{Raleway-ExtraLight\}\
\\newcommand\{\\custombold\}[1]\{\\color\{subheadings\}\\fontspec[Path = fonts/lato/]\{Lato-Reg\}\\selectfont #1 \\normalfont\}\
\
% Date command\
\\setlength\{\\TPHorizModule\}\{1mm\}\
\\setlength\{\\TPVertModule\}\{1mm\}\
\\textblockorigin\{0mm\}\{5mm\} % start everyth\
\\newcommand\{\\lastupdated\}\{\\begin\{textblock\}\{60\}(165,0)\
\\color\{date\}\\fontspec[Path = fonts/raleway/]\{Raleway-ExtraLight\}\\fontsize\{8pt\}\{10pt\}\\selectfont \
Last Updated on\
\\today\
\\end\{textblock\}\}\
\
% Name command\
\\newcommand\{\\namesection\}[3]\{\
	\\centering\{\
		\\sffamily\
		\\fontspec[Path = fonts/lato/]\{Lato-Hai\}\\fontsize\{40pt\}\{10cm\}\\selectfont #1 \
		\\fontspec[Path = fonts/lato/]\{Lato-Lig\}\\selectfont #2\
	\} \\\\\
	\\vspace\{5pt\}\
	\\centering\{\\color\{headings\}\\fontspec[Path = fonts/raleway/]\{Raleway-Medium\}\\fontsize\{11pt\}\{14pt\}\\selectfont #3\}\
	\
	\\noindent\\makebox[\\linewidth]\{\\rule\{\\paperwidth\}\{0.4pt\}\}\
	\\vspace\{-15pt\}\
    \\raggedright\
\}\
\\titlespacing\{\\section\}\{0pt\}\{0pt\}\{0pt\}\
\
% Headings command\
\\titleformat\{\\section\}\{\\color\{headings\}\
\\scshape\\fontspec[Path = fonts/lato/]\{Lato-Lig\}\\fontsize\{16pt\}\{24pt\}\\selectfont\\raggedright\\uppercase\}\{\} \{0em\}\{\}\
\
% Subeadings command\
\\titleformat\{\\subsection\}\{\\color\{subheadings\}\
\\fontspec[Path = fonts/lato/]\{Lato-Bol\}\\fontsize\{12pt\}\{12pt\}\\selectfont\\raggedright\\bfseries\\uppercase\}\{\}\{0em\}\{\}\
\\titlespacing\{\\subsection\}\{0pt\}\{\\parskip\}\{-\\parskip\}\
\\titlespacing\{\\subsubsection\}\{0pt\}\{\\parskip\}\{-\\parskip\}\
\\newcommand\{\\runsubsection\}[1]\{\\color\{subheadings\}\
\\fontspec[Path = fonts/lato/]\{Lato-Bol\}\\fontsize\{12pt\}\{12pt\}\\selectfont\\raggedright\\bfseries\\uppercase \{#1\} \\normalfont\}\
\
% Descriptors command\
\\newcommand\{\\descript\}[1]\{\\color\{subheadings\}\\scshape\\fontspec[Path = fonts/raleway/]\{Raleway-Medium\}\\fontsize\{11pt\}\{13pt\}\\selectfont \{#1 \\\\\} \\normalfont\}\
\
% Location command\
\\newcommand\{\\location\}[1]\{\\color\{headings\}\\fontspec[Path = fonts/raleway/]\{Raleway-Medium\}\\fontsize\{10pt\}\{12pt\}\\selectfont \{#1\\\\\} \\normalfont\}\
% Job Title command\
\\newcommand\{\\jobtitle\}[1]\{\\color\{headings\}\\fontspec[Path = fonts/raleway/]\{Raleway-Medium\}\\fontsize\{10pt\}\{12pt\}\\selectfont \{#1\\\\\} \\normalfont \\vspace\{5pt\}\}\
% heavy command\
\\newcommand\{\\heavy\}[1]\{\\color\{headings\}\\fontspec[Path = fonts/raleway/]\{Raleway-Medium\}\\fontsize\{9pt\}\{11pt\}\\selectfont \{#1\} \\normalfont\}\
% Section seperators command\
\\newcommand\{\\sectionsep\}[0]\{\\vspace\{8pt\}\}\
\
% Bullet Lists with fewer gaps command\
\\newenvironment\{tightemize\}\{\\vspace\{-\\topsep\}\\begin\{itemize\}\\itemsep1pt \\parskip0pt \\parsep0pt\}\{\\end\{itemize\}\\vspace\{-\\topsep\}\}\
-c}