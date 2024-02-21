## Homework Maths 2

### For a proof size, which of these would you want ?

#### 1. Modular arithmetic - you just need to find examples, you don't need to prove anything.
- a) Is it true that all odd squares are ≡ 1 (mod 8) ?
- b) what about even squares (mod 8) ?

#### 2. What do you understand by
- a) $O(n)$
- b) $O(1)$
- c) $O(n\log{}n)$

For a proof size, which of these would you want ?


---

## Answers Summary

### 1. Answers
#### a) Is it true that all odd squares are ≡ 1 (mod 8) ? **Yes**
* 3 * 3 = 9 $\equiv$ 1 $\mod_8$
* 5 * 5 = 25 $\equiv$ 1 $\mod_8$
* 17 * 17 = 289 $\equiv$ 1 $\mod_8$
* 233 * 233 = 54289 $\equiv$ 1 $\mod_8$

#### b) what about even squares (mod 8) ? **They all equal 0 or 4 so they are in $\mathbb{S}$={0,4}**
* 2 * 2 = 4 $\equiv$ 0 $\mod_8$
* 20 * 20 = 400 $\equiv$ 0 $\mod_8$
* ...
* 3618 * 3618 = 13089924 $\equiv$ 4 $\mod_8$
  
#### 2. Answers
- a) $O(n)$ : time or space it needs grows linearly with the size of the input data set
- b) $O(1)$ : time or space it requires does not change with the size of the input data set
- c) $O(n\log{}n)$ : time or space it requires grows logarithmically as the size of the input data set increases
  
For a proof size, which of these would you want ? **$O(1)$ then $O(n)$ then $O(n\log{}n)$**