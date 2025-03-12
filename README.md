# Typical-digital-circuit-blocks

## 典型数字电路模块

>现代编程就是拼积木
>
>软件在能够复用前必须先能用。——Ralph Johnson

此仓库记录制作出的积木以方便**未来复用**，当然前提是这些模块都已经过**FPGA原型验证**。  
注:`sources_1/new`中存放`design`文件，`sim_1/new`中存放`simulation`文件
___
### 目录:
1. [逻辑运算器和数据选择器](#1)  
2. [五人表决器](#2)
2. [普通编码器和优先级编码器](#3)
2. [运算器](#4)
2. [触发器](#5)
2. [分频器](#6)
2. [移位寄存器](#7)
2. [状态机](#8)

#### 1. [逻辑运算器和数据选择器](./poject/1-MUXandLU)<a id="1"></a>  
与、或、异或三个门的逻辑运算`First`:  
<img width="257" alt="1_First" src="https://github.com/user-attachments/assets/b35f7c1a-c1cf-4537-9f3e-fad1e2df4c31" />  
2选1选择器`MUX2-1`:  
<img width="257" alt="image" src="https://github.com/user-attachments/assets/0bc9d6ea-e8fe-4ec7-900b-d8b853454de5" />  
4选1选择器`MUX4-1`:  
<img width="189" alt="image" src="https://github.com/user-attachments/assets/35edd707-5313-49b0-b3e7-8fd875393de9" />  
一个具有多功能逻辑运算单元LU电路`LU`:  
<img width="316" alt="image" src="https://github.com/user-attachments/assets/e918bd67-6447-4d74-af46-7e31fa98ad88" />

#### 2. [五人表决器](./project/2-Voter_5_dip)<a id="2"></a>
5人表决器`Vote_5`:  
<img width="250" alt="image" src="https://github.com/user-attachments/assets/519fe2ee-4449-43ff-8d0b-e1b3f59e2499" />  
数码管显示译码控制电路`display`:  
<img width="322" alt="image" src="https://github.com/user-attachments/assets/26360995-8877-4589-93d5-77f055990b19" />  
带数码管显示的5人表决器`Voter_5_dip`:  
<img width="531" alt="image" src="https://github.com/user-attachments/assets/d843dd05-3ebb-414b-aefb-6aeb05159840" />  

#### 3. [普通编码器和优先级编码器](./project/3-Priority_Encode_display)<a id="3"></a>
普通编码器`Encode_display`:  
<img width="289" alt="image" src="https://github.com/user-attachments/assets/abaccde1-486b-4e83-853d-14d1134c258d" />  
优先权编码器`Priority_Encode_display`:  
<img width="220" alt="image" src="https://github.com/user-attachments/assets/97b0fc5f-de95-4262-b557-e79faca34fcd" />  

#### 4. [运算器](./project/4-operator_display)<a id="4"></a>
4位二进制数比较器`compare`:  
<img width="234" alt="image" src="https://github.com/user-attachments/assets/015ec70e-4cd1-4bfa-a851-29a0fd026f37" />  
compare rule:  
<img width="499" alt="image" src="https://github.com/user-attachments/assets/7a171f63-3985-4a0b-a100-ec713b7f8efe" />  
2个 4 位二进制多功能运算器`operator_display`:  
<img width="442" alt="image" src="https://github.com/user-attachments/assets/1b8a212a-8f19-4bf2-a8d8-4ad15d43e0b0" />  

#### 5. [触发器](./project/5-32Dff_p_Ap)<a id="5"></a>
D 触发器`Dff_p`:  
<img width="158" alt="image" src="https://github.com/user-attachments/assets/6d6d52af-3459-492d-a0b4-5bbaea9f53f2" />
<img width="315" alt="image" src="https://github.com/user-attachments/assets/43637cb8-dd86-49d5-a0c5-24ddec5e729e" />  
带有置位/复位端口的 D 触发器`Dff_p_Sp`:  
<img width="140" alt="image" src="https://github.com/user-attachments/assets/d813e9da-efff-4d93-8ef1-3d02eae8764a" />
<img width="401" alt="image" src="https://github.com/user-attachments/assets/0551b490-b611-4833-85dd-661077a18e79" />  
32位通用寄存器`Dff_p_Ap_32`:  
<img width="174" alt="image" src="https://github.com/user-attachments/assets/9d467bb0-a592-4b11-bd5c-d22ad5110ff3" />  

#### 6. [分频器](./project/6-slowclock)<a id="6"></a>  
模10计数器`counter_10`:  
<img width="165" alt="image" src="https://github.com/user-attachments/assets/adba2c62-000b-47de-b705-268b0e5d037b" />   
分频器`slowclock`:  
<img width="480" alt="image" src="https://github.com/user-attachments/assets/31b7c1d2-5e5c-4e58-bbed-f3871f6aec5a" />
<img width="165" alt="image" src="https://github.com/user-attachments/assets/12bff86e-c012-49cc-8e17-881d405bc374" />  

#### 7. [移位寄存器](./project/7-ShiftReg_led)<a id="7"></a>
4 位的循环右移寄存器`ShiftReg`:  
<img width="189" alt="image" src="https://github.com/user-attachments/assets/822d0ccf-26d9-45fd-8a6f-5c8ad6bda076" />  
具有初值设定功能的 4 位右移移位寄存器`ShiftReg_I`:  
<img width="210" alt="image" src="https://github.com/user-attachments/assets/676156fa-bdd3-423c-aaf9-9649880a97e7" />  
一个利用可控左移/右移移位寄存器实现的跑马灯电路`ShiftReg_led`:  
<img width="382" alt="image" src="https://github.com/user-attachments/assets/9227f47b-468a-46e3-97c0-be93c81a3e06" />  


#### 8. [状态机](./project/8-Calendar)<a id="8"></a>
11001序列检测器`t_11001`:  
<img width="146" alt="image" src="https://github.com/user-attachments/assets/449175ed-152d-44c8-8403-71213896be92" />  
显示年月日`Calendar`:  
<img width="258" alt="image" src="https://github.com/user-attachments/assets/051d8733-1302-47a6-bc2a-e677fc3d397b" />  

