 # Sets
 
 We often groups things together. Everyone in this class, your group of friends, your family.  These are all collections of people.    Set theory is a mathematical language to reason about collections, called sets.     
 
Set
: Any collection of objects.   It is assumed that there is a *universal set*, called the  *domain of discourse*, so that a set is a collection of objects from the universal set. 


```{note}
In these notes, sets are denoted with uppercase letters, and elements of sets with lowercase letters.  There is no standard notation for sets and elements.  For instance, some texts may use lowercase letters to denote sets.  
```

There are two ways to write down a set:

1. List all the items in the set.  The items should be separated by a comma and the list should be written between curly brackets: '$\}$' and '$\{$'.  For example, the  first 5 letters of the alphabet is the set $\{a, b, c, d, e\}$.
2.  Define a property that  *all* items in the set have in common.  For example,   the set of all positive integers is $\{x\ |\ x \text{ is an integer} \text{ and } x\geq 0  \}$.  This is read "the set of all $x$ such that $x$ is an integer and $x$ is greater than or equal to zero".

Element
: A member of a set.   When   $x$ is an element of the set $A$, we write $x\in A$.

Subset
: A set $A$ is a  **subset** of a set $B$, denoted $A\subseteq B$, provided that every element of $A$ is also an element of $B$.  
 
The set that contains no elements is called the **emptyset**, or **null set**.   We write $\varnothing$ to denote the emptyset.

We use the phrase "...is contained in" when talking about both elements and subsets.   If $A=\{1,2,3\}$, then it is common to say that "$A$ contains $1$" or "$1$ is contained in $A$".   Something that can be confusing for beginners is that it is also common to say that "the set $\{1,2\}$ is contained in $A$" since each element in $\{1, 2\}$ is contained in $A$.   

```{admonition} Caution 
:class: caution
It is important to remember that the subset notation "$A\subseteq B$" should only be used when $A$ and $B$ are both sets. For example, if $X=\{1, 2, 3 \}$, then it is incorrect to write "$1\subseteq X$"  since $1$ is not a set.  
```

Note that it is possible for  a set to contain an element that is itself a set.   That is, a set  can  contain other sets as members.  For instance, the set $X=\{a, b, c\}$ contains three elements (i.e., $a\in X$, $b\in X$ and $c\in X$), but  $Y=\{a, \{b, c\}\}$ contains two elements ($a\in Y$ and $\{b,c\}\in Y$).   
 
```{admonition} Can a set contain an element that is also a subset? 
:class: note, dropdown
  Let $Z=\{a, \{a\}\}$.   Then, $\{a\}\in Z$  and $\{a\}\subseteq Z$ (since $a\in Z$).   So, $\{a\}$ is both an element of $Z$ and a subset of $Z$.  
```

Given a set $A$, we will often be interested in the set of all subsets of $A$:

Powerset 
: The **power set** of a set $A$ is the set of all of $A$'s subsets.  If $A$ is a set, then the power set of $A$ is the set $\wp(A)=\{B\ |\ B\subseteq A\}$. 

Note that $\varnothing\in\wp(A)$ for any set $A$.    To illustrate the power set operation, suppose that $A=\{1, 2, 3\}$.   Then the power set of $A$ is: 

$$

\wp(A)=\{\varnothing, \{1\}, \{2\}, \{3\}, \{1,2\}, \{1,3\}, \{2,3\}, \{1,2,3\}\}.

$$


<center>

<iframe width="600" height="400" src="https://www.youtube.com/embed/LrLFteztomE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

</center>

## Operations on Sets

A **Venn diagram** is a picture that represents all the possible relationships between sets. For example, the following pictures represents all the possible relationships between two sets $A$ and $B$: 


```{figure} ./venn1.png
---
height: 180px
name: venn1
---
A Venn diagram for $X$ and $Y$ with the different regions labeled. 
```
There are 4 distinct regions in the above picture: 

* region $1$ is for items that are not in $A$ and not in  $B$;
* region $2$ is for items in $A$ that are not in $B$;
* region $3$ is for items in both $A$ and $B$; and 
* region $4$ is for items that are not in $A$ and are in $B$. 

It is important to remember that in Venn diagrams, some of the regions might be empty, i.e., the region does not contain any elements.   For example, if $A\subseteq B$, region $2$ does not contain any elements (since every element in $A$ is in $B$).  To represent this subset relation between $A$ and $B$ we can draw the $A$ region inside the $B$ region: [^euler]

[^euler]: Techincally, this is called a **Euler** diagram.   Eurler diagrams do not represent the regions that are known to be empty. 

```{figure} ./subset.png
---
height: 180px
name: subset
---
$A\subseteq B$
```

There are a number of  ways to combine sets to form new sets.  

```{glossary}
Union
  Suppose that  $A$ and $B$ are two sets.   The **union** of $A$ and $B$, denoted $A\cup B$,  is the set  $A\cup B=\{x\ |\ x\in A\text{ or } x\in B\}.$   More generally, if $\mathcal{S}$ is any collection of sets, then 
  
  $$
  \bigcup \mathcal{S} = \{x\ |\ x\in A \mbox{ for some } A\in\mathcal{S}\}.
  $$

```

The union of two sets can be pictured as follows:

```{figure} ./union.png
---
height: 180px
name: union
---
The gray shaded region is $A\cup B$. 
```

The following examples illustrates the union of two sets.   

