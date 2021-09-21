# Choice Functions

 
In this section, we  introduce some notation to describe a decision maker's choices. Suppose that  $X$ is a finite set and    $\mathcal{P}(X)=\{Y\ |\ Y\ne\emptyset\text{ and } Y\subseteq X\}$ is the set of non-empty subsets of $X$.    Elements of $\mathcal{P}(X)$ are called  **menus**.   A choice function identifies the elements form a menu (i.e., a finite set of objects) that are "choice-worthy".          

Choice Function
: Suppose that $X$ is a finite set.   A  **choice function** on $X$ is a function $C:\mathcal{P}(X)\rightarrow \mathcal{P}(X)$ such that for all $S\in \mathcal{P}(X)$, $C(S)\subseteq S$. 

:::{admonition} Actual vs. Hypothetical Choices

The mathematical formalism does not specify whether a choice function $C$ represents a decision maker's  *actual* or  *hypothetical* choice.  If it is the actual choices, then $C$ is a record of the decision maker's observed choice behavior.  If it is the hypothetical choices, then $C$ represents what the decision maker  *would* chose if given the opportunity to select an element from a given menu. 

:::

Typically, it is assumed that the decision maker's choices are guided by some underlying  preference relation (together with the decision maker's beliefs).   The key idea is that is that a decision maker will choose an element of a menu $S$ that is "best" according to her preference.  There are two ways to define the "best" element of a set with respect to some relation $B$ on that set.   Suppose that $X$ is a set, $B\subseteq X\times X$ is a relation on $X$, and $S\subseteq X$.  

1. $x$ is a **maximum** element of $S$ with respect to $B$ provided that for all $y\in S$, $x\mathrel{B} y$
2. $x$ is a **maximal** element of $S$ with respect to $B$ provided that there is no $y\in S$ such that $y \mathrel{B} x$


Derived Choice Function
: Let $R$ be a relation on a finite set $X$.   The choice function derived from the relation $R$ is $C_R:\mathcal{P}(X)\rightarrow\mathcal{P}(X)$ is defined as follows: for all $S\in\mathcal{P}(X)$, 

$$
C_R(S)=\{y\ |\ \text{$y\in S$ and there is no $x\in S$ such that $x\mathrel{R} y$}\}
$$


That is, for a relation $R$ on $X$, the derived choice function $C_R$ selects the maximal elements of $S$. 

The above definition can be applied to *any* relation on a set $X$.  In general, given an arbitrary relation $R$ on $X$, $C_R$ many not necessarily be a  *choice* function.   This would happen when there is a finite subset $Y\subseteq X$ such that $C_R(Y)=\emptyset$.  The following Lemma states precisely when a function derived from a relation is a choice function.  
 
:::{admonition} Lemma 1
:class: observation

Suppose that $X$ is finite.  A binary relation $R\subseteq X\times X$ is acyclic if and only if $C_R$ is a choice function. 

:::

:::{admonition} Show proof.
:class: tip, dropdown

Suppose that $R\subseteq X\times X$ is acyclic.  By definition, for any nonempty set $S\in \mathcal{P}(X)$, $C_R(S)\subseteq S$.   We must show $C_R(S)\ne \emptyset$.   Suppose that $C_R(S)=\emptyset$.    Choose an element $x_0\in S$.  Since $C_R(S)=\emptyset$, there is an element $x_1\in S$ such that $x_1\mathrel{R} x$.   Again, since $C_R(S)=\emptyset$ there must be some element $x_2\in S$ such that $x_2\mathrel{R} x_1$.   Since $R$ is acyclic, we must have $x_2\ne x$ (otherwise,  $x\mathrel{R} x_1\mathrel{R} x$ is a cycle).  Continue in this manner selecting elements of $S$.  Since $S$ is finite, eventually all elements of $S$ are selected.   That is, we have $S=\{x_0,x_1,x_2,\ldots, x_n\}$ and 

$$
x_n\mathrel{R} x_{n-1}\mathrel{R}\cdots x_2\mathrel{R} x_1\mathrel{R} x_0
$$

Since $c_R(S)=\emptyset$ there must be some element $x\in S$ such that $x\mathrel{R} x_n$.  Thus, $x=x_i$ for some $i=0,\ldots, n$, which implies $R$ has a cycle.   This contradicts the assumption that $C_R(S)=\emptyset$.  Hence $C_R(S)\ne\emptyset$. 
 
