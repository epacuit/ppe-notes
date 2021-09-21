# Preferences

Preferences in rational choice theory are  understood comparatively.  So, if a decision maker "prefers red wine", then this means that the decision maker prefers red wine to the other available alternatives (e.g., red wine more than white wine). 

A central concept in many models of rational choice is a decision maker's **strict preference** over a set of objects.   A decision maker's strict preference over a set $X$ is represented as a relation $P\subseteq X\times X$.  The underlying idea is that if $P$ represents the decision maker's strict preference and $xPy$ (i.e., the decision maker strictly prefers $x$ to $y$), then the decision maker would pay some non-zero amount money to trade $y$ for $x$.  Under this interpretation, it is clear that a minimal constraint is that a strict preference is asymmetric: 

* $P$ is asymmetric: for all $x, y\in X$, if $x P y$, then it is not the case that $y P x$ (written not-$y P x$).  

It is clearly irrational for a decision maker to pay some money to trade $y$ for $x$ *and*, at the same time, be willing to pay additional money to trade $x$ back for $y$.  Note that since asymmetry implies irreflexivity, any strict preference relation is  irreflexive: for all $x$, it is not the case that $x P x$.  

:::{admonition} Example

Examples of asymmetric strict preferences on the set $X=\{a, b, c\}$ include: 
1. $\{(a, b), (a, c)\}$: $a$ is strictly preferred to $b$ and strictly preferred to $c$, but there is no strict preference one way or the other between $b$ and $c$. 
2. $\{(a, b), (b, c), (a, c)\}$: $a$ is strictly preferred to $b$ and strictly preferred to $c$, and $b$ is strictly preferred to $c$. 
3. $\{(a, b), (b, c)\}$: $a$ is strictly preferred to $b$ and $b$ is strictly preferred to $c$, but there is no strict preference one way or the other between $a$ and $c$. 
4. $\{(a, b), (b, c), (c, a)\}$: $a$ is strictly preferred to $b$, $b$ is strictly preferred to $c$, and $c$ is strictly preferred to $a$. 

:::

In the first example, the decision maker does not have a preference over all the elements of $X$. In particular, the decision maker does not have a strict preference one way or the other between $b$ and $c$.   That is, it is not the case that $b P c$  and  it is not the case that $c P b$. 

Suppose that $P$ is an asymmetric relation on $X$.  Define a relation $\simeq \subseteq X \times X$ as follows: For all $x, y\in X$, 

$$
x \simeq y\text{ if and only if not-}x P y\text{ and not-}y P x.
$$

It is not hard to see that for any asymmetric relation $P$ on $X$, 
1. exactly one of $x P y$, $y P x$, and $x\simeq y$ is true.  
2. $\simeq$ is symmetric (for all $x, y \in X$, if $x \simeq y$ then $y\simeq x$) and reflexive (for all $x\in X$, $x \simeq x$). 

In many situations, it is convenient to decompose the $\simeq$ relation further.  Given a strict preference $P$  on $X$ for a decision maker and items $x, y\in X$, there are two reasons why $x \simeq y$:  

1. The decision maker is *indifferent* between $x$ and $y$.   In this case, we write $x I y$.
2. The decision maker *cannot compare*  $x$ and $y$. In this case, we write $x N y$. 

```{margin} 

:::{admonition} Notation
:class: warning

There is no settled notation for strict/weak preferences and indifference.   In some texts, you might see $\succ$ instead of $P$ representing a strict preference, $\succeq$ instead of $R$ representing a weak preference,  and $\sim $ instead of $I$ representing an indifference relation.  

:::

```

Thus, there are four distinct ways a decision maker can compare $x$ and $y$: 

1. $x P y$: the decision maker *strictly prefers* $x$  to $y$. 
2. $y P x$: the decision maker *strictly prefers* $y$  to $x$. 
3. $x I y$: the decision maker is *indifferent* between $x$ and $y$.  
4. $x N y$: the decision maker *cannot compare* $x$ and $y$.  

Putting everything together, a decision maker's preferences on  $X$ is represented by three relations $P\subseteq X\times X$, $I\subseteq X\times X$ and $N\subseteq X\times X$ satisfying the following minimal constraints:     

1. For all $x, y \in X$, exactly one of $x P y$, $yP x$, $x I y$ and $x N y$ is true. 
2. $P$ is asymmetric
3. $I$ is reflexive and symmetric. 
4. $N$ is symmetric. 

