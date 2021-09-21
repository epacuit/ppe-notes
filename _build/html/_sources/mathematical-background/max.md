
# Maximal Elements

Consider the example of a relation where $X$ is a set of people and $R\subseteq X\times X$ is the relation where $a\mathrel{R}b$ means that preson $a$ is pointing at person $b$.  A person who is not being pointed at by anyone.  
A person that is pointing to everyone. 

Given a set $X$ and a relation $R$ on $X$, one is often interested in identifying the "best" elements in $Y\subseteq X$ according to $R$.  


 

```{glossary}
Maximal
  Suppose that $X$ is a set,  $Y\subseteq X$ and $R$ is a relation on $X$.   An element $m\in Y$ is **$R$-maximal** in $Y$ provided that for all $y\in Y$, if $y\mathrel{R} m$, then $y=m$.  Let $\max_R(Y)$ denote the set of maximal elements of $Y$. 
```

```{admonition} Equivalent Definition of Maximal Elements
:class: note
  An equivalent definition of $\max_R(Y)$ is  

  <center>

  $\max_R(Y) = \{y\ |\  y\in Y\text{ there is no } z\in Y\text{ such that }z\ne y \text{ and }z\mathrel{R} y\}.$
  </center>

  So,   $y\in Y$ is  maximal means that there is no element of $Y$ that is $R$-related to $y$.  
```

Suppose that $X=\{a, b, c\}$. The following examples illustrate the above definition:  following examples 

* If $R=\{(a,b), (b, c), (a, c)\}$, then $\max_R(X)=\{a\}$ (there is no $x\in X$ such that $x\mathrel{R} a$). 
* If $R=\{(a,b), (b, c), (c,a)\}$, then $\max_R(X)=\emptyset$ (for each   $x\in X$, there is   $y\in X$ such that $x\ne y$ and $y\mathrel{R}x$).
* If $R=\emptyset$, then $\max_R(X)=\{a,b,c\}$ (for each $x\in X$, there is no $y\in X$ such that $y\mathrel{R} x$).
* If $R=\{(a,a), (b,b), (c,c)\}$, then $\max_R(X)=\{a,b,c\}$ (for each $x\in X$, there is no $y\in X$ such that $x\ne y$ and  $y\mathrel{R} x$). 
* If $R=\{(a, b), (c, b) \}$, then $\max_R(X)=\{a,c\}$ (for each $x\in\{a, c\}$, there is no $y\in X$ such that $x\ne y$ and $y\mathrel{R} x$). 
* If $R=\{(a,b)\}$, then $\max_R(X)=\{a, c\}$ (note that there is no element that is $R$-related to $c$)
* If $R=\{(a,b), (b,a)\}$, then $\max_R(X)=\{c\}$ (again, note that there is no element that is $R$-related to $c$). 


 
The above examples illustrate that given a relation $R$ on a set $S$, there may be no maximal elements in $S$, a unique maximal element of $S$, or more than one maximal element in $S$.  However, if a relation $R$ is complete on $S$ (i.e., all elements in $S$ are related by $R$ in some way), then there can   be at most one maximal element.   Furthermore, when  there is a unique maximal element in a set $S$ for a relation $R$, this element is $R$-related to every element of $S$.[^footnote1] This motivates the following definition. 

[^footnote1]: Unless $S$ contains a single element and $R$ is empty. In this degenerate case, the only element of $S$ is maximal.

```{glossary}
Maximum
  Suppose that $X$ is a set,  $Y\subseteq X$ and $R$ is a relation on $X$.   An element $m\in Y$ is the **$R$-maximum** of $Y$ provided that  for each $y\in Y$, either $m\mathrel{R} y$ or $y=m$. 
```

So, an element is the maximum of $Y$ provide that it is $R$-related to every other element in $Y$.  Note that if a set $Y$ has an $R$-maximum, then it must be unique.  Every maximum element is maximal, but there may be maximal elements that are not maximum (see the above examples).  


Suppose that $X=\{a, b, c\}$. Consider the following examples: 


* If $R=\{(a,b), (b, c), (a, c)\}$, then $a$ is the maximum in $X$. 
* If $R=\{(a,b), (b, c), (c,a)\}$, then there is no maximum in $X$.
* $R=\{(a, b), (c, b) \}$,  then there is no maximum in $X$. 
* If $R=\{(a,b)\}$, then there is no maximum in $X$ (but $a$ is the maximum of $Y=\{a,b\}$).
* If $R=\{(a,a), (b,b), (c,c), (a,b), (b,c), (a,c)\}$, then $a$ is the maximum in $X$. 
 
 
 <br />

<center>

<iframe width="600" height="400" src="https://www.youtube.com/embed/NPLj-y37OLM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

</center>


<br />

## Exercises
 
1. Is it possible to find a relation   that has a cycle and a non-empty set of maximal elements?   What about a relation that has a cycle, a non-empty set of maximal elements,  and is complete and transitive? 
2. Prove that if $R$ is acyclic, then $\max_R(Y)\ne\emptyset$.   Is the converse true? (Why or why not?)