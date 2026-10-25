#set text(lang: "zh", region: "cn")
#import "template.typ": *
#set text(font: (font-en, font-song))
#show strong: set text(font: (font-en, font-hei), weight: "regular")
#show emph: text.with(font: (font-en, font-kai), style: "normal")
#show: frame-style(styles.hint)
#show: ilm.with(
  title: [大学物理（荣誉）（2）],
  author: "Closure",
  figure-index: (enabled: true),
)

= 静电场
== 重要结论
#proposition[无限大均匀带电平面的电场][
  $ E = sigma / (2 epsilon_0) $
]

#proposition[电偶极子][
  #definition[电偶极矩][$ arrow(p) = q arrow(l) $]
  $ arrow(E) = (p cos theta) / (2 pi epsilon_0 r^3) arrow(e)_r + (p sin theta) / (4 pi epsilon_0 r^3) arrow(e)_theta $
  $ V = (arrow(p) dot arrow(r))/(4 pi epsilon_0 r^3) $

  在均匀外电场中
  $ arrow(F) = 0 $
  $ arrow(M) = arrow(p) times arrow(E) $
  $ W = - arrow(p) dot arrow(E) $
]

== 库仑定律
#theorem[库仑定律][
  $ arrow(F) = (q_1 q_2) / (4 pi epsilon_0 r^2) arrow(e)_r $
]
== 电场强度 电势
#definition[电场强度][
  $ arrow(E) = arrow(F) / q $
]
#proposition[点电荷的电场强度][
  $ arrow(E) = q / (4 pi epsilon_0 r^2) arrow(e)_r $
  $ arrow(E) = integral_Q (d q) / (4 pi epsilon_0 r^2) arrow(e)_r $
]

#definition[电势][
  $ V = integral_P^(P_0) arrow(E) dot d arrow(l) = V_P - V_(P_0) $
]
#proposition[点电荷的电势][
  $ V = q / (4 pi epsilon_0 r) $
  $ V = integral_Q (d q) / (4 pi epsilon_0 r) $
]
#theorem[电势与电场强度的关系][
  $ arrow(E) = - nabla V $
  $ V_(a b) = integral_a^b arrow(E) dot d arrow(l) $
]

== 电场的基本规律
#theorem[高斯定理][
  $ integral.surf_S arrow(E) dot d arrow(S) = q / epsilon_0 $
  $ nabla dot arrow(E) = rho / epsilon_0 $
]

#theorem[环路定理][
  $ integral.cont_l arrow(E) dot d arrow(l) = 0 $
  $ nabla times arrow(E) = 0 $
]
== 导体
#proposition[静电平衡][
  + 导体内部场强处处为$0$
    $ arrow(E) = arrow(E)_0 + arrow(E)^' = 0 $
  + 导体内各处电势相同
  + 电荷只分布在导体表面上
]

#theorem[导体表面电荷与表面外侧电场的关系][
  $ arrow(E) = sigma/epsilon_0 arrow(e)_n $
  #note[][$sigma$与曲率正相关]
]
== 电容与电容器
#definition[电容][
  $ C = Q / V $
]

#proposition[平板电容器][
  $ C = (epsilon_0 S) / d $

]

#proposition[球形电容器][
  $ C = 4 pi epsilon_0 (R_A R_B) / (R_B - R_A) $
]

#proposition[柱形电容器][
  $ C = (2 pi epsilon_0) / ln(R_2 / R_1) $
]

#proposition[串联][
  $ 1/C = 1/C_1 + 1/C_2 + 1/C_3 $
]

#proposition[并联][
  $ C = C_1 + C_2 + C_3 $
]
== 静电场的能量
#proposition[点电荷系的静电能][
  $ W = 1/2 sum_i q_i U_i $
  $ W = 1/2 integral_Q d q U $
]
#proposition[电容器的静电能][
  $ W_e = 1 / 2 U_C Q = 1/ 2 C U_C^2 = Q^2 / (2 C) $
]
#proposition[静电场的能量与能量密度][
  $ w_e = 1/2 D E = 1/2 epsilon E^2 $
  $ W_e = integral.triple_V w_e d V $
]

