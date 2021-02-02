%%%%%%%%%%%%%%%%%%%%%%%%%
%		The LaTeX Project Public License		   
%******************************************%
%This work may be distributed and/or modified under 
%the conditions of the LaTeX Project Public License, 
%either version 1.3 of this license or (at your option) 
%any later version. The latest version of this license
%is inhttp://www.latex-project.org/lppl.txt and version
%1.3 or later is part of all distributions of LaTeX version 
%2005/12/01 or later.Further information about abnTeX2 
%are available on http://www.abntex.net.br/
%******************************************%
%Centro Universitário Vale do Iguaçu - UNIGUAÇU
%Class Customization of abnTeX2 to Uniguaçu
%Autor: Mateus Kohl Carneiro
%******************************************%
%UTF-8
%abnTeX2          
%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cfg/uniguatex}[2020/08/05 v.alpha]
%abntex2
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}
\PassOptionsToClass
{
12pt, oneside, a4paper, sumario=abnt-6027-2012, brazil,                  
}{abntex2}
\ProcessOptions\relax
\LoadClass{abntex2}


\frenchspacing
%********************************************%
%                  EQUAÇÕES			         %
%********************************************%
% numeração sequencial de equações
\counterwithout{equation}{chapter}
%********************************************%
% 			COMANDO DE DADOS				 %
%********************************************%
% curso
\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}
% departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}
% subtítulo do trabalho
\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}
% TCC apenas
\providecommand{\imprimirprojeto}{}
\newcommand{\projeto}[1]{\renewcommand{\imprimirprojeto}{#1}}
% título acadêmico
\providecommand{\imprimirtituloacademico}{}
\newcommand{\tituloacademico}[1]{\renewcommand{\imprimirtituloacademico}{#1}}
% citação do autor
\providecommand{\imprimircitacaoautor}{}
\newcommand{\citacaoautor}[1]{\renewcommand{\imprimircitacaoautor}{#1}}
% título em inglês
\providecommand{\imprimirtituloingles}{}
\newcommand{\tituloingles}[1]{\renewcommand{\imprimirtituloingles}{#1}}
% Texto da folha de aprovação
\providecommand{\imprimirtextopadraofolhadeaprovacao}{}
\newcommand{\textopadraofolhadeaprovacao}[1]{\renewcommand{\imprimirtextopadraofolhadeaprovacao}{#1}}
%**********************************************%
%			OBJETOS FLUTUANTES				   %                      
%**********************************************%
% fonte objetos flutuantes
\renewcommand{\fonte}[1]
{
\begin{SingleSpacing}
	\par
\end{SingleSpacing}
\centering\small
{Fonte: #1}
}
% notas objetos flutuantes
\renewcommand{\nota}[1]
{
\begin{SingleSpacing}
	\par
\end{SingleSpacing}
\begin{tabular}
	{l p{.85\textwidth}}
	Nota: & #1
\end{tabular}
}
%**********************************************%
%			       PARÁGRAFOS	  		          %                      
%**********************************************%
% indentação de parágrafo
\setlength{\parindent}{1.5cm}
% espaçamento de parágrafos
\setlength{\parskip}{0.0cm}
%**********************************************%
%				FONTES				%                      
%**********************************************%
% título I
\renewcommand{\ABNTEXchapterfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}
% título II 
\renewcommand{\ABNTEXsectionfont}{\normalfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}
% título III
\renewcommand{\ABNTEXsubsectionfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}
% título IV
\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}
% título V
\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont\itshape}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}
%**********************************************%
%				SUMÁRIO				%                      
%**********************************************%
\setlength{\cftbeforechapterskip}{0pt}
% título I sumário
\renewcommand{\cftchapterfont}{\ABNTEXchapterfont}
\renewcommand{\cftchapterpagefont}{\cftchapterfont}
% título II sumário
\renewcommand{\cftsectionfont}{\ABNTEXsectionfont}
\renewcommand{\cftsectionpagefont}{\cftsectionfont}
% título III sumário
\renewcommand{\cftsubsectionfont}{\ABNTEXsubsectionfont}
\renewcommand{\cftsubsectionpagefont}{\cftsubsectionfont}
% título IV sumário
\renewcommand{\cftsubsubsectionfont}{\ABNTEXsubsubsectionfont}
\renewcommand{\cftsubsubsectionpagefont}{\cftsubsubsectionfont}
% título V sumário
\renewcommand{\cftparagraphfont}{\ABNTEXsubsubsubsectionfont}
\renewcommand{\cftparagraphpagefont}{\cftparagraphfont}
%**********************************************%
%				LISTAS				%                      
%**********************************************%
% define os títulos das listas
\addto\captionsbrazil
{
% titulo do babel
\renewcommand{\listadesiglasname}{LISTA DE ABREVIATURAS E SIGLAS}
\renewcommand{\listadesimbolosname}{LISTA DE S\'{I}MBOLOS}
\renewcommand{\listfigurename}{LISTA DE FIGURAS}
\renewcommand{\listtablename}{LISTA DE TABELAS}
\renewcommand{\bibname}{REFER\^ENCIAS}
% macro \autoref
\renewcommand{\pageautorefname}{p\'agina}
}
%**********************************************%
%			LISTA DE QUADROS			%                      
%**********************************************%
\newcommand{\listofquadroname}{Lista de Quadros}
\newcommand{\quadroname}{Quadro}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadro}{loq}{\listofquadroname}
\newlistentry{quadro}{loq}{0}
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}
%**********************************************%
%				CAPA					%                     
%**********************************************%
\makeatletter
\renewcommand{\imprimircapa}
{
\begin{capa}
	\begin{center}
		\begin{SingleSpacing}
			\ABNTEXchapterfont\MakeUppercase{\imprimirinstituicao} \\
			\ABNTEXchapterfont\MakeUppercase{\imprimircurso} \\
		\end{SingleSpacing}
	\end{center}
\vspace{80pt}
\begin{center}
	\ABNTEXchapterfont\MakeUppercase{\imprimirautor}\\
\end{center}
\vspace{128pt}
\begin{center}
	\ABNTEXchapterfont\MakeUppercase{\imprimirtitulo}
	\abntex@ifnotempty{\imprimirsubtitulo}
	{
		{\ABNTEXchapterfont: }{\imprimirsubtitulo}
	}
\end{center}
\vfill
\begin{center}
	\begin{SingleSpacing}
		\ABNTEXchapterfont\MakeUppercase{\imprimirlocal}\\
		\ABNTEXchapterfont\MakeUppercase{\imprimirdata}
		\end{SingleSpacing}
	\end{center}
\end{capa}
}
\makeatother
%**********************************************%
%			FOLHA DE ROSTO				%                      
%**********************************************%
\makeatletter
\renewcommand{\folhaderostocontent}
{
\setcounter{page}{1}
\thispagestyle{empty}
\begin{center}
	\ABNTEXchapterfont\MakeUppercase{\imprimirautor}\\
\end{center}
\vspace*{140pt}
\begin{center}
	\ABNTEXchapterfont\MakeUppercase{\imprimirtitulo}
	\abntex@ifnotempty{\imprimirsubtitulo}
	{{\ABNTEXchapterfont: }{\imprimirsubtitulo}}
\end{center}	
{
\hspace{0.5\textwidth}
\begin{minipage}{0.5\textwidth}
	\SingleSpacing
	\footnotesize
	{
		\imprimirpreambulo
		\\
		\imprimirorientadorRotulo \hspace{1mm} \imprimirorientador
	}
\end{minipage}
   	}
	\vspace*{\fill}
	\begin{center}
		\begin{SingleSpacing}
			\ABNTEXchapterfont\MakeUppercase{\imprimirlocal}\\
			\ABNTEXchapterfont\MakeUppercase{\imprimirdata}
		\end{SingleSpacing}
	\end{center}
}
\makeatother
%**********************************************%
%			FOLHA DE APROVAÇÃO			%                      
%**********************************************%
\makeatletter
\newcommand{\imprimirfolhadeaprovacao}
{
\begin{folhadeaprovacao}
\vspace*{\fill}
	%\begin{tabular}{p{.45\textwidth}p{.45\textwidth}} 
		%& \imprimirtextopadraofolhadeaprovacao \\
	%\end{tabular}
\vspace*{\fill}
\end{folhadeaprovacao}
}
\makeatother
%**********************************************%
%				EPÍGRAFE				%                      
%**********************************************%
\renewenvironment{epigrafe}[1][]
{
\ifthenelse{\equal{#1}{}}
	{
		\PRIVATEbookmarkthis{\epigraphname}
	}
	{
	\pretextualchapter{#1}
	}
	\vspace*{\fill}
	\begin{flushright}
		\begin{minipage}{.5\textwidth}
			\begin{SingleSpacing}
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}
{
			\end{SingleSpacing}
		\end{minipage}
	\end{flushright}
}
