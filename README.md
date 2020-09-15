\documentclass[11pt]{beamer}
\usepackage{listings} % Include the listings-package
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage{amsmath}
\usepackage{amssymb, amsfonts, latexsym, cancel}
\usepackage{float}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{subfigure}
\usepackage{hyperref}
%\usepackage{authblk}
\usepackage{blindtext}
\usepackage{booktabs} % Allows the use of \toprule, 
\usepackage{filecontents}
\usepackage{courier} %% Sets font for listing as Courier.
\usepackage{listings}
%\usepackage{listings, xcolor}
\lstset{
tabsize = 2, %% set tab space width
showstringspaces = false, %% prevent space marking in strings, string is defined as the text that is generally printed directly to the console
numbers = left, %% display line numbers on the left
commentstyle = \color{green}, %% set comment color
keywordstyle = \color{blue}, %% set keyword color
stringstyle = \color{red}, %% set string color
rulecolor = \color{black}, %% set frame color to avoid being affected by text color
basicstyle = \small \ttfamily , %% set listing font and size
breaklines = true, %% enable line breaking
numberstyle = \tiny,
}
\usepackage{caption}
\DeclareCaptionFont{white}{\color{white}}
\DeclareCaptionFormat{listing}{\colorbox{gray}{\parbox{\textwidth}{#1#2#3}}}
\captionsetup[lstlisting]{format=listing,labelfont=white,textfont=white}
\definecolor{urlColor}{rgb}{0.06, 0.3, 0.57}
\definecolor{linkColor}{rgb}{0.57, 0.0, 0.04}
\definecolor{fileColor}{rgb}{0.0, 0.26, 0.26}
\hypersetup{
    colorlinks=true,
    linkcolor=linkColor,
    filecolor=fileColor,      
    urlcolor=urlColor,
}
\urlstyle{same}
\setbeamercovered{transparent}
%\usetheme{Boadilla}
\usetheme{CambridgeUS}
%\usetheme{Berkeley}
%\usetheme{Warsaw}
%\usetheme{Madrid}

\title[Presentación]{\bf\Huge Interacción Humano Computador}
\subtitle{Presentación}

\author[rescobedoq]
{
	Richart Smith Escobedo Quispe \inst{1}
}
\institute[UNSA]
{
\inst{1}% 
System Engineering School\\
System Engineering and Informatic Department\\
Production and Services Faculty\\
San Agustin National University of Arequipa
}

\date[2020-09-08]{\scriptsize{2020-09-08}}
%\logo{\includegraphics[width=3.0cm]{img/logo_unsa.jpg}}
\titlegraphic{\includegraphics[width=1.0cm]{img/logo_unsa.jpg}}

\begin{document}

\begin{frame}
\titlepage
\end{frame}

\begin{frame}
\frametitle{Content}
\tableofcontents
\end{frame}

\section{Objetivo}
\begin{frame}
\frametitle{Objetivo}
\begin{itemize}
\item Analizar cómo el {\bf usuario} utiliza la {\bf tecnología}, y cómo esta tecnología se adapta a las {\bf necesidades del usuario}.
\end{itemize}
\end{frame}

\section{POO}
\begin{frame}
\frametitle{POO}
\begin{itemize}
\item Alan Kay -> POO -> GUI.
\end{itemize}
\end{frame}


\section{Books}
\begin{frame}
\frametitle{POO}

{\includegraphics[width=5.0cm]{img/Johnson.png}}
{\includegraphics[width=5.0cm]{img/Sharp.png}}

\end{frame}



\section{References}
%References frame
\begin{frame}
\frametitle{References}
\begin{itemize}
\item \href{https://es.wikipedia.org/wiki/Alan_Kay}{Alan Kay}
\item \href{https://es.wikipedia.org/wiki/Pirates_of_Silicon_Valley}{Piratas de Silicon Valley - Película}
\item \href{https://www.amazon.com/-/es/Walter-Isaacson/dp/1451648537}{Steve Jobs - Autobiografía}
\item \href{http://www.id-book.com/}{Interaction Design - Book}
\end{itemize}
\end{frame}

\end{document}
