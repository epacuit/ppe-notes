# Relations


The order in which we list elements in a set does not matter.   That is, $\{a, b\}$ is the same set as $\{b, a\}$ (they both denote the set consisting of two elements '$a$' and '$b$').  There are many situations in which the order in which the elements appear is important.  When the order in which the elements appear matters, we use '$($' and `$)$'.   For example,  $(a,b)$ is an   **ordered pair**, or **tuple**, of length 2.   The first component is $a$ and the second component is $b$.    Since the order in which the elements appear matters, we have that $(a, b)\ne (b,a)$.   More generally,  examples of tuples  of length 5 consisting of elements from the set $\{a, b, c, d, e\}$ includes  $(a, b, c, d, e)$,  $(b, d, a, d, e)$ or $(a, a, b, b,  e)$ (note that in the last tuple we allow the same element to be repeated). 

```{glossary}
Product
  Suppose that $A$ and $B$ are non-empty sets.  The  **product** of $A$ and $B$, denoted $A\times B$, is the set of ordered pairs where the first component comes from $A$ and the second component comes from $B$.  That is,  $A\times B=\{(a,b)\ |\ a\in A\mbox{ and } b\in B\}.$
```

We call $X\times X$  the  **cross-product** of $X$ with itself.   That is, it is the set of all pairs of elements from $X$.   For example, if $X=\{a, b, c\}$, then

$$
X\times X=\{(a,a), (a,b), (a,c), (b,a), (b,b), (b,c), (c,a), (c,b), (c,c)\}.
$$

 
If $X$ is a set, we write $X^n$ to denote the  **$n$-fold cross product**.   That is 

$$
X^n= \underbrace{X\times \cdots \times X}_{n\text{-times}}
$$

 
Suppose that  $X$ is a set and that  $n$ a positive integer. We define $X^n$ as follows:  
1. $X^1=X$; and
2. for all $n>1$, $X^{n+1}=X\times X^n$.  

So, $X^2 = X\times X$ and $X^3$ is the set of all tuples from $X$ of length 3 (formally, $X^3= X\times (X\times X)$).   

```{note}
An element of $X^n$ is a tuple of length $n$ where each element comes from $X$.  An element of $X^n$ is also called a **sequence** of length $n$.   
```

 There are situations when one must consider products of sets which are themselves products.   For example, suppose that $X=\{a, b\}$.  Let $Y=X^2$.  Then, elements $Y^2$ consists of tuples of length 2 where each component is a tuple of length 2 of elements from $X$:   
 
$$
Y^2 = \{((a,a), (a,a)), ((a,a), (a,b)),  ((a,a), (b,a)), ((a,a), (b,b)),\\ 
       ((a,b), (a,a)), ((a,b), (a,b)),  ((a,b), (b,a)),  ((a,b), (b,b)), \\  
        ((b,a), (a,a)), ((b,a), (a,b)), ((b,a), (b,a)),  ((b,a), (b,b)),\\ 
        ((b,b), (a,a)), ((b,b), (a,b)), ((b,b), (b,a)),  ((b,b), (b,b))\}   
$$

 An example of an element in $Y^3$ is $((a,a), (b,a), (a,b))$.   Since $Y$ has 4 elements, we have that $|Y^3| = 64$.  More generally, if $A$ has $m$ elements, $|A|=m$, then $|A^n|=m^n$.   


A  **relation** $R$ on a set $X$ is  a subset of $X\times X$ (the set of pairs of elements from $X$).  Formally,  $R$ is a relation on $X$ means that   $R\subseteq X\times X$.  Relations are an important mathematical tool used throughout Philosophy, Political Science, and Economics.  You have already studied binary relations during your mathematical eduction: $=,\le, \ge, <,$ and $>$ are all relations on numbers (e.g., the natural numbers $\mathbb{N}$, real numbers $\mathbb{R}$, rational numbers $\mathbb{Q}$, etc.) and  $\subseteq$ is a relation on the power set of a set $S$.    For example,  the binary relation $\le \subseteq \mathbb{N}\times \mathbb{N}$ is the set

$$
\{(a,b)\ |\ a,b\in\mathbb{N}\text{ and }  a\text{ is less than or equal to } b\}.
$$

```{note} 
It is often convenient  to write $a\mathrel{R}b$ for $(a,b)\in R$.  
```



<center>

<iframe width="600" height="400" src="https://www.youtube.com/embed/KacOh3TFruA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

</center>

<br/>

Consider the following examples.    Suppose that $X$ is the set of people in a room  and that everyone in the room is pointing at some person in the room.   A relation can be used to describe who is pointing at whom,  where for $a,b\in X$, $a\mathrel{R} b$ means that person $a$ is pointing at person $b$.    A second example   is  the "taller-than" relation, denoted $T\subseteq X\times X$,  where  $a\mathrel{T} b$ means that person $a$ is taller than person $b$.

Typically, we are interested in relations satisfying special properties.  Suppose that $R\subseteq X\times X$ is a relation. Then, we define the following properties:     

```{glossary}

Reflexive
  $R$ is  reflexive provided that  for all $a\in X$, $a\mathrel{R} a$.

Irreflexive
  $R$ is  irreflexive provided that for all $a\in X$,  it is not the case that $a\mathrel{R} a$.