Suppose that $C_R$ is a choice function.   This means that for all $S\in\mathcal{P}(X)$, $C_R(S)\ne\emptyset$.    Suppose that $R$ is not acyclic.  Then, there is a set of distinct elements $x_1,x_2,\ldots, x_n\in S$ such that 

$$
x_1\mathrel{R} x_2\mathrel{R}\cdots x_{n-1}\mathrel{R} x_n\mathrel{R} x_1.
$$

But this  means that $C_R(\{x_1,\ldots, x_n\})=\emptyset$. (The above cycle means that there is no maximal element of $\{x_1,\ldots, x_n\}$.)  This contradicts the assumption that $C_R$ is a choice function.   Thus, $R$ is acyclic. 

:::

An immediate corollary is that if $(P, I)$ is a rational preference  on $X$, then $C_P$ is a choice function.


Rationalizable Choice Functions
: A choice function $C:\mathcal{P}(X)\rightarrow \mathcal{P}(X)$ is  **rationalizable** if there is a rational preference  $(P, I)$ on $X$ such that $C=C_P$.

Not every choice function is rationalizable (you are asked to find one in the exercises).   There are two key properties that completely characterize rationalizable choice functions. Suppose that $C$ is a choice function on $X$.  We say that $C$ satisfies: 

1. **Sen's property** $\mathbf{\alpha}$ provided that  for all $A, B\subseteq X$, for all $x\in X$,  if $x\in B\subseteq A$ and $x\in C(A)$, then $x\in C(B)$ 

2. **Sen's property**  $\mathbf{\beta}$ provided that for all $A, B, \subseteq X$, for all $x,y\in X$ if $x,y\in C(A)$, $A\subseteq B$ and $y\in C(B)$, then $x\in C(B)$.  


The first result is that Sen's $\alpha$ and $\beta$ are together equivalent to a single axiom knowns as the *weak axiom of revealed preference* (WARP).   Suppose that $C$ is a choice function on $X$.  We say that $C$ satisfies:

