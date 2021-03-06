%%
%% This is file `bidipresentation.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% bidi.dtx  (with options: `bidipresentation.cls')
%% 
%%   ______________________________________
%%   Copyright © 2009–2013  Persian TeX Group
%% 
%%   License information appended.
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bidipresentation}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage[foot=10.2pt,head=0pt,paperwidth=128mm,paperheight=96mm,left=5mm,top=5mm,right=7mm,bottom=8mm]{geometry}

\RequirePackage{fancyhdr}
\renewcommand{\headrulewidth}{0mm}

\renewcommand{\maketitle}%
  {\ClassError{bidipresentation}{Caution: ``maketitle'' command not supported}%
  {Please use ``titlepage'' environment instead}%
}

\fancypagestyle{pres}{%
\fancyhf{}%
\fancyfoot[RO,LE]{\footnotesize \thepage}%
}

\pagestyle{pres}

\providecommand\pause% If pause.sty is loaded, the existing definition of \pause is not overwritten.
{%
  \save@bidipres%                                         Save contents of the page...
  \insertfirstduplicate@bidipres%                         ... and insert again.
  \ifthenelse{\boolean{display}}%                   Are dynamic features enabled?
  {% Yes.
    \outputduplicate@bidipres%                            Output page.
    \restorepausecounters@bidipres%                       Restore counters (page number).
    \insertsecondduplicate@bidipres%                      Reinsert saved contents.
    }
  {}%
  }%
\newcommand{\distance}[1]{\vspace*{\stretch{#1}}}
\newcommand{\abstand}[1]{\vspace*{\stretch{#1}}}

\setlength{\parskip}{0.6ex}
\setlength{\parindent}{0mm}

\newenvironment{plainslide}[1][]%
   {{\raggedleft \large\bfseries #1\par}\par\vspace*{\stretch{1}}}%
   {\par\vspace*{\stretch{1}}\newpage}

\newenvironment{rawslide}{}{\newpage}%

\def\itemize{%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \expandafter
    \list
      \csname\@itemitem\endcsname
      {\def\makelabel##1{\hss\llap{##1}}}%
  \fi
    \setlength{\itemsep}{0ex}%
    \setlength{\parskip}{0.1ex}%
    \setlength{\parsep}{0ex}%
    }%
\let\enditemize =\endlist

\def\enumerate{%
  \ifnum \@enumdepth >\thr@@\@toodeep\else
    \advance\@enumdepth\@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \expandafter
      \list
        \csname label\@enumctr\endcsname
        {\usecounter\@enumctr\def\makelabel##1{\hss\llap{##1}}}%
  \fi
    \setlength{\itemsep}{0ex}%
    \setlength{\parskip}{0.1ex}%
    \setlength{\parsep}{0ex}%
    }%
\let\endenumerate =\endlist

\renewenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}
 \setlength{\itemsep}{0ex}%
    \setlength{\parskip}{0.1ex}%
    \setlength{\parsep}{0ex}}
               {\endlist}
%% 
%% Copyright © 2009–2013  Persian TeX Group <persian-tex@tug.org>
%% 
%% It may be distributed and/or modified under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is “maintained” (as per LPPL maintenance status)
%% by Persian TeX Group.
%% 
%% 
%% 
%%
%% End of file `bidipresentation.cls'.