Connected
   $R$ is connected provided that for all $a,b\in X$, $a\mathrel{R} b$ or $b\mathrel{R}  a$ (or both).  A connected relation is also called **complete**.

Symmetric
  $R$ is symmetric provided that for all $a,b\in X$, if $a\mathrel{R}  b$ then  $b\mathrel{R}  a$.

Asymmetric
  $R$ is asymmetric provided that for all $a,b\in X$, if $a\mathrel{R}b$ then it is not the case that $b\mathrel{R}  a$.

Anti-symmetric
  $R$ is anti-symmetric provided that for all $a,b \in X$ if $a\mathrel{R}  b$ and $b\mathrel{R}  a$, then $a=b$.

Transitive
  $R$ is  transitive provided that for all $a,b,c\in X$, if $a\mathrel{R}  b$ and $b\mathrel{R}  c$ then $a\mathrel{R}  c$. 
```

```{note}
As stated, connected implies reflexivity (let $a=b$ in the above definition of connected).  Often,   connected is defined as  follows: for all  *distinct* $a,b\in X$, $a\mathrel{R}  b$ or $b\mathrel{R}  a$.  In what follows, we will use the above stronger definition of connected where connected implies reflexivity.  
```


Recall the example of a relation $R$ that describes people pointing at other people in the room.   If $R$ is reflexive, then this means everyone is pointing at themselves.    If $R$ is irreflexive, then this means that no-one is pointing at themselves.  This example illustrates the fact that irrelexivity is *not* the negation of reflexivity.  That is, there are examples of relations that are neither reflexive nor irreflexive.   If $R$ is complete, then this means that every person in the room is either pointing at somebody or being pointed at.     Symmetry of $R$ means that   every person that is being pointed at is pointing back at the person pointing at them.  Asymmetry of $R$ means that nobody is pointing back at the person pointing at them.  Similar to the relationship between reflexivity and irreflexivity, asymmetry is *not* the negation of symmetry.    Picturing transitivity of the relation $R$ is a bit more complicated.   If the relation $R$ is transitive, then   everyone is pointing at the person that is being pointed to by the person that they are pointing at.  

Suppose that $R\subseteq X\times X$ is a relation.  We will often use the following shorthand to denote elements in the relation: If  $x_1, \ldots, x_n\in X$, then  

$$
x_1\mathrel{R} x_2\mathrel{R}\cdots x_{n-1}\mathrel{R}x_n
$$

means that for all $i=1,\ldots, n-1$, $(x_i,x_{i+1})\in R$ or $(x_i,x_j)\in R$ for all $j< i$ if $R$ is assumed to be transitive  (or $j\le i$ if $R$ is assumed to also be  reflexive).  For example, if $R$ is transitive and reflexive, then  $a\mathrel{R} b\mathrel{R} c$ means that $\{(a,a), (a,b), (b,b), (a,c), (b,c), (c,c)\}\subseteq R$.  


When thinking about relations, it is often helpful to draw a picture of the relation.   Suppose that  $X=\{a,b,c,d\}$ and $R\subseteq X\times X$ is:  

$$
R=\{(a,a), (b,a), (c,d), (a,c), (d,d)\}.
$$

Relations on $X$ can be visualized as follows: Write down all the elements of $X$ and draw an arrow from element $x$ to element $y$ when $(x,y)\in R$: 

```{figure} ./relexample.png
---
height: 200px
name: relexample
---
A directed graph illustrating $R=\{(a,a), (b,a), (c,d), (a,c), (d,d)\}.$
```

<center>

<iframe width="600" height="400" src="https://www.youtube.com/embed/Pg6QEOrcBM8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

</center>

<br />

We conclude this brief introduction with an important property of relations: 

```{glossary}
Cycle 
  Suppose that $R\subseteq X\times X$.  A (simple) cycle in    $R$ is a sequence of distinct elements   $(x_1, x_2,\ldots, x_n)$ such that  $x_i\in X$ for all $i=1, \ldots, n$ and  for all $i=1, \ldots, n-1$, $\ x_i \mathrel{R} x_{i+1}$,  and $x_n\mathrel{R} x_1$.    A relation $R$ is said to be  **acyclic** if there are no cycles. 
```


For example, suppose that $X=\{a,b,c, d\}$ and $R=\{(a,c), (b,a), (b,d), (c, b), (d, c), (d, a)\}$. This relation can be pictured as follows: 

 ```{figure} ./cycles.png
---
height: 200px
name: cycles
---
The relation $R=\{(a,c), (b,a), (b,d), (c, b), (d, c), (d, a)\}$.
```

There are 3 cycles in  $R$: 

1. $(a,c,b)$
2. $(c,b,d)$
3. $(c,b,d,a)$.


## Exercises 

1. Suppose that there are 5 people in a room.  Draw a picture of a situation where the people are pointing at each other and the relation that describes the situation is transitive.  
2. What properties do $\le$, $<$, and $=$ satisfy (assume the relations are defined on the natural numbers $\mathbb{N}$)?
3.  What properties does the "better-than" relation satisfy? 
4. Give an example of a relation $R$ that is not reflexive and not irreflexive.  
5. Prove that a relation $R$ is  transitive and aysmmetric if and only if $R$ is irreflexive.
6. Suppose that $X$ has three elements (i.e., $X=\{a, b, c\}$.  How many cycles can be formed using all the  elements of $X$? 
