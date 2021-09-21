# Functions

A **function** from a set $A$ to a set $B$ is a way of associating elements of $A$ with elements of $B$.  Formally, a function is a  special type of relation:

Function
: A function $f$ from $A$ to $B$ is a binary relation on $A$ and $B$ (i.e., $f\subseteq A\times B$) such that for all $a\in A$, there exists a *unique* $b\in B$ such that $(a,b)\in f$.
We  write $f:A\rightarrow B$ when $f$ is a function, and if $(a,b)\in f$, then write $f(a)=b$.

Suppose that $A=\{1, 2, 3\}$ and $B=\{a,b\}$.  Examples of relations that are functions include: 
1. $f_1=\{(1,a), (2,a), (3,b)\}$.   We write $f_1(1)=a, f_1(2)=a$, and $f_1(3)=b$
2. $f_2=\{(1,a), (2,a), (3,a)\}$.   We write $f_2(1)=a, f_2(2)=a$, and $f_2(3)=a$
3. $f_3=\{(1,a),  (3,b)\}$.  We write $f_3(1)=a$ and $f_3(3)=b$  

An example of a  relation that is not a function is $R=\{(1,a), (1,b), (3,b)\}$. 



When using functions, we will often use the  following terminology and notation. 

Domain/Codomain
: Suppose $f:A\rightarrow B$ is a function.  The set $A$ is called the  **domain** of $f$  and $B$ is called the  **codomain** of $f$.  

Image
: Suppose $f:A\rightarrow B$ is a function.  The image of a set $A'\subseteq A$ is the set:

$$

f(A')=\{b\ |\ b=f(a) \text{ for some }a\in A'\}

$$

Inverse Image
: Suppose that $f:A\rightarrow B$ and that $Y\subseteq B$.   The inverse image of $Y$ is the set  

$$

f^{-1}(Y)=\{x\ |\ x\in A\text{ and } f(x)\in Y\}

$$

Range
: Suppose that $f:A\rightarrow B$.  The range of $f$ function is the image of its domain (i.e., the range is $f(A)$). 

For example, suppose that $A=\{a, b, c, d\}$ and $f:A \rightarrow \mathbb{N}$ is the function where $f(a)=1$, $f(b)=1$, $f(c)=2$ and $f(d)=4$.   Then, we have the following: 

* The domain of $f$ is $A$
* The codomain of $f$ is $\mathbb{N}$
* The range of $f$ is $\{1, 2\}$
* The image of $\{a, b\}$ is $f(\{a, b\})= \{1\}$
* The inverse image of $\{2, 4\}$ is $f^{-1}(\{2,4\})=\{c, d\}$

:::{note} 

In rational choice theory, we will often consider functions with domain and/or codomains that are powersets of a set.  For example, suppose that $X=\{a, b, c\}$.  A function from non-empty subsets of $X$ to non-empty subsets of $X$ is denoted $f:(\wp(X)-\emptyset) \rightarrow (\wp(X)-\emptyset)$.   An example of such a function is: 

```{math}
:label: def_f

\begin{gather} 
f(\{a\}) & =  &  \{b\}\\[2pt]
f(\{b\}) & = & \{b\}\\[2pt]
f(\{c\}) & = & \{c\}\\[2pt]
f(\{a,b\}) & = & \{a\}\\[2pt]
f(\{a,c\}) & = & \{b\}\\[2pt]
f(\{b,c\}) & = & \{b\}\\[2pt]
f(\{a,b,c\}) & = & \{b,c\}\\[2pt]
\end{gather}
```

:::

In many situation, we will need to apply one function to the output of another function.  More formally, when the codomain of a function is the same as the domain of another function, then the functions can be composed to form a new function: 

Composition of functions
: Suppose that $f: A\rightarrow B$ and $g: B\rightarrow C$.  The composition of $f$ with $g$ is the function $(g\circ f):A\rightarrow C$ defined as follows: for all $a\in A$, $g\circ f(a) = g(f(a))$