3. **Weak Axiom of Revealed Preference** (also known as WARP or Houthakker's Axiom) (WARP)} provided that for all $A, B, \subseteq X$, for all $x,y\in X$,  if $x$ and $y$ are both contained in $A$ and $B$ and if $x\in C(A)$ and $y\in C(B)$ then $x\in C(B)$.

:::{admonition} Lemma 2
:class: observation

A choice function $C$ satisfies WARP if and only if $C$ satisfies Sen's properties $\alpha$ and $\beta$.  

:::

:::{admonition} Show proof.
:class: tip, dropdown
 
Suppose that $C$ satisfies WARP.    We must show $C$ satisfies Sen's $\alpha$ and $\beta$: 
 
* $C$ satisfies  Sen's $\alpha$: Suppose that $x\in X$ with  $x\in B\subseteq A\subseteq X$ and $x\in C(A)$.     Suppose that $x\not\in C(B)$.   Then there is some $y\in B$ such that $y\in C(B)$ and $y\ne x$. Since $y\in B$ and $B\subseteq A$, we have $y\in A$.   Hence, $x$ and $y$ are in both $A$ and $B$.   By the WARP axiom, since $x\in C(A)$ and $y\in C(B)$, we must have $x\in C(B)$.    This contradicts the assumption that $x\not\in C(B)$.     Thus, $x\in c(B)$, as desired. 
 
* $C$ satisfies  Sen's $\beta$: Suppose that $x,y\in X$ with $x,y\in C(A)$, $A\subseteq B\subseteq X$ and $y\in C(B)$.  Since $C(A)\subseteq A$, we have $x, y\in A$; and since $A\subseteq B$, we have $x, y\in B$.   Thus, $x$ and $y$ are in both $A$ and $B$.  By the WARP axiom, since $x\in C(A)$ and $y\in C(B)$, we must have $x\in C(B)$, as desired. 

Now, suppose that $C$ satisfies Sen's $\alpha$ and $\beta$.   We must show that $C$ satisfies WARP. Suppose that     $x,y\in A\cap B$,  $x\in C(A)$ and $y\in C(B)$.   We must show that $x\in C(B)$.   Since, $A\cap B\subseteq B$ and $y\in C(B)$, by Sen's $\alpha$, $y\in C(A\cap B)$.  Similarly, since $A\cap B\subseteq A$ and $x\in C(A)$, by Sen's $\alpha$, $x\in C(A\cap B)$.  Finally, Since $x, y\in C(A\cap B)$, $A\cap B\subseteq B$ and $y\in C(B)$, by Sen's $\beta$, we have that $x\in C(B)$, as desired. 

:::

The main result of this section is the revelation theorem showing that WARP is equivalent to rationalizability. 


:::{admonition} Theorem
:class: observation
$C$ satisfies WARP if and only if $C$ is rationalizable.  

:::

:::{admonition} Show proof.
:class: tip, dropdown

Suppose $C$ is a choice function on $X$, and that $C$ is rationalizable.  Then there is a rational preference  $(P, I)$ such that $C=C_P$.   We must show that $C$ satisfies WARP.   Suppose that $A, B\subseteq X$ and $x,y\in A\cap B$,  $x\in C(A)$ and $y\in C(B)$.   We must show that $x\in C(B)$.   Since $C=C_P$, we have that $x$ is a maximal element in $A$ with respect to $P$ and that $y$ is a maximal element in $B$ with respect to $P$.    This means that there is no $z\in A$ such that $z P x$ and there is no $z\in B$ such that $z P y$.    Suppose that $w\in B$.   We will show that not-$w P x$.    Since $w\in B$ and $y$ is maximal in $B$ with respect to $P$, we have that not-$w P y$.   Since $(P, I)$ is complete, this means that $y P w$ or $y I w$ (i.e, $y R_P w$).   Furthermore, since $y\in A$ and $x$ is maximal in $A$ with respect to $P$, we have that not-$y P x$.   Since $(P, I)$ is complete, this means that either $x P y$ or $x I y$ (i.e., $x R_P y$).  Since $R_P$ is transitive and  $x \mathrel{R_P} y$ and $y \mathrel{R_P} w$,  we have that $x \mathrel{R_P} w$.   This implies that not-$wPx$.  That is, $x$ is maximal in $B$ with respect to $P$, i.e., $x\in C(B)$.

Suppose that $C$ satisfies WARP.   Then by Lemma 2, $C$ satisfies Sen's $\alpha$ and $\beta$.  Define a relation $R_C\subseteq X\times X$ as follows: for all $x,y\in X$, 

$$
x\mathrel{R_C} y \text{ if and only if } x\in C(\{x,y\})
$$

We must show that 1. $R_C$ is a rational weak preference relation and 2. for all $S\in\mathcal{P}(X)$, $C(S)=C_{P_C}(S)$, where $P_C$ is the strict preference relation derived from $R_C$.   To see that 1. holds: 

$R_C$ is connected:   For any $x,y\in X$, since $C(\{x,y\})$ is non-empty we have that  $C(\{x,y\})=\{x\}$, $C(\{x,y\})=\{y\}$ or $C(\{x,y\})=\{x,y\}$.  Thus, either $x \mathrel{R_C} y$ or $y \mathrel{R_C} x$ (or both). 

$R_C$ is transitive: Suppose that $x \mathrel{R_C} y$ and $y  \mathrel{R_C} z$.   Then,  $x\in C(\{x,y\})$ and $y\in C(\{y, z\})$.   We  must show that $x\mathrel{R_C} z$; that is,  $x\in C(\{x,z\})$.    By Sen's $\alpha$, if $x\in C(\{x,y,z\})$, then $x\in C(\{x,z\})$.  Thus, if we show that $x\in C(\{x,y,z\})$, then we are done.   There are three cases: 

1.   Suppose that $C(\{x,y,z\})=\{y\}$.  By Sen's $\alpha$, since $\{x,y\}\subseteq \{x,y,z\}$ and $y\in C(\{x,y,z\})$ we must have $y\in C(\{x,y\})$.   Thus, $C(\{x,y\})=\{x,y\}$.  By Sen's $\beta$, this implies that $x\in C(\{x,y,z\})$ (this follows since $\{x,y\}\subseteq \{x,y,z\}$, $x,y\in C(\{x,y\})$ and $y\in C(\{x,y,z\})$).   This contradicts the assumption that $C(\{x,y,z\})=\{y\}$.   Thus, $C(\{x,y,z\}\ne\{y\}$.    
2. A similar argument shows that $C(\{x,y,z\})\ne\{z\}$.  
3. Suppose that $C(\{x,y,z\})=\{y,z\}$.  Then, $y\in C(\{x,y,z\})$, and, as above, by Sen's $\alpha$, we have $C(\{x,y\})=\{x,y\}$.   This implies, by Sen's $\beta$, that $x\in C(\{x,y,z\})$, which contradicts that assumption that $C(\{x,y,z\})=\{y,z\}$.  

Hence, $x\in C(\{x,y,z\}$.   By Sen's $\alpha$, since $\{x,z\}\subseteq \{x,y,z\}$,  we have $x\in C(\{x,z\})$.   That is, $x\mathrel{R_C} z$.   This completes the proof that $R_C$ is transitive. 

Let $P_C$   be the strict preference  relation derived from $R_C$.  Suppose that $S\in\mathcal{P}(X)$.   First of all, if $S$ is a singleton (i.e., $S=\{x\}$ for some $x\in X$), then by definition $C(S)=S=C_{P_C}(S)$.   Thus, in what follows we assume that $S$ has at least two elements.    We must show that $C(S)=C_{P_C}(S)$.  We first show that $C(S)\subseteq C_{P_C}(S)$.  Suppose that  $x\in C(S)$.  We must show that $x\in C_{P_C}(S)$.  Let $y\in S$.  We must show that not-$y \mathrel{P_C} x$.   Since $R_C$ is connected, this is equivalent to showing that $x\mathrel{R_C} y$.  Since $\{x,y\}\subseteq S$ and $x\in C(S)$, by Sen's $\alpha$, we have $x\in C(\{x,y\})$.   Thus, $x\mathrel{R_C} y$; and so, not-$y\mathrel{P_C} x$, which implies that $x\in C_{P_C}(S)$.  Next, we show that $C_{P_C}(S)\subseteq C(S)$. Suppose that $x\in C_{P_C}(S)$.  Suppose that $x\not\in C(S)$.  Then there is some $y\ne x$ such that $y\in C(S)$.  By Sen's $\alpha$, this implies that $y\in C(\{x,y\})$.  Furthermore, if $C(\{x,y\})=\{x,y\}$, then, by Sen's $\beta$, $x\in C(S)$.   This contradicts the assumption that $x\not\in C(S)$.   Thus, $C(\{x,y\})=\{y\}$.  By definition, this means that $y\mathrel{R_C} x$ but not-$x \mathrel{R_C} y$; i.e., $y P_C x$.    This contradicts the assumption that $x\in C_{P_C}(S)$.  Thus, $x\in C(S)$, as desired. 

:::




## Practice Exercises

1. Give an example of a choice function that is not rationalizable.  
2.  Give an example of a choice function satisfying Sen's $\alpha$ but not Sen's $\beta$. 
3. Give an example of a choice function satisfying Sen's $\beta$ but not Sen's $\alpha$.
4. Give and example of a choice function that does not satisfy Sen's $\alpha$ and does not satisfy Sen's $\beta$.
5. Give and example of a choice function satisfying both Sen's $\alpha$ and $\beta$.   
6. Suppose that $X$ is a finite set and $C:\mathcal{P}(X)\rightarrow\mathcal{P}(X)$ is a choice function.     Consider the following two alternative ways to define a preference ordering from the choice function $C$:  
1. For all $x,y\in X$, $x \mathrel{R_C^1} y$ if and only if there is a set $S\in \mathcal{P}(X)$ such that $x,y\in S$ and $x\in c(S)$.  
2. For all $x,y\in X$,  $x\mathrel{P_C^2} y$ if and only if  $\{x\}= C(\{x,y\})$ and  $x\mathrel{I_C^2} y$ if and only if $C(\{x,y\})=\{x,y\}$.   Then, define $x \mathrel{R_C^2} y$ if and only if $x\mathrel{P_C^2} y$ or $x\mathrel{I_C^2} y$.  Then, prove that if $C$ satisfies WARP, then for all $x,y\in X$, the following are equivalent: 
    1. $x \mathrel{R_C} y$
    2. $x\mathrel{R_C^1} y$
    3. $x\mathrel{R_C^2}  y$
