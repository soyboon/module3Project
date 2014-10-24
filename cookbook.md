Assumptions:
You have read and understood the README.txt and featurs_info.txt that came with the data set.

This data set takes all mean and standard deviation measurements from the test and train data set and combined with the corresponding subject taking the test and the test activity being measured. Subsequently, the average of each variables are calculated for each subject and test activity.

The struture of the result table is as follows:
Classes ‘data.table’ and 'data.frame':	180 obs. of  68 variables:
 $ subject                  : int  1 1 1 1 1 1 2 2 2 2 ...
 $ activity                 : Factor w/ 6 levels "LAYING","SITTING",..: 3 2 1 4 5 6 3 2 1 4 ...
 $ tBodyAcc-mean-X          : num  0.279 0.261 0.222 0.277 0.289 ...
 $ tBodyAcc-mean-Y          : num  -0.01614 -0.00131 -0.04051 -0.01738 -0.00992 ...
 $ tBodyAcc-mean-Z          : num  -0.111 -0.105 -0.113 -0.111 -0.108 ...
 $ tBodyAcc-std-X           : num  -0.996 -0.977 -0.928 -0.284 0.03 ...
 $ tBodyAcc-std-Y           : num  -0.9732 -0.9226 -0.8368 0.1145 -0.0319 ...
 $ tBodyAcc-std-Z           : num  -0.98 -0.94 -0.826 -0.26 -0.23 ...
 $ tGravityAcc-mean-X       : num  0.943 0.832 -0.249 0.935 0.932 ...
 $ tGravityAcc-mean-Y       : num  -0.273 0.204 0.706 -0.282 -0.267 ...
 $ tGravityAcc-mean-Z       : num  0.0135 0.332 0.4458 -0.0681 -0.0621 ...
 $ tGravityAcc-std-X        : num  -0.994 -0.968 -0.897 -0.977 -0.951 ...
 $ tGravityAcc-std-Y        : num  -0.981 -0.936 -0.908 -0.971 -0.937 ...
 $ tGravityAcc-std-Z        : num  -0.976 -0.949 -0.852 -0.948 -0.896 ...
 $ tBodyAccJerk-mean-X      : num  0.0754 0.0775 0.0811 0.074 0.0542 ...
 $ tBodyAccJerk-mean-Y      : num  0.007976 -0.000619 0.003838 0.028272 0.02965 ...
 $ tBodyAccJerk-mean-Z      : num  -0.00369 -0.00337 0.01083 -0.00417 -0.01097 ...
 $ tBodyAccJerk-std-X       : num  -0.9946 -0.9864 -0.9585 -0.1136 -0.0123 ...
 $ tBodyAccJerk-std-Y       : num  -0.986 -0.981 -0.924 0.067 -0.102 ...
 $ tBodyAccJerk-std-Z       : num  -0.992 -0.988 -0.955 -0.503 -0.346 ...
 $ tBodyGyro-mean-X         : num  -0.024 -0.0454 -0.0166 -0.0418 -0.0351 ...
 $ tBodyGyro-mean-Y         : num  -0.0594 -0.0919 -0.0645 -0.0695 -0.0909 ...
 $ tBodyGyro-mean-Z         : num  0.0748 0.0629 0.1487 0.0849 0.0901 ...
 $ tBodyGyro-std-X          : num  -0.987 -0.977 -0.874 -0.474 -0.458 ...
 $ tBodyGyro-std-Y          : num  -0.9877 -0.9665 -0.9511 -0.0546 -0.1263 ...
 $ tBodyGyro-std-Z          : num  -0.981 -0.941 -0.908 -0.344 -0.125 ...
 $ tBodyGyroJerk-mean-X     : num  -0.0996 -0.0937 -0.1073 -0.09 -0.074 ...
 $ tBodyGyroJerk-mean-Y     : num  -0.0441 -0.0402 -0.0415 -0.0398 -0.044 ...
 $ tBodyGyroJerk-mean-Z     : num  -0.049 -0.0467 -0.0741 -0.0461 -0.027 ...
 $ tBodyGyroJerk-std-X      : num  -0.993 -0.992 -0.919 -0.207 -0.487 ...
 $ tBodyGyroJerk-std-Y      : num  -0.995 -0.99 -0.968 -0.304 -0.239 ...
 $ tBodyGyroJerk-std-Z      : num  -0.992 -0.988 -0.958 -0.404 -0.269 ...
 $ tBodyAccMag-mean         : num  -0.9843 -0.9485 -0.8419 -0.137 0.0272 ...
 $ tBodyAccMag-std          : num  -0.9819 -0.9271 -0.7951 -0.2197 0.0199 ...
 $ tGravityAccMag-mean      : num  -0.9843 -0.9485 -0.8419 -0.137 0.0272 ...
 $ tGravityAccMag-std       : num  -0.9819 -0.9271 -0.7951 -0.2197 0.0199 ...
 $ tBodyAccJerkMag-mean     : num  -0.9924 -0.9874 -0.9544 -0.1414 -0.0894 ...
 $ tBodyAccJerkMag-std      : num  -0.9931 -0.9841 -0.9282 -0.0745 -0.0258 ...
 $ tBodyGyroMag-mean        : num  -0.9765 -0.9309 -0.8748 -0.161 -0.0757 ...
 $ tBodyGyroMag-std         : num  -0.979 -0.935 -0.819 -0.187 -0.226 ...
 $ tBodyGyroJerkMag-mean    : num  -0.995 -0.992 -0.963 -0.299 -0.295 ...
 $ tBodyGyroJerkMag-std     : num  -0.995 -0.988 -0.936 -0.325 -0.307 ...
 $ fBodyAcc-mean-X          : num  -0.9952 -0.9796 -0.9391 -0.2028 0.0382 ...
 $ fBodyAcc-mean-Y          : num  -0.97707 -0.94408 -0.86707 0.08971 0.00155 ...
 $ fBodyAcc-mean-Z          : num  -0.985 -0.959 -0.883 -0.332 -0.226 ...
 $ fBodyAcc-std-X           : num  -0.996 -0.9764 -0.9244 -0.3191 0.0243 ...
 $ fBodyAcc-std-Y           : num  -0.972 -0.917 -0.834 0.056 -0.113 ...
 $ fBodyAcc-std-Z           : num  -0.978 -0.934 -0.813 -0.28 -0.298 ...
 $ fBodyAccJerk-mean-X      : num  -0.9946 -0.9866 -0.9571 -0.1705 -0.0277 ...
 $ fBodyAccJerk-mean-Y      : num  -0.9854 -0.9816 -0.9225 -0.0352 -0.1287 ...
 $ fBodyAccJerk-mean-Z      : num  -0.991 -0.986 -0.948 -0.469 -0.288 ...
 $ fBodyAccJerk-std-X       : num  -0.9951 -0.9875 -0.9642 -0.1336 -0.0863 ...
 $ fBodyAccJerk-std-Y       : num  -0.987 -0.983 -0.932 0.107 -0.135 ...
 $ fBodyAccJerk-std-Z       : num  -0.992 -0.988 -0.961 -0.535 -0.402 ...
 $ fBodyGyro-mean-X         : num  -0.986 -0.976 -0.85 -0.339 -0.352 ...
 $ fBodyGyro-mean-Y         : num  -0.989 -0.9758 -0.9522 -0.1031 -0.0557 ...
 $ fBodyGyro-mean-Z         : num  -0.9808 -0.9513 -0.9093 -0.2559 -0.0319 ...
 $ fBodyGyro-std-X          : num  -0.987 -0.978 -0.882 -0.517 -0.495 ...
 $ fBodyGyro-std-Y          : num  -0.9871 -0.9623 -0.9512 -0.0335 -0.1814 ...
 $ fBodyGyro-std-Z          : num  -0.982 -0.944 -0.917 -0.437 -0.238 ...
 $ fBodyAccMag-mean         : num  -0.9854 -0.9478 -0.8618 -0.1286 0.0966 ...
 $ fBodyAccMag-std          : num  -0.982 -0.928 -0.798 -0.398 -0.187 ...
 $ fBodyBodyAccJerkMag-mean : num  -0.9925 -0.9853 -0.9333 -0.0571 0.0262 ...
 $ fBodyBodyAccJerkMag-std  : num  -0.993 -0.982 -0.922 -0.103 -0.104 ...
 $ fBodyBodyGyroMag-mean    : num  -0.985 -0.958 -0.862 -0.199 -0.186 ...
 $ fBodyBodyGyroMag-std     : num  -0.978 -0.932 -0.824 -0.321 -0.398 ...
 $ fBodyBodyGyroJerkMag-mean: num  -0.995 -0.99 -0.942 -0.319 -0.282 ...
 $ fBodyBodyGyroJerkMag-std : num  -0.995 -0.987 -0.933 -0.382 -0.392 ...



