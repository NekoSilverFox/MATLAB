<p align="center">
 <img width="100px" src="https://raw.githubusercontent.com/NekoSilverFox/NekoSilverfox/403ab045b7d9adeaaf8186c451af7243f5d8f46d/icons/silverfox.svg" align="center" alt="NekoSilverfox" />
 <h1 align="center">MATLAB</h2>
 <p align="center"><b>项目库</b></p>
</p>


<div align=center>


[![License](https://img.shields.io/badge/license-Apache%202.0-brightgreen)](LICENSE)
![版本](https://img.shields.io/badge/MATLAB-R2021b-orange)


<div align=left>
<!-- 顶部至此截止 -->


[toc]

# MATLAB 基础

## 变量命名

- 变量名区分大小写
- 变量名不能以数字开头，且不能使用标点
- 变量名的长度不能超过 63 位



## 数据类型

### 数字

就是一个普通的阿拉伯数字，比如 6， 4， 39



### 字符和字符串

**注意要使用单引号包裹！**

```matlab
c = 'A'				%% 注意要用单引号
str = 'Silverfox'	%% 注意要用单引号
```



### 矩阵

- 定义

    **矩阵使用打括号包裹，空格代表分隔数字，分号代表换行**

    ```matlab
    A = [1 2 3; 4 5 6; 7 8 9]
    
    输出：
    A =
    
         1     2     3
         4     5     6
         7     8     9
    ```

    

- 矩阵转置（行变列，列变行）

    **在一个矩阵后面加一个 `'` 即可把它转置**

    ```matlab
    B = A'
    
    输出：
    B =
    
         1     4     7
         2     5     8
         3     6     9
    ```

    

- 矩阵拉长？

    **在一个矩阵后面加一个 `(:)` 即可把它拉长**

    将矩阵先转置后拉长

    或者说是矩阵按照列拼接在一起

    ```matlab
    C = A(:)
    
    输出：
    C =
    
         1
         4
         7
         2
         5
         8
         3
         6
         9
    ```

    

- 逆矩阵

    `inv(矩阵)` - 返回逆矩阵

    **注意，只有方阵（n×n 的矩阵）才可能有逆矩阵。若方阵 A 的逆矩阵存在，则称 A 为非奇异方阵或可逆方阵。**

    ```matlab
    D = inv(A)
    
    输出：
    D =
    
       1.0e+16 *
    
       -0.4504    0.9007   -0.4504
        0.9007   -1.8014    0.9007
       -0.4504    0.9007   -0.4504
    ```

    

- 



### 元胞数组





### 结构体



## 环境变量与命令

- `clear all` - 清除 Workspace 中的所有变量

- `clc` - 清除 Command Window 中的所有命令

- `%%` - 行注释

- `abs(字符)` - 输出这个字符的 ASCII 码

    ```matlab
    abs(a)		%% 输出 `97`
    ```

- `char(数字)` - 输出这个数字（ASCII 码）对应的字符

    ```matlab
    char(97)	%% 输出 `a`
    ```

- `length(字符串)` - 返回字符串长度，包括空格