* If $A=\{1,2,3\}$ and $B=\{a,b\}$, then $A\cup B=\{1,2,3,a,b\}$.
* If $A=\{1,2,3\}$ and $B=\{1,3,4\}$, then $A\cup B=\{ 1, 2, 3, 4\}$.
* If $A=\{1,2, 3\}$ and $B=\{\{1,3\}, 4\}$, then $A\cup B=\{ 1, 2, 3, \{1,3\}, 4\}$.


```{glossary}
Intersection
  Suppose that $A$ and $B$ are two sets.  The **intersection** of $A$ and $B$, denoted $A\cap B$,  is the set $A\cap B=\{x\ |\ x\in A\text{ and } x\in B\}.$  More generally, if $\mathcal{S}$ is any collection of sets, then 

  $$
  \bigcap \mathcal{S} = \{x\ |\ x\in A \text{ for all $A\in\mathcal{S}$}\}.
  $$    

```

The intersection of $A$ and $B$ can be pictured as follows: 

 ```{figure} ./intersection.png
---
height: 180px
name: intersection
---
The gray shaded region is $A\cap B$. 
```


The following examples illustrates the intersection of two sets.   

* If $A=\{1,2,3\}$ and $B=\{1\}$, then $A\cap B=\{1\}$.
* If $A=\{1,2, 3\}$ and $B=\{\{1,3\}, 2\}$, then $A\cap B=\{ 2\}$.
* If $A=\{1, 2\}$ and $B=\{3, 4\}$, then $A\cap B=\varnothing$  (i.e., there are no elements in $A\cap B$).  


```{glossary} 
Set Difference
  The **difference** between two sets $A$ and $B$ ($A$ minus $B$), denoted $A-B$  is all the elements in $A$ but not in $B$.   That is, the difference between $A$ and $B$ is the set 
  
  $$
  A-B=\{x\ |\ x\in A\text{ and } x\not\in B\}.
  
  $$

```
The difference  between $A$ and $B$ can be pictured as follows: 

  ```{figure} ./setdiff.png
---
height: 180px
name: setdiff
---
The gray shaded region is $A - B$. 
```

```{glossary}
Complement
  The **complement**  of a set is the set of all elements not contained in that set.  Formally, the complement of the set $A$ is 

  $$
  A^C=\{x\ |\ x\text{ is in the universal set and } x\not\in A\}.
  $$

```

The following examples illustrates the operations of set difference and complement:

* If $A=\{1,2, 3\}$ and $B=\{1, 2, 4\}$, then $A - B=\{ 3\}$ and $B-A=\{4\}$.
* If $A=\{1,2,3\}$ and $B=\{1\}$, then $A - B=\{2, 3\}$ and $B-A$ is the empty set.
* If the universal set is   $\{0,1, 2, 3, 4, 5, 6, 7, 8, 9\}$ and $A=\{1, 2, 3\}$, then $A^C=\{0, 4, 5, 6, 7, 8, 9\}$.     

```{glossary}
Symmetric Difference  
  The **symmetric difference** of sets $A$ and $B$ is all the elements in either set  *but not in both*.  That is, it is the set $(A-B)\cup (B-A)$. 
```
The symmetric difference is pictured as follows: 

```{figure} ./symdiff.png
---
height: 180px
name: symdiff
---
The gray shaded region is $(A - B) \cup (B-A)$. 
```

The following examples illustrates the operations of symmetric difference:

* The symmetric difference of $A=\{1,2, 3\}$ and $B=\{1, 2, 4\}$  is $\{ 3, 4\}$.
* The symmetric difference  $A=\{1,2,3\}$ and $B=\{1\}$ is $\{2, 3\}$.

 
Finally, it will  be useful to introduce notation to represent the number of elements in a set. 
 
```{glossary}
Cardinality 
  The cardinality of a finite set $A$, denoted $|A|$,  is the total number of elements in $A$. The notion of cardinality can be applied to infinite sets as well.   However, a discussion of this is beyond the scope of these introductory notes. 
```

We conclude with the notation for some important sets: 

| Notation    | Set    |
| :--- | :--- |
$\mathbb{N}$ | The set of all non-negative integers $\{0, 1, 2, \ldots\}$ |
$\mathbb{Z}$ | The set of all  integers $\{\ldots, -2, -1, 0, 1, 2, \ldots\}$ |
$\mathbb{R}$ | The set of all real numbers |
$[0,1]$ | The set of all real numbers between (and including) $0$ and $1$:  $[0,1]=\{x\mid x\in \mathbb{R}, 0\le x\le 1\}$  |
$(0,1)$ | The set of all real numbers strictly between $0$ and $1$:  $(0,1)=\{x\mid x\in \mathbb{R}, 0 <  x < 1\}$|
$\mathbb{Q}$ | The set of all rational numbers $\{x\mid x=\frac{a}{b}$, where $a, b$ are integers$\}$|


## Exercises 

1. What is   $\wp(\emptyset)$?  
2. Explain why the following are true: 
    * For any sets $A$ and $B$, $A\subseteq A\cup B$ and $B\subseteq A\cup B$.  	
    * For any sets $A$ and $B$, $A\subseteq B$ if, and only if, $A\cup B = B$.
3. Explain why the following are true:  
    * For 	 any sets $A$ and $B$, $A\cap B\subseteq A$ and $A\cap B\subseteq B$.  	
    * For 	 any sets $A$ and $B$, $A\subseteq B$ if, and only if, $A\cap B = A$.
4. Explain why the following is true: For any sets $A$ and $B$, $A-B=A\cap B^C$.    
5. If $A$ has $n$ elements, $|A|=n$, then how many elements are in $\wp(A)$? 