= 电介质
== 电介质的极化
#definition[极化][

  边缘出现极化电荷
  - 取向极化：有极分子介质
  - 位移极化：无极分子介质
]
== 极化强度和极化电荷
#definition[极化强度][

  $ arrow(P) = lim_(Delta V -> 0) (sum_i arrow(p)_i) / (Delta V) $
]
#proposition[极化电荷][
  $ q^' = - integral.surf_S arrow(P) dot d arrow(S) $
  $ sigma^' = arrow(P) dot arrow(e)_n $
  $ rho^' = - nabla dot arrow(P) $
]
== 介质中的电场
$ arrow(E) = arrow(E)_0 + arrow(E)^' $
#theorem[高斯定理][
  $ integral.surf_S arrow(E) dot d arrow(S) = (q_0 + q^') / epsilon_0 $
  $ nabla dot arrow(E) = (rho_0 + rho^') / epsilon_0 $
]

#theorem[环路定理][
  $ integral.cont_l arrow(E) dot d arrow(l) = 0 $
  $ nabla times arrow(E) = 0 $
]
== 电位移矢量
#definition[电位移矢量][
  $ arrow(D) = epsilon_0 arrow(E) + arrow(P) $
]
#theorem[高斯定理][
  $ integral.surf_S arrow(D) dot d arrow(S) = sum_i q_(0 i) $
  $ nabla dot arrow(D) = rho_0 $
]
#definition[介质电极化率][
  $ chi_e = epsilon_r - 1 $
]
#proposition[][
  $ arrow(D) = epsilon arrow(E) $
  $ arrow(P) = epsilon_0 (epsilon_r -1 ) arrow(E) = chi_e epsilon_0 arrow(E) $
]
#theorem[介质边界两侧电场的关系][

  - 电位移矢量法向分量连续
    $ D_(1 n) = D_(2 n), epsilon_1 E_(1 n) = epsilon_2 E_(2 n) $
  - 电场强度切向分量连续
    $ E_(1 t) = E_(2 t), D_(1 t)/epsilon_1 = D_(2 t)/epsilon_2 $

  $ epsilon_2 tan theta_1 = epsilon_1 tan theta_2 $
]
= 稳恒磁场

== 重要结论
#proposition[无限长直电流的磁场][
  $ B = (mu_0 I) / (2 pi d) $
]
#proposition[圆电流轴线上的磁场][
  $ B = (mu_0 I R^2) / (2 (R^2 + z^2)^(3/2)) $
  $z>>R$
  $ B = (mu_0 arrow(m)) / (2 pi z^3) $
  #definition[磁矩][
    $ arrow(m) = N I S arrow(e)_n $
  ]
]

#proposition[螺线管的磁场][

  - 无限长螺线管（无论是否轴线上）
    $ B = mu_0 n I $
  - 半无限长螺线管（轴线上）
    $ B = 1/2 mu_0 n I $
]
#proposition[无限大平面电流的磁场][
  $ B = (mu_0 alpha) / 2 $
]
== 毕奥-萨伐尔定律
#theorem[毕奥-萨伐尔定律][
  $ d arrow(B) = mu_0 / (4 pi) (I d arrow(l) times arrow(e)_r) / r^2 $
]
#proposition[运动带电粒子的磁场][
  $ arrow(B) = mu_0 / (4 pi) (q arrow(v) times arrow(e)_r) / r^2 $
]

== 磁感应强度
#definition[磁感应强度][
  $ arrow(F) = q arrow(v) times arrow(B) $
]