A more substantive assumption is that a decision maker's strict preference is **transitive**: 

* $P$ is transitive: for all $x, y, z\in X$ if $xPy$ and $yP z$, then $x P z$. 

```{margin} 
See A. Tversky's classic paper [Intransitivity of Preferences](https://pages.ucsd.edu/~mckenzie/Tversky1969PsychReview.pdf) and M. Regenwetter, J. Dana,  and C. P.  Davis-Stober, [Transitivity of Preferences](https://doi.apa.org/doiLanding?doi=10.1037%2Fa0021150) for a crtique of these experiments.
``` 
While there are some experiments that raise doubts about whether transtivity is a good description of people's strict preferences, it is standard in rational choice theory to assume that a decision maker's strict preference is transitive.   

Assuming that indifference ($I$) and incomparability ($N$) are transitive is more controversial: 

* $I$ is transitive: For all $x,y, z\in X$, if $x I y$ and $y I z$, then $x I z$.  
    You may be indifferent between a curry with $x$ amount of cayenne pepper, and a curry with $x$ plus one particle of cayenne pepper for any amount $x$. But you are not indifferent between a curry with no cayenne pepper and one with 1 pound of cayenne pepper in  it!

* $N$ is transitive: for all $x,y, z\in X$, if $x N y$ and $y N z$, then $x N z$.   
    You may not be able to compare having a job as a professor with having a job as a programmer.   Furthermore, you cannot compare having a job as a programmer with having a job as a professor with an extra \$1,000.   However, you do strictly prefer having a job as a professor with an extra \$1,000 to having a job as a professor. 


There are two ways that a decision maker's strict preference $P$ on $X$  may fail transitivity: 

1. The decision maker lacks a strict preference: There are $x, y, z \in X$ such that $x P y$ and $y P z$, but  $x N z$ (i.e., $x$ and $z$ are incomparable). 
2. There is a cycle in the decision maker's preferences: There are $x, y, z \in X$ such that $x P y$,  $y P z$, and $z P x$. 

To justify the assumption that a strict preference relation is transtive, we need to argue that there is something irrational about both of the above situations. We start with the second situation.   The first situation is ruled out with an additional assumption about a decision maker's preferences.

## Ruling out cycles in strict preferences 

A **cycle** (of length 3) in a relation $P\subseteq X\times X$ is a sequence $(x, y, z)$ where $x P y$, $y P z$ and $z P x$.   There are two main arguments that rule out preferences with cycles (as in situation 2).   

The first argument is that we cannot make sense of a decision maker with a strict preference that has a cycle: 
 