A summary of the variables value as follows:
	Column Name		Freq
1	subject		Min. : 1.0
2	subject		1st Qu.: 8.0
3	subject		Median :15.5
4	subject		Mean :15.5
5	subject		3rd Qu.:23.0
6	subject		Max. :30.0
7	activity		LAYING :30
8	activity		SITTING :30
9	activity		STANDING :30
10	activity		WALKING :30
11	activity		WALKING_DOWNSTAIRS:30
12	activity		WALKING_UPSTAIRS :30
13	tBodyAcc-mean-X		Min. :0.2216
14	tBodyAcc-mean-X		1st Qu.:0.2712
15	tBodyAcc-mean-X		Median :0.2770
16	tBodyAcc-mean-X		Mean :0.2743
17	tBodyAcc-mean-X		3rd Qu.:0.2800
18	tBodyAcc-mean-X		Max. :0.3015
19	tBodyAcc-mean-Y		Min. :-0.040514
20	tBodyAcc-mean-Y		1st Qu.:-0.020022
21	tBodyAcc-mean-Y		Median :-0.017262
22	tBodyAcc-mean-Y		Mean :-0.017876
23	tBodyAcc-mean-Y		3rd Qu.:-0.014936
24	tBodyAcc-mean-Y		Max. :-0.001308
25	tBodyAcc-mean-Z		Min. :-0.15251
26	tBodyAcc-mean-Z		1st Qu.:-0.11207
27	tBodyAcc-mean-Z		Median :-0.10819
28	tBodyAcc-mean-Z		Mean :-0.10916
29	tBodyAcc-mean-Z		3rd Qu.:-0.10443
30	tBodyAcc-mean-Z		Max. :-0.07538
31	tBodyAcc-std-X		Min. :-0.9961
32	tBodyAcc-std-X		1st Qu.:-0.9799
33	tBodyAcc-std-X		Median :-0.7526
34	tBodyAcc-std-X		Mean :-0.5577
35	tBodyAcc-std-X		3rd Qu.:-0.1984
36	tBodyAcc-std-X		Max. : 0.6269
37	tBodyAcc-std-Y		Min. :-0.99024
38	tBodyAcc-std-Y		1st Qu.:-0.94205
39	tBodyAcc-std-Y		Median :-0.50897
40	tBodyAcc-std-Y		Mean :-0.46046
41	tBodyAcc-std-Y		3rd Qu.:-0.03077
42	tBodyAcc-std-Y		Max. : 0.61694
43	tBodyAcc-std-Z		Min. :-0.9877
44	tBodyAcc-std-Z		1st Qu.:-0.9498
45	tBodyAcc-std-Z		Median :-0.6518
46	tBodyAcc-std-Z		Mean :-0.5756
47	tBodyAcc-std-Z		3rd Qu.:-0.2306
48	tBodyAcc-std-Z		Max. : 0.6090
49	tGravityAcc-mean-X		Min. :-0.6800
50	tGravityAcc-mean-X		1st Qu.: 0.8376
51	tGravityAcc-mean-X		Median : 0.9208
52	tGravityAcc-mean-X		Mean : 0.6975
53	tGravityAcc-mean-X		3rd Qu.: 0.9425
54	tGravityAcc-mean-X		Max. : 0.9745
55	tGravityAcc-mean-Y		Min. :-0.47989
56	tGravityAcc-mean-Y		1st Qu.:-0.23319
57	tGravityAcc-mean-Y		Median :-0.12782
58	tGravityAcc-mean-Y		Mean :-0.01621
59	tGravityAcc-mean-Y		3rd Qu.: 0.08773
60	tGravityAcc-mean-Y		Max. : 0.95659
61	tGravityAcc-mean-Z		Min. :-0.49509
62	tGravityAcc-mean-Z		1st Qu.:-0.11726
63	tGravityAcc-mean-Z		Median : 0.02384
64	tGravityAcc-mean-Z		Mean : 0.07413
65	tGravityAcc-mean-Z		3rd Qu.: 0.14946
66	tGravityAcc-mean-Z		Max. : 0.95787
67	tGravityAcc-std-X		Min. :-0.9968
68	tGravityAcc-std-X		1st Qu.:-0.9825
69	tGravityAcc-std-X		Median :-0.9695
70	tGravityAcc-std-X		Mean :-0.9638
71	tGravityAcc-std-X		3rd Qu.:-0.9509
72	tGravityAcc-std-X		Max. :-0.8296
73	tGravityAcc-std-Y		Min. :-0.9942
74	tGravityAcc-std-Y		1st Qu.:-0.9711
75	tGravityAcc-std-Y		Median :-0.9590
76	tGravityAcc-std-Y		Mean :-0.9524
77	tGravityAcc-std-Y		3rd Qu.:-0.9370
78	tGravityAcc-std-Y		Max. :-0.6436
79	tGravityAcc-std-Z		Min. :-0.9910
80	tGravityAcc-std-Z		1st Qu.:-0.9605
81	tGravityAcc-std-Z		Median :-0.9450
82	tGravityAcc-std-Z		Mean :-0.9364
83	tGravityAcc-std-Z		3rd Qu.:-0.9180
84	tGravityAcc-std-Z		Max. :-0.6102
85	tBodyAccJerk-mean-X		Min. :0.04269
86	tBodyAccJerk-mean-X		1st Qu.:0.07396
87	tBodyAccJerk-mean-X		Median :0.07640
88	tBodyAccJerk-mean-X		Mean :0.07947
89	tBodyAccJerk-mean-X		3rd Qu.:0.08330
90	tBodyAccJerk-mean-X		Max. :0.13019
91	tBodyAccJerk-mean-Y		Min. :-0.0386872
92	tBodyAccJerk-mean-Y		1st Qu.: 0.0004664
93	tBodyAccJerk-mean-Y		Median : 0.0094698
94	tBodyAccJerk-mean-Y		Mean : 0.0075652
95	tBodyAccJerk-mean-Y		3rd Qu.: 0.0134008
96	tBodyAccJerk-mean-Y		Max. : 0.0568186
97	tBodyAccJerk-mean-Z		Min. :-0.067458
98	tBodyAccJerk-mean-Z		1st Qu.:-0.010601
99	tBodyAccJerk-mean-Z		Median :-0.003861
100	tBodyAccJerk-mean-Z		Mean :-0.004953
101	tBodyAccJerk-mean-Z		3rd Qu.: 0.001958
102	tBodyAccJerk-mean-Z		Max. : 0.038053
103	tBodyAccJerk-std-X		Min. :-0.9946
104	tBodyAccJerk-std-X		1st Qu.:-0.9832
105	tBodyAccJerk-std-X		Median :-0.8104
106	tBodyAccJerk-std-X		Mean :-0.5949
107	tBodyAccJerk-std-X		3rd Qu.:-0.2233
108	tBodyAccJerk-std-X		Max. : 0.5443
109	tBodyAccJerk-std-Y		Min. :-0.9895
110	tBodyAccJerk-std-Y		1st Qu.:-0.9724
111	tBodyAccJerk-std-Y		Median :-0.7756
112	tBodyAccJerk-std-Y		Mean :-0.5654
113	tBodyAccJerk-std-Y		3rd Qu.:-0.1483
114	tBodyAccJerk-std-Y		Max. : 0.3553
115	tBodyAccJerk-std-Z		Min. :-0.99329
116	tBodyAccJerk-std-Z		1st Qu.:-0.98266
117	tBodyAccJerk-std-Z		Median :-0.88366
118	tBodyAccJerk-std-Z		Mean :-0.73596
119	tBodyAccJerk-std-Z		3rd Qu.:-0.51212
120	tBodyAccJerk-std-Z		Max. : 0.03102
121	tBodyGyro-mean-X		Min. :-0.20578
122	tBodyGyro-mean-X		1st Qu.:-0.04712
123	tBodyGyro-mean-X		Median :-0.02871
124	tBodyGyro-mean-X		Mean :-0.03244
125	tBodyGyro-mean-X		3rd Qu.:-0.01676
126	tBodyGyro-mean-X		Max. : 0.19270
127	tBodyGyro-mean-Y		Min. :-0.20421
128	tBodyGyro-mean-Y		1st Qu.:-0.08955
129	tBodyGyro-mean-Y		Median :-0.07318
130	tBodyGyro-mean-Y		Mean :-0.07426
131	tBodyGyro-mean-Y		3rd Qu.:-0.06113
132	tBodyGyro-mean-Y		Max. : 0.02747
133	tBodyGyro-mean-Z		Min. :-0.07245
134	tBodyGyro-mean-Z		1st Qu.: 0.07475
135	tBodyGyro-mean-Z		Median : 0.08512
136	tBodyGyro-mean-Z		Mean : 0.08744
137	tBodyGyro-mean-Z		3rd Qu.: 0.10177
138	tBodyGyro-mean-Z		Max. : 0.17910
139	tBodyGyro-std-X		Min. :-0.9943
140	tBodyGyro-std-X		1st Qu.:-0.9735
141	tBodyGyro-std-X		Median :-0.7890
142	tBodyGyro-std-X		Mean :-0.6916
143	tBodyGyro-std-X		3rd Qu.:-0.4414
144	tBodyGyro-std-X		Max. : 0.2677
145	tBodyGyro-std-Y		Min. :-0.9942
146	tBodyGyro-std-Y		1st Qu.:-0.9629
147	tBodyGyro-std-Y		Median :-0.8017
148	tBodyGyro-std-Y		Mean :-0.6533
149	tBodyGyro-std-Y		3rd Qu.:-0.4196
150	tBodyGyro-std-Y		Max. : 0.4765
151	tBodyGyro-std-Z		Min. :-0.9855
152	tBodyGyro-std-Z		1st Qu.:-0.9609
153	tBodyGyro-std-Z		Median :-0.8010
154	tBodyGyro-std-Z		Mean :-0.6164
155	tBodyGyro-std-Z		3rd Qu.:-0.3106
156	tBodyGyro-std-Z		Max. : 0.5649
157	tBodyGyroJerk-mean-X		Min. :-0.15721
158	tBodyGyroJerk-mean-X		1st Qu.:-0.10322
159	tBodyGyroJerk-mean-X		Median :-0.09868
160	tBodyGyroJerk-mean-X		Mean :-0.09606
161	tBodyGyroJerk-mean-X		3rd Qu.:-0.09110
162	tBodyGyroJerk-mean-X		Max. :-0.02209
163	tBodyGyroJerk-mean-Y		Min. :-0.07681
164	tBodyGyroJerk-mean-Y		1st Qu.:-0.04552
165	tBodyGyroJerk-mean-Y		Median :-0.04112
166	tBodyGyroJerk-mean-Y		Mean :-0.04269
167	tBodyGyroJerk-mean-Y		3rd Qu.:-0.03842
168	tBodyGyroJerk-mean-Y		Max. :-0.01320
169	tBodyGyroJerk-mean-Z		Min. :-0.092500
170	tBodyGyroJerk-mean-Z		1st Qu.:-0.061725
171	tBodyGyroJerk-mean-Z		Median :-0.053430
172	tBodyGyroJerk-mean-Z		Mean :-0.054802
173	tBodyGyroJerk-mean-Z		3rd Qu.:-0.048985
174	tBodyGyroJerk-mean-Z		Max. :-0.006941
175	tBodyGyroJerk-std-X		Min. :-0.9965
176	tBodyGyroJerk-std-X		1st Qu.:-0.9800
177	tBodyGyroJerk-std-X		Median :-0.8396
178	tBodyGyroJerk-std-X		Mean :-0.7036
179	tBodyGyroJerk-std-X		3rd Qu.:-0.4629
180	tBodyGyroJerk-std-X		Max. : 0.1791
181	tBodyGyroJerk-std-Y		Min. :-0.9971
182	tBodyGyroJerk-std-Y		1st Qu.:-0.9832
183	tBodyGyroJerk-std-Y		Median :-0.8942
184	tBodyGyroJerk-std-Y		Mean :-0.7636
185	tBodyGyroJerk-std-Y		3rd Qu.:-0.5861
186	tBodyGyroJerk-std-Y		Max. : 0.2959
187	tBodyGyroJerk-std-Z		Min. :-0.9954
188	tBodyGyroJerk-std-Z		1st Qu.:-0.9848
189	tBodyGyroJerk-std-Z		Median :-0.8610
190	tBodyGyroJerk-std-Z		Mean :-0.7096
191	tBodyGyroJerk-std-Z		3rd Qu.:-0.4741
192	tBodyGyroJerk-std-Z		Max. : 0.1932
193	tBodyAccMag-mean		Min. :-0.9865
194	tBodyAccMag-mean		1st Qu.:-0.9573
195	tBodyAccMag-mean		Median :-0.4829
196	tBodyAccMag-mean		Mean :-0.4973
197	tBodyAccMag-mean		3rd Qu.:-0.0919
198	tBodyAccMag-mean		Max. : 0.6446
199	tBodyAccMag-std		Min. :-0.9865
200	tBodyAccMag-std		1st Qu.:-0.9430
201	tBodyAccMag-std		Median :-0.6074
202	tBodyAccMag-std		Mean :-0.5439
203	tBodyAccMag-std		3rd Qu.:-0.2090
204	tBodyAccMag-std		Max. : 0.4284
205	tGravityAccMag-mean		Min. :-0.9865
206	tGravityAccMag-mean		1st Qu.:-0.9573
207	tGravityAccMag-mean		Median :-0.4829
208	tGravityAccMag-mean		Mean :-0.4973
209	tGravityAccMag-mean		3rd Qu.:-0.0919
210	tGravityAccMag-mean		Max. : 0.6446
211	tGravityAccMag-std		Min. :-0.9865
212	tGravityAccMag-std		1st Qu.:-0.9430
213	tGravityAccMag-std		Median :-0.6074
214	tGravityAccMag-std		Mean :-0.5439
215	tGravityAccMag-std		3rd Qu.:-0.2090
216	tGravityAccMag-std		Max. : 0.4284
217	tBodyAccJerkMag-mean		Min. :-0.9928
218	tBodyAccJerkMag-mean		1st Qu.:-0.9807
219	tBodyAccJerkMag-mean		Median :-0.8168
220	tBodyAccJerkMag-mean		Mean :-0.6079
221	tBodyAccJerkMag-mean		3rd Qu.:-0.2456
222	tBodyAccJerkMag-mean		Max. : 0.4345
223	tBodyAccJerkMag-std		Min. :-0.9946
224	tBodyAccJerkMag-std		1st Qu.:-0.9765
225	tBodyAccJerkMag-std		Median :-0.8014
226	tBodyAccJerkMag-std		Mean :-0.5842
227	tBodyAccJerkMag-std		3rd Qu.:-0.2173
228	tBodyAccJerkMag-std		Max. : 0.4506
229	tBodyGyroMag-mean		Min. :-0.9807
230	tBodyGyroMag-mean		1st Qu.:-0.9461
231	tBodyGyroMag-mean		Median :-0.6551
232	tBodyGyroMag-mean		Mean :-0.5652
233	tBodyGyroMag-mean		3rd Qu.:-0.2159
234	tBodyGyroMag-mean		Max. : 0.4180
235	tBodyGyroMag-std		Min. :-0.9814
236	tBodyGyroMag-std		1st Qu.:-0.9476
237	tBodyGyroMag-std		Median :-0.7420
238	tBodyGyroMag-std		Mean :-0.6304
239	tBodyGyroMag-std		3rd Qu.:-0.3602
240	tBodyGyroMag-std		Max. : 0.3000
241	tBodyGyroJerkMag-mean		Min. :-0.99732
242	tBodyGyroJerkMag-mean		1st Qu.:-0.98515
243	tBodyGyroJerkMag-mean		Median :-0.86479
244	tBodyGyroJerkMag-mean		Mean :-0.73637
245	tBodyGyroJerkMag-mean		3rd Qu.:-0.51186
246	tBodyGyroJerkMag-mean		Max. : 0.08758
247	tBodyGyroJerkMag-std		Min. :-0.9977
248	tBodyGyroJerkMag-std		1st Qu.:-0.9805
249	tBodyGyroJerkMag-std		Median :-0.8809
250	tBodyGyroJerkMag-std		Mean :-0.7550
251	tBodyGyroJerkMag-std		3rd Qu.:-0.5767
252	tBodyGyroJerkMag-std		Max. : 0.2502
253	fBodyAcc-mean-X		Min. :-0.9952
254	fBodyAcc-mean-X		1st Qu.:-0.9787
255	fBodyAcc-mean-X		Median :-0.7691
256	fBodyAcc-mean-X		Mean :-0.5758
257	fBodyAcc-mean-X		3rd Qu.:-0.2174
258	fBodyAcc-mean-X		Max. : 0.5370
259	fBodyAcc-mean-Y		Min. :-0.98903
260	fBodyAcc-mean-Y		1st Qu.:-0.95361
261	fBodyAcc-mean-Y		Median :-0.59498
262	fBodyAcc-mean-Y		Mean :-0.48873
263	fBodyAcc-mean-Y		3rd Qu.:-0.06341
264	fBodyAcc-mean-Y		Max. : 0.52419
265	fBodyAcc-mean-Z		Min. :-0.9895
266	fBodyAcc-mean-Z		1st Qu.:-0.9619
267	fBodyAcc-mean-Z		Median :-0.7236
268	fBodyAcc-mean-Z		Mean :-0.6297
269	fBodyAcc-mean-Z		3rd Qu.:-0.3183
270	fBodyAcc-mean-Z		Max. : 0.2807
271	fBodyAcc-std-X		Min. :-0.9966
272	fBodyAcc-std-X		1st Qu.:-0.9820
273	fBodyAcc-std-X		Median :-0.7470
274	fBodyAcc-std-X		Mean :-0.5522
275	fBodyAcc-std-X		3rd Qu.:-0.1966
276	fBodyAcc-std-X		Max. : 0.6585
277	fBodyAcc-std-Y		Min. :-0.99068
278	fBodyAcc-std-Y		1st Qu.:-0.94042
279	fBodyAcc-std-Y		Median :-0.51338
280	fBodyAcc-std-Y		Mean :-0.48148
281	fBodyAcc-std-Y		3rd Qu.:-0.07913
282	fBodyAcc-std-Y		Max. : 0.56019
283	fBodyAcc-std-Z		Min. :-0.9872
284	fBodyAcc-std-Z		1st Qu.:-0.9459
285	fBodyAcc-std-Z		Median :-0.6441
286	fBodyAcc-std-Z		Mean :-0.5824
287	fBodyAcc-std-Z		3rd Qu.:-0.2655
288	fBodyAcc-std-Z		Max. : 0.6871
289	fBodyAccJerk-mean-X		Min. :-0.9946
290	fBodyAccJerk-mean-X		1st Qu.:-0.9828
291	fBodyAccJerk-mean-X		Median :-0.8126
292	fBodyAccJerk-mean-X		Mean :-0.6139
293	fBodyAccJerk-mean-X		3rd Qu.:-0.2820
294	fBodyAccJerk-mean-X		Max. : 0.4743
295	fBodyAccJerk-mean-Y		Min. :-0.9894
296	fBodyAccJerk-mean-Y		1st Qu.:-0.9725
297	fBodyAccJerk-mean-Y		Median :-0.7817
298	fBodyAccJerk-mean-Y		Mean :-0.5882
299	fBodyAccJerk-mean-Y		3rd Qu.:-0.1963
300	fBodyAccJerk-mean-Y		Max. : 0.2767
301	fBodyAccJerk-mean-Z		Min. :-0.9920
302	fBodyAccJerk-mean-Z		1st Qu.:-0.9796
303	fBodyAccJerk-mean-Z		Median :-0.8707
304	fBodyAccJerk-mean-Z		Mean :-0.7144
305	fBodyAccJerk-mean-Z		3rd Qu.:-0.4697
306	fBodyAccJerk-mean-Z		Max. : 0.1578
307	fBodyAccJerk-std-X		Min. :-0.9951
308	fBodyAccJerk-std-X		1st Qu.:-0.9847
309	fBodyAccJerk-std-X		Median :-0.8254
310	fBodyAccJerk-std-X		Mean :-0.6121
311	fBodyAccJerk-std-X		3rd Qu.:-0.2475
312	fBodyAccJerk-std-X		Max. : 0.4768
313	fBodyAccJerk-std-Y		Min. :-0.9905
314	fBodyAccJerk-std-Y		1st Qu.:-0.9737
315	fBodyAccJerk-std-Y		Median :-0.7852
316	fBodyAccJerk-std-Y		Mean :-0.5707
317	fBodyAccJerk-std-Y		3rd Qu.:-0.1685
318	fBodyAccJerk-std-Y		Max. : 0.3498
319	fBodyAccJerk-std-Z		Min. :-0.993108
320	fBodyAccJerk-std-Z		1st Qu.:-0.983747
321	fBodyAccJerk-std-Z		Median :-0.895121
322	fBodyAccJerk-std-Z		Mean :-0.756489
323	fBodyAccJerk-std-Z		3rd Qu.:-0.543787
324	fBodyAccJerk-std-Z		Max. :-0.006236
325	fBodyGyro-mean-X		Min. :-0.9931
326	fBodyGyro-mean-X		1st Qu.:-0.9697
327	fBodyGyro-mean-X		Median :-0.7300
328	fBodyGyro-mean-X		Mean :-0.6367
329	fBodyGyro-mean-X		3rd Qu.:-0.3387
330	fBodyGyro-mean-X		Max. : 0.4750
331	fBodyGyro-mean-Y		Min. :-0.9940
332	fBodyGyro-mean-Y		1st Qu.:-0.9700
333	fBodyGyro-mean-Y		Median :-0.8141
334	fBodyGyro-mean-Y		Mean :-0.6767
335	fBodyGyro-mean-Y		3rd Qu.:-0.4458
336	fBodyGyro-mean-Y		Max. : 0.3288
337	fBodyGyro-mean-Z		Min. :-0.9860
338	fBodyGyro-mean-Z		1st Qu.:-0.9624
339	fBodyGyro-mean-Z		Median :-0.7909
340	fBodyGyro-mean-Z		Mean :-0.6044
341	fBodyGyro-mean-Z		3rd Qu.:-0.2635
342	fBodyGyro-mean-Z		Max. : 0.4924
343	fBodyGyro-std-X		Min. :-0.9947
344	fBodyGyro-std-X		1st Qu.:-0.9750
345	fBodyGyro-std-X		Median :-0.8086
346	fBodyGyro-std-X		Mean :-0.7110
347	fBodyGyro-std-X		3rd Qu.:-0.4813
348	fBodyGyro-std-X		Max. : 0.1966
349	fBodyGyro-std-Y		Min. :-0.9944
350	fBodyGyro-std-Y		1st Qu.:-0.9602
351	fBodyGyro-std-Y		Median :-0.7964
352	fBodyGyro-std-Y		Mean :-0.6454
353	fBodyGyro-std-Y		3rd Qu.:-0.4154
354	fBodyGyro-std-Y		Max. : 0.6462
355	fBodyGyro-std-Z		Min. :-0.9867
356	fBodyGyro-std-Z		1st Qu.:-0.9643
357	fBodyGyro-std-Z		Median :-0.8224
358	fBodyGyro-std-Z		Mean :-0.6577
359	fBodyGyro-std-Z		3rd Qu.:-0.3916
360	fBodyGyro-std-Z		Max. : 0.5225
361	fBodyAccMag-mean		Min. :-0.9868
362	fBodyAccMag-mean		1st Qu.:-0.9560
363	fBodyAccMag-mean		Median :-0.6703
364	fBodyAccMag-mean		Mean :-0.5365
365	fBodyAccMag-mean		3rd Qu.:-0.1622
366	fBodyAccMag-mean		Max. : 0.5866
367	fBodyAccMag-std		Min. :-0.9876
368	fBodyAccMag-std		1st Qu.:-0.9452
369	fBodyAccMag-std		Median :-0.6513
370	fBodyAccMag-std		Mean :-0.6210
371	fBodyAccMag-std		3rd Qu.:-0.3654
372	fBodyAccMag-std		Max. : 0.1787
373	fBodyBodyAccJerkMag-mean		Min. :-0.9940
374	fBodyBodyAccJerkMag-mean		1st Qu.:-0.9770
375	fBodyBodyAccJerkMag-mean		Median :-0.7940
376	fBodyBodyAccJerkMag-mean		Mean :-0.5756
377	fBodyBodyAccJerkMag-mean		3rd Qu.:-0.1872
378	fBodyBodyAccJerkMag-mean		Max. : 0.5384
379	fBodyBodyAccJerkMag-std		Min. :-0.9944
380	fBodyBodyAccJerkMag-std		1st Qu.:-0.9752
381	fBodyBodyAccJerkMag-std		Median :-0.8126
382	fBodyBodyAccJerkMag-std		Mean :-0.5992
383	fBodyBodyAccJerkMag-std		3rd Qu.:-0.2668
384	fBodyBodyAccJerkMag-std		Max. : 0.3163
385	fBodyBodyGyroMag-mean		Min. :-0.9865
386	fBodyBodyGyroMag-mean		1st Qu.:-0.9616
387	fBodyBodyGyroMag-mean		Median :-0.7657
388	fBodyBodyGyroMag-mean		Mean :-0.6671
389	fBodyBodyGyroMag-mean		3rd Qu.:-0.4087
390	fBodyBodyGyroMag-mean		Max. : 0.2040
391	fBodyBodyGyroMag-std		Min. :-0.9815
392	fBodyBodyGyroMag-std		1st Qu.:-0.9488
393	fBodyBodyGyroMag-std		Median :-0.7727
394	fBodyBodyGyroMag-std		Mean :-0.6723
395	fBodyBodyGyroMag-std		3rd Qu.:-0.4277
396	fBodyBodyGyroMag-std		Max. : 0.2367
397	fBodyBodyGyroJerkMag-mean		Min. :-0.9976
398	fBodyBodyGyroJerkMag-mean		1st Qu.:-0.9813
399	fBodyBodyGyroJerkMag-mean		Median :-0.8779
400	fBodyBodyGyroJerkMag-mean		Mean :-0.7564
401	fBodyBodyGyroJerkMag-mean		3rd Qu.:-0.5831
402	fBodyBodyGyroJerkMag-mean		Max. : 0.1466
403	fBodyBodyGyroJerkMag-std		Min. :-0.9976
404	fBodyBodyGyroJerkMag-std		1st Qu.:-0.9802
405	fBodyBodyGyroJerkMag-std		Median :-0.8941
406	fBodyBodyGyroJerkMag-std		Mean :-0.7715
407	fBodyBodyGyroJerkMag-std		3rd Qu.:-0.6081
408	fBodyBodyGyroJerkMag-std		Max. : 0.2878
