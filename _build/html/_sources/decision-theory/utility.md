# Utility

A  **utility function** on a set $X$ is a function $u:X\rightarrow\mathbb{R}$, where $\mathbb{R}$ is the set of real numbers.   Utility functions are often used to *represent* preferences. 


Representing a relation 
: Suppose that $R\subseteq X\times X$ is a relation on $X$.   We say that  $R$ is **representable by a utility function** when there is a $u:X\rightarrow \mathbb{R}$ such that for all $x,y\in X$, $x R y$ if and only if $u(x)\ge u(y)$.
 
The key fact is that all rational weak preferences are representable by a utility function.  

:::{admonition} Theorem
:class: observation

Suppose that  $X$ is a finite set.   A relation $R\subseteq X\times X$ is a rational weak preference on $X$ if and only if $R$ is representable by a utility function. 

:::

:::{admonition} Show proof.
:class: tip, dropdown

We leave it to the reader to show that if $R$ is representable by a utility function, then $R$ is transitive and complete.  

We prove the following: For all $n\in\mathbb{N}$, any preference relation $R$ on a set of size $n$ is representable by a utility function $u_R:X\rightarrow\mathbb{R}$.     The proof is by induction on the size of the set of objects $X$.   The base case is when $|X|=1$. In this case,  $X=\{a\}$ for some object $a$.  If $R$ is a transitive and complete ordering on $X$, then $R=\{(a,a)\}$.     Then, $u_R(a)=0$ (any real number would work here) clearly represents $R$.    The induction hypothesis is: if $|X|=n$, then any preference ordering on $X$ is representable.    Suppose that $|X|=n+1$ and $R$ is a preference ordering on $X$.  Then, $X=X'\cup \{a\}$ for some object $a$, where $|X'|=n$.  Note that the *restriction* of $R$ to $X'$, denoted $R'$, is a preference ordering on $X'$ (If $R$ is a relation on $X$ and $Y\subseteq X$, then $R_Y\subseteq Y\times Y$ is the restriction of $R$ to $Y$ provided for all $a,b\in Y$, $a\mathrel{R_Y} b$ iff $a\mathrel{R} b$).  By the induction hypothesis, $R'$ is representable by a utility function $u_{R'}:X'\rightarrow \mathbb{R}$.  We will show how to extend $u_{R'}$ to a utility function $u_{R}:X\rightarrow \mathbb{R}$ that represents $R$.  For all $b\in X'$, let $u_R(b)=u_{R'}(b)$.  For the object $a$ (the unique object in $X$ but not in $X'$), there are four cases: 

1. $a P_R b$ for all $b\in X'$.   Let $u_R(a)=\max\{u_{R'}(b)\ |\ b\in X'\}+1$. 
2. $b P_R a$ for all $b\in X'$.  Let $u_R(a)=\min\{u_{R'}(b)\ |\ b\in X'\}-1$. 
3. $a I_R b$ for some $b\in X'$.    Let $u_R(a)=u_{R'}(b)$. 
4. There are $b_1, b_2\in X'$ such that $b_1 P_R a P_R b_2$.  Let $u_R(a)=\frac{u_{R'}(b_1)+ u_{R'}(b_2)}{2}$.

Then, it is straightforward to show that $u_R:X\rightarrow\mathbb{R}$ represents $R$ (the details are left to the reader). 

:::

The above proof can be extended to relations on infinite sets $X$.   However, additional technical assumptions are needed.   It is beyond the scope of this article to discuss these technicalities here. 

It is not hard to see that if a preference relation is representable by a utility function, then it is representable by  *infinitely* many different utility functions.  To make this more precise, say that a  function $f:\mathbb{R}\rightarrow\mathbb{R}$ is  monotone provided that for all $r, r'\in\mathbb{R}$, if $r\ge  r'$ then $f(r)\ge  f(r')$. 
 

:::{admonition} Fact
:class: observation

Suppose that $R$ is representable by a utility function $u_R$ and $f:\mathbb{R}\rightarrow\mathbb{R}$ is a monotone function.   Then, $f\circ u_R$ also represents $R$.  

:::

:::{admonition} Show proof.
:class: tip, dropdown

The proof is immediate from the definitions.   Suppose that $a,b\in X$.   Then,  $aR b$ iff $u_R(a)\le u_R(b)$ (since $u$ represents $R$) iff $f(u_R(a))\ge f(u_R(b))$ (since $f$ is monotone).  

:::
 
## Exercises

1. Suppose that $X=\{a,b,c,d\}$ and $R$ is the following preference relation: 
$b P_R a I_R c P_R d$.  Find two utility functions that represent this preference relation. 