> I do not think we can clearly say what should convince us that a [person] at a given time (without change of mind) preferred $a$ to $b$, $b$ to $c$ and $c$ to $a$. The reason for our difficulty is that we cannot make good sense of an attribution of preference except against a background of coherent attitudes...My point is that if we are intelligibly to attribute attitudes and beliefs, or usefully to describe motions as behaviour, then we are committed to finding, in the pattern of behaviour, belief, and desire, a large degree of rationality and consistency.  (D. Davidson, [*Philosophy as psychology*](https://link.springer.com/chapter/10.1007/978-1-349-02110-9_2), 1974: p. 237)

The second argument that rules out cycles in a decision maker's strict preference is the so-called Money-Pump Argument.   **The Money-Pump Argument** is a though experiment that shows that a decision maker with cyclic strict preferences can end up paying an indefinite amount of money without gaining anything new.  For an item $x\in X$, we write $(x, \$u)$ to mean that the decision maker has $x$ and $\$u$ and write $(x, -\$u)$ to mean that the decision maker has $x$ and pays $\$u$. There are three key assumptions about a decision maker's strict preference $P$ and the decision maker's opinion about money: 

1. If $x P y$, then the decision maker will always take $x$ when $y$ is the only alternative. 
2. If $x P y$, then there is some $v > 0$ such that for all $u$, $(x, -\$u) P y$ if and only if $0\le u\le v$.  
3. The items and money are *separable* and the decision maker prefers more money to less: For all $x\in X$ and $w,z$, we have that  $(x,\$w) P (x,\$z$) if and only if $w>z$;   and, for all $x, y \in X$ and $w$,  if $x P y$, then $(x,\$w) P (y,\$w)$.

Suppose that Ann has a cycle in her strict preferences over the set $\{r, w, b\}$:  $r P w$, $w P b$, and $b P r$.  Furthermore, in line with assumption 2, assume that Ann has the following strict preferences: $(r, -\$1) P w$, $(w,-\$1) P b$, and $(b, -\$1) P r$.  Suppose that Ann is offered a chance to trade $r$ for $b$ plus she must pay $\$1$.  Since $(b,-\$1) P r$, she will accept that offer.   So she now has $b$ and has paid $\$1$.   Now, suppose she is offered a chance to trade $w$ for $b$ plus she must pay $\$1$. Since  $(w - \$1) P b$, she will accept that offer.  So, she now has $w$ and has paid $\$2$.  Suppose she is offered a chance to trade $w$ for $r$ plus she must pay $\$1$.  Since  $(r, -\$1) P w$, she will accept that offer.   Now she has $r$ and has paid $\$3$.  But she started with $r$ and paying $\$0$ and ended up with $r$ and paying $\$3$!  By assumption 3, this is a strictly worse situation for Ann: $(r, \$0) P (r, -\$3)$.  But it does not end here, Ann will contiue to accept the offers resulting in her paying an indefinite amout of money.   Ann can avoid such a money-pump argument by ensuring that there are no cycles in her strict preferences. 

 
## Ruling out noncomparabilities 

Another key assumption in a rational choice model is that decision makers are opinionated about *all* the objects of choice. That is, there are no objects $x$ and $y$ such that $x$ and $y$ are incomparable for the decision maker.  

* Completeness: For all $x, y\in X$,  exactly one of $x P y$, $yP x$ or $x I y$ is true. I.e., for all $x, y\in X$, not-$x N y$.  

Completeness is a common simplifying assumption in many ratioanl chcoice models.  However, assuming completeness does not have the same type of justification as transitivity: 

> [O]f all the axioms of utility theory, the completeness axiom is perhaps the most questionable.   Like others, it is inaccurate as a description of real life; but unlike them we find it hard to accept even from the normative viewpoint. (Aumann, [Utility Theory without the Completeness Axiom](https://www.jstor.org/stable/1909888?seq=1#metadata_info_tab_contents), Econometrica, 1962)


## Rational preferences

We start with some definitions: 

Connected relation
: A relation $R\subseteq X\times X$ is connected if for all $x, y\in X$ either $x R y$ or $y R x$.  

Strict weak order
: A strict weak order on a set $X$ is a transitive and asymmetric relation on $X$.

Equivalence relation
: An equivalence relation on $X$ is a reflexive, transitive and symmetric relation on $X$. 

In a rational choice model, a standard assumption is that a decision maker's preferences satisfies  completeness and transitivity (for both  strict preference and indifference). 

Rational preference 
:  A rational preference on a set $X$ is a pair $(P, I)$  where $P$ is a strict weak order on $X$,  $I$ is an equivalence relation on $X$, and completeness is satisfied: for all $x, y\in X$, exactly one of $x P y$, $y P x$ or $x I y$ is true.  

Note that for a rational preference $(P, I)$, there is no $x, y\in X$ such that $x P y $ and $x I y$ (i.e., a rational agent cannot both be indifferent between $x$ and $y$ and strictly prefer $x$ to $y$). Using this fact and transitivity of $P$ and $I$, we have the following two key properties: 

1. For all $x, y, z\in X$, if $x P y$ and $y I z$, then $x P z$. 
2. For all $x, y, z\in X$, if $x I y$ and $y P z$, then $x P z$. 

:::{admonition} Show proof.
:class: tip, dropdown

We prove 1 and leave 2 as an exercise.    Suppose that $(P, I)$ is a rational preference and for $x, y, z\in X$ we have that $x P y$ and $y I z$.   By completeness, exactly one of  $x P z$, $z P x$ or $x I z$ is true.    We show that both $z P x$ and $x I z$ lead to a contradiction leaving only  $x P z$, as desired.  If $z P x$, then since $x P y$ and $P$ is transitive, we have that $z P y$.  Since $I$ is symmetric and $y I z$, we have that $z I y$.  This is a contradiction since $z P y$ and $z I y$ cannot  both be true.  If $z I x$, then since $y I z$ and $I$ is transitive, we have that $y I x$.  Since $I$ is symmetric, we have that $x I y$.  This is a contradiction since $x P y$ and  $x I y$ cannot  both be true.  

:::

In many situations it is natural to assume that the decision maker is not indifferent about any of the items in a set $X$ (i.e., the decision maker's indifference relation is empty).   In such a case, we can represent a decision maker by a single relation $P$ (the decision maker's strict preference relation) satisfying the following properties: 

Linear order
: A linear order on a set $X$ is a transitive, connected and asymmetric relation on $X$.



### Weak preference relation

Even if a decision maker is indifferent between some items, we can represent the decision maker's rational preferences by a single relations. 

Weak preference relation
: Suppose that $(P, I)$ is a rational preference on $X$.   The weak preference relation based on $(P, I)$ is defined as follows:  $R\subseteq X\times X$, where $x R y$ if and only if $x P y$  or $x I y$.  If $x R y$, we say that "$x$ is weakly preferred to $y$". 

It is not hard to see that if $R$ is a weak preference relation induced by a rational preference $(P, I)$, then $R$ is a reflexive, transitive and connected relation.   

We can also start with a weak preference relation and induce strict preference and an indifference relation. 

Rational weak preference
: Suppose that $X$ is a set.  A rational weak preference  on $X$ is a relation $R\subseteq X\times X$ that is reflexive, transitive and connected. 

A key observation is that rational weak preferences can be used to represent a decision maker's rational preferences. 

:::{admonition} Observation
:class: observation

Suppose that $R\subseteq X\times X$ is a reflexive and transitive relation. Define relations $P_R\subseteq X\times X$ and $I_R\subseteq X \times X$ as follows: 
* $x P_R y$ if and only if $x R y$ and not-$y R x$.
* $x I_R y$ if and only if $x R y$ and $y R x$.

Then, $(P_R, I_R)$ is a rational preference on $X$. 
:::

:::{admonition} Show proof.
:class: tip, dropdown

Clearly, there are no $x, y\in X$ such that $x P_R y$ and $x I_R y$.  

We prove that $P_R$ is transitive: Suppose that $x P_R y$ and $y P_R z$.   Then $x R y$,  not-$yRx$ and  $y R z$ and not-$zRy$.  Since $R$ is transitive, we have that $x R z$.  Suppose that $z Rx$.  Then since $R$ is transitive and $x R y$, we have that $zRy$, which contradicts not-$zRy$.  Hence, $xRz$ and not-$zRx$, and so $x P_R z$.  The proof that $P_R$ is asymmetric is left as an exercise. 

The proof that $I_R$ is an equivalence relation is left as an exercise.  

Finally, we show that $(P_R, I_R)$ satisfies completeness.  Suppose that $x, y\in X$.  Since $R$ is connected, we have either $xRy$ or $yRx$.   There are three possibilities: 

1. $xRy$ and not-$yRx$. In this case, $x P_R y$.
2. not-$xRy$ and $yRx$. In this case, $y P_R x$.
1. $xRy$ and $yRx$. In this case, $x I_R y$.

:::


## Exercises

1. Suppose that $(P, I)$ is a rational preference on $X$ and $R$ is the induced weak preference relation. 
    1. $R$ is reflexive, transitive and connected. 
    2. For all $x, y\in X$, if not-$x P y$, then $yRx$. 
    3. For all $x, y\in X$, if not-$x R y$, then $yPx$. 
    4. For all $x, y, z\in X$, if $x R y$ and $y P z$, then $x P z$. 
    5. For all $x, y, z\in X$, if $x P y$ and $y R z$, then $x P z$. 
2. There is an alternative way to characterize rational preferences  which is used in some texts.  A relation $R\subseteq X\times X$ is **negatively transitive** provided  for all $x, y, z\in X$, if not-$x R y$  and  not-$y R  z$, then   not-$x R z$. 

    1. Prove that a relation $R$ is negatively transitive if, and only if, for all $x, y\in X$, if $x R y$, then for all $z\in X$, either $x R z$ or $z R y$. 

    2.  Suppose that $R'$ is negatively transitive and irreflexive.   Then, define $R$ by $x R  y$ if and only if it is not the case that $y R' x$ and $x I y$ if and only if neither $x R' y$ nor $y R' x$.    Then, $R$ is complete and transitive.  Furthermore, if we define $P_R$ from $R$ as in question 2 above, we have $P_R=R'$, and if we define $I_R$ as in question 2, we have $I_R=I$.   
 