== 磁场的基本规律
#proposition[磁高斯定理][
  $ integral.surf_S arrow(B) dot d arrow(S) = 0 $
  $ nabla dot arrow(B) = 0 $
]
#proposition[安培环路定理][
  $ integral.cont_l arrow(B) dot d arrow(l) = mu_0 I $
  $ nabla times arrow(B) = mu_0 arrow(J) $
]
*有关电流密度*
#proposition[][
  $ d I = n q v_d d S_perp $
  $ arrow(J) = n q arrow(v)_d $
]
#proposition[欧姆定律的微分形式][
  $ arrow(J) = sigma arrow(E) $
  #definition[电导率][
    $ sigma = 1 / rho $
  ]
]
== 磁场对载流导线的作用
#theorem[安培力][
  $ d arrow(F) = I d arrow(l) times arrow(B) $
]

#proposition[匀强磁场中载流导线受力与直电流相同][
  $ arrow(F) = integral_l (I d arrow(l) times arrow(B)) = I arrow(A B) times arrow(B) $
]

#proposition[磁压][
  $ p = 1/(2 mu_0) (B_1^2 - B_2^2) $
]

#proposition[载流线圈][
  均匀磁场中，刚性平面线圈

  $ arrow(F) = 0 $
  $ arrow(M) = arrow(m) times arrow(B) $
]

#theorem[安培力的功][稳恒磁场，稳恒电流
  $ A = I (Phi_f - Phi_i) $
]
== 带电粒子的运动
#theorem[洛伦兹力][
  $ arrow(F) = q arrow(v) times arrow(B) $
]
#proposition[带电粒子在匀强磁场中的运动][
  $ R = (m v) / (q B) $
  $ T = (2 pi m) / (q B) $
]
#proposition[霍耳效应][
  $ U_H = R_H (B I) / b $
  #definition[霍尔系数][$ R_H = 1 / (n q) $]
]
= 磁介质
== 磁介质的磁化
#definition[磁化][

  表面出现磁化电流
  - 感应磁化：抗磁质
  - 取向磁化：顺磁质
]
== 磁化强度和磁化电流
#definition[磁化强度][
  $ arrow(M) = lim_(Delta V -> 0) (sum_i arrow(mu)_(m i)) / (Delta V) $
]
#proposition[磁化电流][
  $ I^' = integral.cont_l arrow(M) dot d arrow(l) $
  $ arrow(alpha)^' = arrow(M) times arrow(e)_n $
  $ arrow(J)^' = nabla times arrow(M) $
]
== 介质中的磁场
$ arrow(B) = arrow(B)_0 + arrow(B)^' $

#theorem[磁高斯定理][
  $ integral.surf_S arrow(B) dot d arrow(S) = 0 $
  $ nabla dot arrow(B) = 0 $
]

#theorem[安培环路定理][
  $ integral.cont_l arrow(B) dot d arrow(l) = mu_0 (I + I^') $
]
== 磁场强度
#definition[磁场强度][
  $ arrow(H) = arrow(B) / mu_0 - arrow(M) $
]

#theorem[安培环路定理][
  $ integral.cont_l arrow(H) dot d arrow(l) = I $
]

#definition[介质磁化率][
  $ chi_m = mu_r - 1 $
]

#proposition[][
  $ arrow(B) = mu arrow(H) $
  $ arrow(M) = (mu_r - 1) arrow(H) = chi_m arrow(H) $
]

#proposition[][
  - 顺磁质：$mu_r > 1, chi_m > 0$
  - 抗磁质：$mu_r < 1, chi_m < 0$
]

#theorem[介质边界两侧磁场的关系][

  - 磁感应强度法向分量连续
    $ B_(1 n) = B_(2 n), mu_1 H_(1 n) = mu_2 H_(2 n) $
  - 磁场强度切向分量连续
    $ H_(1 t) = H_(2 t), B_(1 t)/mu_1 = B_(2 t)/mu_2 $

  $ mu_2 tan theta_1 = mu_1 tan theta_2 $
]
