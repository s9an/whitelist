-- This file was generated using Luraph Obfuscator v98.5.5

return(function(a,b)local c=select;local d=string.byte;local e=string.sub;local f=string.char;local g={{b="OpArgR",c="OpArgN"},{b="OpArgK",c="OpArgN"},{b="OpArgU",c="OpArgU"},{b="OpArgR",c="OpArgN"},{b="OpArgU",c="OpArgN"},{b="OpArgK",c="OpArgN"},{b="OpArgR",c="OpArgK"},{b="OpArgK",c="OpArgN"},{b="OpArgU",c="OpArgN"},{b="OpArgK",c="OpArgK"},{b="OpArgU",c="OpArgU"},{b="OpArgR",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgR",c="OpArgN"},{b="OpArgR",c="OpArgN"},{b="OpArgR",c="OpArgN"},{b="OpArgR",c="OpArgR"},{b="OpArgR",c="OpArgN"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgR",c="OpArgU"},{b="OpArgR",c="OpArgU"},{b="OpArgU",c="OpArgU"},{b="OpArgU",c="OpArgU"},{b="OpArgU",c="OpArgN"},{b="OpArgR",c="OpArgN"},{b="OpArgR",c="OpArgN"},{b="OpArgN",c="OpArgU"},{b="OpArgU",c="OpArgU"},{b="OpArgN",c="OpArgN"},{b="OpArgU",c="OpArgN"},{b="OpArgU",c="OpArgN"}}local h={"ABC","ABx","ABC","ABC","ABC","ABx","ABC","ABx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","AsBx","ABC","ABC","ABC","ABx","ABC"}local i=""for j,k in pairs(a)do i=i..f(k)end;a=i;local function l(m,n,o)if o then local p=m/2^(n-1)%2^(o-1-(n-1)+1)return p-p%1 else local q=2^(n-1)if m%(q+q)>=q then return 1 else return 0 end end end;local function r(s)local t=1;local u;local v;local function w()local x=d(s,t,t)t=t+1;return x end;local function y()local k,z,A,B=d(s,t,t+3)t=t+4;return B*16777216+A*65536+z*256+k end;local function C()return y()*4294967296+y()end;local function D()local E=y()local F=y()local G=1;local H=l(F,1,20)*2^32+E;local I=l(F,21,31)local J=(-1)^l(F,32)if I==0 then if H==0 then return J*0 else I=1;G=0 end elseif I==2047 then if H==0 then return J*1/0 else return J*0/0 end end;return math.ldexp(J,I-1023)*(G+H/2^52)end;local function K(L)local M;if L then M=e(s,t,t+L-1)t=t+L else L=u()if L==0 then return end;M=e(s,t,t+L-1)t=t+L end;return M end;local function N()local O={}local P={}local Q={}local R={Instr=O,Const=P,Proto=Q,Lines={},Name=K(),FirstL=v(),LastL=v(),Upvals=w(),Args=w(),Vargs=w(),Stack=w()}local S={}if R.Name then R.Name=e(R.Name,1,-2)end;for T=1,v()do local U=y()local V=l(U,1,6)local W=h[V+1]local X=g[V+1]local Y={Enum=V,Value=U,l(U,7,14)}if W=="ABC"then Y[2]=l(U,24,32)Y[3]=l(U,15,23)elseif W=="ABx"then Y[2]=l(U,15,32)elseif W=="AsBx"then Y[2]=l(U,15,32)-131071 end;do if V==26 or V==27 then Y[3]=Y[3]==0 end;if V>=23 and V<=25 then Y[1]=Y[1]~=0 end;if X.b=="OpArgK"then Y[3]=Y[3]or false;if Y[2]>=256 then local Z=Y[2]-256;Y[4]=Z;local _=S[Z]if not _ then _={}S[Z]=_ end;_[#_+1]={Inst=Y,Register=4}end end;if X.c=="OpArgK"then Y[4]=Y[4]or false;if Y[3]>=256 then local Z=Y[3]-256;Y[5]=Z;local _=S[Z]if not _ then _={}S[Z]=_ end;_[#_+1]={Inst=Y,Register=5}end end end;O[T]=Y end;for T=1,v()do local W=w()local Z;if W==1 then Z=w()~=0 elseif W==3 then Z=D()elseif W==4 then Z=e(K(),1,-2)end;local a0=S[T-1]if a0 then for a1=1,#a0 do a0[a1].Inst[a0[a1].Register]=Z end end;P[T-1]=Z end;for T=1,v()do Q[T-1]=N()end;do local j=R.Lines;for T=1,v()do j[T]=y()end;for a2=1,v()do K()y()y()end;for a2=1,v()do K()end end;return R end;do assert(K(4)=="\27Lua","Lua bytecode expected.")assert(w()==0x51,"Only Lua 5.1 is supported.")w()w()local a3=w()local a4=w()if a3==4 then v=y elseif a3==8 then v=C else error("Integer size not supported",2)end;if a4==4 then u=y elseif a4==8 then u=C else error("Sizet size not supported",2)end;assert(K(3)=="\4\8\0","Unsupported bytecode target platform")end;return N()end;local function a5(...)return c("#",...),{...}end;local function a6(R,b,a7)local O=R.Instr;local P=R.Const;local Q=R.Proto;local function a8(a9,aa)local ab=R.Name or"Code"local ac=R.Lines[aa]or"?"error(string.format("%s:%s: %s",ab,ac,tostring(a9)),0)end;return function(...)local ad,ae=1,-1;local af,ag={},c("#",...)-1;local ah={}local ai={}local aj=setmetatable({},{__index=ah,__newindex=function(a2,ak,al)if ak>ae then ae=ak end;ah[ak]=al end})local function am()local Y,an;while true do Y=O[ad]an=Y.Enum;ad=ad+1;if an==0 then aj[Y[1]]=aj[Y[2]]elseif an==1 then aj[Y[1]]=P[Y[2]]elseif an==2 then aj[Y[1]]=Y[2]~=0;if Y[3]~=0 then ad=ad+1 end elseif an==3 then local ao=aj;for T=Y[1],Y[2]do ao[T]=nil end elseif an==4 then aj[Y[1]]=a7[Y[2]]elseif an==5 then aj[Y[1]]=b[P[Y[2]]]elseif an==6 then local ao=aj;ao[Y[1]]=ao[Y[2]][Y[5]or ao[Y[3]]]elseif an==7 then b[P[Y[2]]]=aj[Y[1]]elseif an==8 then a7[Y[2]]=aj[Y[1]]elseif an==9 then local ao=aj;ao[Y[1]][Y[4]or ao[Y[2]]]=Y[5]or ao[Y[3]]elseif an==10 then aj[Y[1]]={}elseif an==11 then local ao=aj;local ap=Y[1]local aq=ao[Y[2]]local ar=Y[5]or ao[Y[3]]ao[ap+1]=aq;ao[ap]=aq[ar]elseif an==12 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])+(Y[5]or ao[Y[3]])elseif an==13 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])-(Y[5]or ao[Y[3]])elseif an==14 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])*(Y[5]or ao[Y[3]])elseif an==15 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])/(Y[5]or ao[Y[3]])elseif an==16 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])%(Y[5]or ao[Y[3]])elseif an==17 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])^(Y[5]or ao[Y[3]])elseif an==18 then aj[Y[1]]=-aj[Y[2]]elseif an==19 then aj[Y[1]]=not aj[Y[2]]elseif an==20 then aj[Y[1]]=#aj[Y[2]]elseif an==21 then local ao=aj;local aq=Y[2]local as=ao[aq]for T=aq+1,Y[3]do as=as..ao[T]end;aj[Y[1]]=as elseif an==22 then ad=ad+Y[2]elseif an==23 then local ao=aj;local aq=Y[4]or ao[Y[2]]local ar=Y[5]or ao[Y[3]]if aq==ar~=Y[1]then ad=ad+1 end elseif an==24 then local ao=aj;local aq=Y[4]or ao[Y[2]]local ar=Y[5]or ao[Y[3]]if aq<ar~=Y[1]then ad=ad+1 end elseif an==25 then local ao=aj;local aq=Y[4]or ao[Y[2]]local ar=Y[5]or ao[Y[3]]if aq<=ar~=Y[1]then ad=ad+1 end elseif an==26 then if Y[3]then if aj[Y[1]]then ad=ad+1 end elseif aj[Y[1]]then else ad=ad+1 end elseif an==27 then local aq=aj[Y[2]]if Y[3]then if aq then ad=ad+1 else aj[Y[1]]=aq end elseif aq then aj[Y[1]]=aq else ad=ad+1 end elseif an==28 then local ap=Y[1]local aq=Y[2]local ar=Y[3]local ao=aj;local at,au;local av,aw;at={}if aq~=1 then if aq~=0 then av=ap+aq-1 else av=ae end;aw=0;for T=ap+1,av do aw=aw+1;at[aw]=ao[T]end;av,au=a5(ao[ap](unpack(at,1,av-ap)))else av,au=a5(ao[ap]())end;ae=ap-1;if ar~=1 then if ar~=0 then av=ap+ar-2 else av=av+ap-1 end;aw=0;for T=ap,av do aw=aw+1;ao[T]=au[aw]end end elseif an==29 then local ap=Y[1]local aq=Y[2]local ao=aj;local at,au;local av;local ax=0;at={}if aq~=1 then if aq~=0 then av=ap+aq-1 else av=ae end;for T=ap+1,av do at[#at+1]=ao[T]end;au={ao[ap](unpack(at,1,av-ap))}else au={ao[ap]()}end;for ay in pairs(au)do if ay>ax then ax=ay end end;return au,ax elseif an==30 then local ap=Y[1]local aq=Y[2]local ao=aj;local aw,az;local av;if aq==1 then return elseif aq==0 then av=ae else av=ap+aq-2 end;az={}aw=0;for T=ap,av do aw=aw+1;az[aw]=ao[T]end;return az,aw elseif an==31 then local ap=Y[1]local ao=aj;local aA=ao[ap+2]local ay=ao[ap]+aA;ao[ap]=ay;if aA>0 then if ay<=ao[ap+1]then ad=ad+Y[2]ao[ap+3]=ay end else if ay>=ao[ap+1]then ad=ad+Y[2]ao[ap+3]=ay end end elseif an==32 then local ap=Y[1]local ao=aj;ao[ap]=assert(tonumber(ao[ap]),"`for` initial value must be a number")ao[ap+1]=assert(tonumber(ao[ap+1]),"`for` limit must be a number")ao[ap+2]=assert(tonumber(ao[ap+2]),"`for` step must be a number")ao[ap]=ao[ap]-ao[ap+2]ad=ad+Y[2]elseif an==33 then local ap=Y[1]local ar=Y[3]local ao=aj;local aB=ap+2;local aC={ao[ap](ao[ap+1],ao[ap+2])}for T=1,ar do aj[aB+T]=aC[T]end;if ao[ap+3]~=nil then ao[ap+2]=ao[ap+3]else ad=ad+1 end elseif an==34 then local ap=Y[1]local aq=Y[2]local ar=Y[3]local ao=aj;if ar==0 then ad=ad+1;ar=O[ad].Value end;local aB=(ar-1)*50;local aD=ao[ap]if aq==0 then aq=ae-ap end;for T=1,aq do aD[aB+T]=ao[ap+T]end elseif an==35 then local ap=Y[1]local aE={}for T=1,#ai do local aF=ai[T]for aG=0,#aF do local aH=aF[aG]local ao=aH[1]local t=aH[2]if ao==aj and t>=ap then aE[t]=ao[t]aH[1]=aE end end end elseif an==36 then local aI=Q[Y[2]]local ao=aj;local aJ;local aK;if aI.Upvals~=0 then aJ={}aK=setmetatable({},{__index=function(a2,ak)local aL=aJ[ak]return aL[1][aL[2]]end,__newindex=function(a2,ak,al)local aL=aJ[ak]aL[1][aL[2]]=al end})for T=1,aI.Upvals do local aM=O[ad]if aM.Enum==0 then aJ[T-1]={ao,aM[2]}elseif aM.Enum==4 then aJ[T-1]={a7,aM[2]}end;ad=ad+1 end;ai[#ai+1]=aJ end;ao[Y[1]]=a6(aI,b,aK)elseif an==37 then local ap=Y[1]local aq=Y[2]local ao,aN=aj,af;ae=ap-1;for T=ap,ap+(aq>0 and aq-1 or ag)do ao[T]=aN[T-ap]end end end end;local at={...}for T=0,ag do if T>=R.Args then af[T-R.Args]=at[T+1]else aj[T]=at[T+1]end end;local ap,aq,ar=pcall(am)if ap then if aq and ar>0 then return unpack(aq,1,ar)end;return else a8(aq,ad-1)end end end;local aO=r(a)return a6(aO,b or getfenv(0)),aO end)({27,76,117,97,81,0,1,4,4,4,8,0,32,0,0,0,64,73,114,111,110,98,114,101,119,47,110,101,116,99,111,114,101,97,112,112,50,46,48,47,111,117,116,46,108,117,97,0,0,0,0,0,0,0,0,0,0,0,2,4,18,0,0,0,5,0,0,0,69,64,0,0,92,128,128,0,70,128,192,0,129,192,0,0,85,128,128,0,129,0,1,0,28,64,128,1,5,64,1,0,6,128,65,0,11,192,65,0,129,0,2,0,202,192,0,0,201,128,194,132,201,0,195,133,201,128,195,134,28,64,0,2,30,0,128,0,15,0,0,0,4,10,0,0,0,119,114,105,116,101,102,105,108,101,0,4,8,0,0,0,103,101,116,103,101,110,118,0,4,8,0,0,0,65,117,116,104,75,101,121,0,4,5,0,0,0,46,116,120,116,0,4,152,0,0,0,84,104,105,115,32,105,115,32,121,111,117,114,32,101,110,99,111,100,101,100,32,73,80,32,97,100,100,114,101,115,115,44,32,100,111,32,110,111,116,32,115,104,97,114,101,32,116,104,105,115,32,116,111,32,97,110,121,98,111,100,121,32,101,108,115,101,32,40,68,79,32,78,79,84,32,68,69,76,69,84,69,32,79,82,32,82,69,78,65,77,69,32,84,72,73,83,32,84,88,84,32,70,73,76,69,32,79,84,72,69,82,87,73,83,69,32,89,79,85,32,87,73,76,76,32,76,79,83,69,32,65,67,67,69,83,83,32,84,79,32,84,72,69,32,83,67,82,73,80,84,41,0,4,5,0,0,0,103,97,109,101,0,4,11,0,0,0,83,116,97,114,116,101,114,71,117,105,0,4,8,0,0,0,83,101,116,67,111,114,101,0,4,17,0,0,0,83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110,0,4,6,0,0,0,84,105,116,108,101,0,4,14,0,0,0,65,117,116,104,101,116,105,99,97,116,105,111,110,0,4,5,0,0,0,84,101,120,116,0,4,23,0,0,0,89,111,117,32,97,114,101,32,110,111,119,32,119,104,105,116,101,108,105,115,116,101,0,4,9,0,0,0,68,117,114,97,116,105,111,110,0,3,0,0,0,0,0,0,36,64,0,0,0,0,18,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,3,0,0,0,3,0,0,0,3,0,0,0,3,0,0,0,3,0,0,0,4,0,0,0,5,0,0,0,6,0,0,0,3,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0})()
