# IHC
% Definición
\documentclass{beamer}

% Notas
\usepackage{pgfpages}
\setbeameroption{show notes on second screen=right}

% Datos
\title{Presentaciones en \LaTeX}
\author{Ondiz}
\institute{Home, sweet home}
\date{\today}

% Temas
\usetheme{Bergen}
\usefonttheme{serif}
\usecolortheme{rose}

% Opciones
\setbeamercolor{title}{fg=magenta, bg=white}
\setbeamertemplate{navigation symbols}{}

% Inicio
\begin{document}

% Diapositivas
 \begin{frame}
  \maketitle
  \note{Notas}
 \end{frame}
 
 \begin{frame}{Índice}
  \tableofcontents
  \note{Más notas}
 \end{frame}
 
 \section{Introducción}
 \subsection{Primera parte}

 \begin{frame}{Introducción}
  \begin{itemize}
   \item<1-> Ítem 1
   \item<2> Ítem 2
  \end{itemize}
 \end{frame}

\end{document}