For example if suppose that $A=\{a, b, c, d\}$ and $f:A \rightarrow \mathbb{N}$ is the function where $f(a)=1$, $f(b)=1$, $f(c)=2$ and $f(d)=4$, and $g$ is the function $g:\mathbb{N}\rightarrow\mathbb{N}$ where for all $n\in\mathbb{N}$, $g(n)=2n+1$.    Then $(g\circ f):A\rightarrow \mathbb{N}$ is the function where: 
* $(g\circ f)(a) = g(f(a))=g(1) = 3$, 
* $(g\circ f)(b) = g(f(b))=g(1) = 3$, 
* $(g\circ f)(c) = g(f(c))=g(2) = 5$, 
* $(g\circ f)(d) = g(f(d))=g(4) = 7$, 

We conclude this brief introduction by defining some important types of functions. 

Surjection
: A function $f:A\rightarrow B$ is a surjection, or onto,  if its range is equal to its codomain.  I.e., $f:A\rightarrow B$ is surjective if and only if for each $b\in B$, there exists an $a\in A$ such that $f(a)=b$

Injection
: A function $f:A\rightarrow B$ is an injection, or 1-1, if distinct elements of the domain produce distinct elements of the codomain.  I.e., $f:A\rightarrow B$ is 1-1 if and only if $a\ne a'$ implies $f(a)\ne f(a')$, or equivalently $f(a)=f(a')$ implies $a=a'$.

Bijection
: A function $f:A\rightarrow B$ is a bijection if it is injective and surjective.  In this case, $f$ is often called a one-to-one correspondence.
 
The following examples illustrate these definitions: 

1. Suppose that $A=\{a, b, c, d\}$, $B=\{1, 2, 3, 4\}$ and $f:A\rightarrow B$ is a function where $f(a)=1, f(b)=1, f(c)=2,$ and $f(d)=3$. Then $f$ is not 1-1 and not onto. 
2. Suppose that $A=\{a, b, c, d\}$, $B=\{1, 2, 3, 4\}$ and $f:A\rightarrow B$ is a function where $f(a)=1, f(b)=2, f(c)=4,$ and $f(d)=3$. Then $f$ is a bijection (i.e., $f$ is 1-1 and  onto. 
3.  Suppose that $A=\{a, b, c\}$, $B=\{1, 2\}$ and $f:A\rightarrow B$ is a function where $f(a)=1, f(b)=1,$ and $f(c)=2$.  Then $f$ is onto but not  1-1. 
4.  Suppose that $A=\{a, b, c\}$, $B=\{1, 2, 3, 4\}$ and $f:A\rightarrow B$ is a function where $f(a)=1, f(b)=2,$ and  $f(c)=3$.  Then $f$ is 1-1 but not not onto. 

## Exercises

1. Consider the function $f$ defined in {eq}`def_f`. Does this function satisfy the following constraint: for all $Y\in\wp(X)-\emptyset$, $f(Y)\subseteq Y$? If so, explain why.  If not, explain why it fails the constraint and find a function that satisfies the constraint. 
:::{admonition} Show answer.
:class: tip, dropdown

The above function does not satisfy this constraint since, for instance, $f(\{a\})=\{b\}\not\subseteq \{a\}$ (we also have that $f(\{a,c\})=\{b\}\not\subseteq \{a,c\}$.  An example of a function that satisfies the above constraint is: 

\begin{gather*}
f(\{a\}) & = & \{a\}\\[2pt]
f(\{b\}) & = & \{b\}\\[2pt]
f(\{c\}) & = & \{c\}\\[2pt]
f(\{a,b\}) & = & \{a\}\\[2pt]
f(\{a,c\}) & = & \{c\}\\[2pt]
f(\{b,c\}) & = & \{b\}\\[2pt]
f(\{a,b,c\}) & = & \{b,c\}\\[2pt]
\end{gather*}

:::
