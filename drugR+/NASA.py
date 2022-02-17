import numpy as np
import os

def PRE_Positions(ss):
    kk=len(ss)
    A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z=[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]
    a=r=n=d=c=q=e=g=h=i=l=k=m=f=p=s=t=w=y=v=b=z=0
    for ii in range(0,kk):
        if len(A)>0:
           a=A[len(A)-1][0]
        if len(R)>0:
           r=R[len(R)-1][1]
        if len(N)>0:
           n=N[len(N)-1][2]
        if len(D)>0:
           d=D[len(D)-1][3]
        if len(C)>0:
           c=C[len(C)-1][4]
        if len(Q)>0:
           q=Q[len(Q)-1][5]
        if len(E)>0:
           e=E[len(E)-1][6]
        if len(G)>0:
           g=G[len(G)-1][7]
        if len(H)>0:
           h=H[len(H)-1][8]
        if len(I)>0:
           i=I[len(I)-1][9]
        if len(L)>0:
           l=L[len(L)-1][10]
        if len(K)>0:
           k=K[len(K)-1][11]
        if len(M)>0:
           m=M[len(M)-1][12]
        if len(F)>0:
           f=F[len(F)-1][13]
        if len(P)>0:
           p=P[len(P)-1][14]
        if len(S)>0:
           s=S[len(S)-1][15]
        if len(T)>0:
           t=T[len(T)-1][16]
        if len(W)>0:
           w=W[len(W)-1][17]
        if len(Y)>0:
           y=Y[len(Y)-1][18]
        if len(V)>0:
           v=V[len(V)-1][19]
        if len(B)>0:
           b=B[len(B)-1][20]
        if len(Z)>0:
           z=Z[len(Z)-1][21]
        if ss[ii]=='A':
            A.append([ii,r,n,d,c,q,e,g,h,i,l,k,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='R':
            R.append([a,ii,n,d,c,q,e,g,h,i,l,k,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='N':
            N.append([a,r,ii,d,c,q,e,g,h,i,l,k,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='D':
            D.append([a,r,n,ii,c,q,e,g,h,i,l,k,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='C':
            C.append([a,r,n,d,ii,q,e,g,h,i,l,k,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='Q':
            Q.append([a,r,n,d,c,ii,e,g,h,i,l,k,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='E':
            E.append([a,r,n,d,c,q,ii,g,h,i,l,k,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='G':
            G.append([a,r,n,d,c,q,e,ii,h,i,l,k,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='H':
            H.append([a,r,n,d,c,q,e,g,ii,i,l,k,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='I':
            I.append([a,r,n,d,c,q,e,g,h,ii,l,k,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='L':
            L.append([a,r,n,d,c,q,e,g,h,i,ii,k,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='K':
            K.append([a,r,n,d,c,q,e,g,h,i,l,ii,m,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='M':
            M.append([a,r,n,d,c,q,e,g,h,i,l,k,ii,f,p,s,t,w,y,v,b,z])
        if ss[ii]=='F':
            F.append([a,r,n,d,c,q,e,g,h,i,l,k,m,ii,p,s,t,w,y,v,b,z])
        if ss[ii]=='P':
            P.append([a,r,n,d,c,q,e,g,h,i,l,k,m,f,ii,s,t,w,y,v,b,z])
        if ss[ii]=='S':
            S.append([a,r,n,d,c,q,e,g,h,i,l,k,m,f,p,ii,t,w,y,v,b,z])
        if ss[ii]=='T':
            T.append([a,r,n,d,c,q,e,g,h,i,l,k,m,f,p,s,ii,w,y,v,b,z])
        if ss[ii]=='W':
            W.append([a,r,n,d,c,q,e,g,h,i,l,k,m,f,p,s,t,ii,y,v,b,z])
        if ss[ii]=='Y':
            Y.append([a,r,n,d,c,q,e,g,h,i,l,k,m,f,p,s,t,w,ii,v,b,z])
        if ss[ii]=='V':
            V.append([a,r,n,d,c,q,e,g,h,i,l,k,m,f,p,s,t,w,y,ii,b,z])
        if ss[ii]=='B':
            B.append([a,r,n,d,c,q,e,g,h,i,l,k,m,f,p,s,t,w,y,v,ii,z])
        if ss[ii]=='Z':
            Z.append([a,r,n,d,c,q,e,g,h,i,l,k,m,f,p,s,t,w,y,v,b,ii])
    return A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z


def SUC_Positions(S):
    S='0'+S[::-1]
    AS,RS,NS,DS,CS,QS,ES,GS,HS,IS,LS,KS,MS,FS,PS,SS,TS,WS,YS,VS,BS,ZS=PRE_Positions(S)
    for i in range(0,max(len(AS),len(RS),len(NS),len(DS),len(CS),len(QS),len(ES),len(GS),len(HS),len(IS),len(LS),len(KS),len(MS),len(FS),len(PS),len(SS),len(TS),len(WS),len(YS),len(VS),len(BS),len(ZS))):
        for j in range(0,22):
            if i<len(AS):
                if AS[i][j]>0:
                    AS[i][j]=len(S)-AS[i][j]-1
            if i<len(RS):
                if RS[i][j]>0:
                    RS[i][j]=len(S)-RS[i][j]-1
            if i<len(NS):
                if NS[i][j]>0:
                    NS[i][j]=len(S)-NS[i][j]-1
            if i<len(DS):
                if DS[i][j]>0:
                    DS[i][j]=len(S)-DS[i][j]-1
            if i<len(CS):
                if CS[i][j]>0:
                    CS[i][j]=len(S)-CS[i][j]-1
            if i<len(QS):
                if QS[i][j]>0:
                    QS[i][j]=len(S)-QS[i][j]-1
            if i<len(ES):
                if ES[i][j]>0:
                    ES[i][j]=len(S)-ES[i][j]-1
            if i<len(GS):
                if GS[i][j]>0:
                    GS[i][j]=len(S)-GS[i][j]-1
            if i<len(HS):
                if HS[i][j]>0:
                    HS[i][j]=len(S)-HS[i][j]-1
            if i<len(IS):
                if IS[i][j]>0:
                    IS[i][j]=len(S)-IS[i][j]-1
            if i<len(LS):
                if LS[i][j]>0:
                    LS[i][j]=len(S)-LS[i][j]-1
            if i<len(KS):
                if KS[i][j]>0:
                    KS[i][j]=len(S)-KS[i][j]-1
            if i<len(MS):
                if MS[i][j]>0:
                    MS[i][j]=len(S)-MS[i][j]-1
            if i<len(FS):
                if FS[i][j]>0:
                    FS[i][j]=len(S)-FS[i][j]-1
            if i<len(PS):
                if PS[i][j]>0:
                    PS[i][j]=len(S)-PS[i][j]-1
            if i<len(SS):
                if SS[i][j]>0:
                    SS[i][j]=len(S)-SS[i][j]-1
            if i<len(TS):
                if TS[i][j]>0:
                    TS[i][j]=len(S)-TS[i][j]-1
            if i<len(WS):
                if WS[i][j]>0:
                    WS[i][j]=len(S)-WS[i][j]-1
            if i<len(YS):
                if YS[i][j]>0:
                    YS[i][j]=len(S)-YS[i][j]-1
            if i<len(VS):
                if VS[i][j]>0:
                    VS[i][j]=len(S)-VS[i][j]-1
            if i<len(BS):
                if BS[i][j]>0:
                    BS[i][j]=len(S)-BS[i][j]-1
            if i<len(ZS):
                if ZS[i][j]>0:
                    ZS[i][j]=len(S)-ZS[i][j]-1
    AS=AS[::-1]
    RS=RS[::-1]
    NS=NS[::-1]
    DS=DS[::-1]
    CS=CS[::-1]
    QS=QS[::-1]
    ES=ES[::-1]
    GS=GS[::-1]
    HS=HS[::-1]
    IS=IS[::-1]
    LS=LS[::-1]
    KS=KS[::-1]
    MS=MS[::-1]
    FS=FS[::-1]
    PS=PS[::-1]
    SS=SS[::-1]
    TS=TS[::-1]
    WS=WS[::-1]
    YS=YS[::-1]
    VS=VS[::-1]
    BS=BS[::-1]
    ZS=ZS[::-1]
    return AS,RS,NS,DS,CS,QS,ES,GS,HS,IS,LS,KS,MS,FS,PS,SS,TS,WS,YS,VS,BS,ZS
            

def UpdatePara(MM,CO,ind):
    global Counter,A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z
    A=max(min(Counter[MM[CO][0]]-1,A),0)
    R=max(min(Counter[MM[CO][1]]-1,R),0)
    N=max(min(Counter[MM[CO][2]]-1,N),0)
    D=max(min(Counter[MM[CO][3]]-1,D),0)
    C=max(min(Counter[MM[CO][4]]-1,C),0)
    Q=max(min(Counter[MM[CO][5]]-1,Q),0)
    E=max(min(Counter[MM[CO][6]]-1,E),0)
    G=max(min(Counter[MM[CO][7]]-1,G),0)
    H=max(min(Counter[MM[CO][8]]-1,H),0)
    I=max(min(Counter[MM[CO][9]]-1,I),0)
    L=max(min(Counter[MM[CO][10]]-1,L),0)
    K=max(min(Counter[MM[CO][11]]-1,K),0)
    M=max(min(Counter[MM[CO][12]]-1,M),0)
    F=max(min(Counter[MM[CO][13]]-1,F),0)
    P=max(min(Counter[MM[CO][14]]-1,P),0)
    S=max(min(Counter[MM[CO][15]]-1,S),0)
    T=max(min(Counter[MM[CO][16]]-1,T),0)
    W=max(min(Counter[MM[CO][17]]-1,W),0)
    Y=max(min(Counter[MM[CO][18]]-1,Y),0)
    V=max(min(Counter[MM[CO][19]]-1,V),0)
    B=max(min(Counter[MM[CO][20]]-1,B),0)
    Z=max(min(Counter[MM[CO][21]]-1,Z),0)
    return A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z


def UpdateSucc(MM,MS,CO,ind,CU):
    global SC,Counter,penalty
    global A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z
    if (MS[CO][0]>0) & (CU !='A'):
        if SC[MM[CO][ind]]>=SC[MS[CO][0]]:
            A=max(min(Counter[MS[CO][0]]-1,A),0) 
    if (MS[CO][1]>0) & (CU !='R'):
        if SC[MM[CO][ind]]>=SC[MS[CO][1]]:
            R=max(min(Counter[MS[CO][1]]-1,R),0)
    if (MS[CO][2]>0) & (CU !='N'):
        if SC[MM[CO][ind]]>=SC[MS[CO][2]]:
            N=max(min(Counter[MS[CO][2]]-1,N),0)
    if (MS[CO][3]>0) & (CU !='D'):
        if SC[MM[CO][ind]]>=SC[MS[CO][3]]:
            D=max(min(Counter[MS[CO][3]]-1,D),0)
    if (MS[CO][4]>0) & (CU !='C'):
        if SC[MM[CO][ind]]>=SC[MS[CO][4]]:
            C=max(min(Counter[MS[CO][4]]-1,C),0)
    if (MS[CO][5]>0) & (CU !='Q'):
        if SC[MM[CO][ind]]>=SC[MS[CO][5]]:
            Q=max(min(Counter[MS[CO][5]]-1,Q),0)
    if (MS[CO][6]>0) & (CU !='E'):
        if SC[MM[CO][ind]]>=SC[MS[CO][6]]:
            E=max(min(Counter[MS[CO][6]]-1,E),0)
    if (MS[CO][7]>0) & (CU !='G'):
        if SC[MM[CO][ind]]>=SC[MS[CO][7]]:
            G=max(min(Counter[MS[CO][7]]-1,G),0)
    if (MS[CO][8]>0) & (CU !='H'):
        if SC[MM[CO][ind]]>=SC[MS[CO][8]]:
            H=max(min(Counter[MS[CO][8]]-1,H),0)
    if (MS[CO][9]>0) & (CU !='I'):
        if SC[MM[CO][ind]]>=SC[MS[CO][9]]:
            I=max(min(Counter[MS[CO][9]]-1,I),0)
    if (MS[CO][10]>0) & (CU !='L'):
        if SC[MM[CO][ind]]>=SC[MS[CO][10]]:
            L=max(min(Counter[MS[CO][10]]-1,L),0)
    if (MS[CO][11]>0) & (CU !='K'):
        if SC[MM[CO][ind]]>=SC[MS[CO][11]]:
            K=max(min(Counter[MS[CO][11]]-1,K),0)
    if (MS[CO][12]>0) & (CU !='M'):
        if SC[MM[CO][ind]]>=SC[MS[CO][12]]:
            M=max(min(Counter[MS[CO][12]]-1,M),0)
    if (MS[CO][13]>0) & (CU !='F'):
        if SC[MM[CO][ind]]>=SC[MS[CO][13]]:
            F=max(min(Counter[MS[CO][13]]-1,F),0)
    if (MS[CO][14]>0) & (CU !='P'):
        if SC[MM[CO][ind]]>=SC[MS[CO][14]]:
            P=max(min(Counter[MS[CO][14]]-1,P),0)
    if (MS[CO][15]>0) & (CU !='S'):
        if SC[MM[CO][ind]]>=SC[MS[CO][15]]:
            S=max(min(Counter[MS[CO][15]]-1,S),0)
    if (MS[CO][16]>0) & (CU !='T'):
        if SC[MM[CO][ind]]>=SC[MS[CO][16]]:
            T=max(min(Counter[MS[CO][16]]-1,T),0)
    if (MS[CO][17]>0) & (CU !='W'):
        if SC[MM[CO][ind]]>=SC[MS[CO][17]]:
            W=max(min(Counter[MS[CO][17]]-1,W),0)
    if (MS[CO][18]>0) & (CU !='Y'):
        if SC[MM[CO][ind]]>=SC[MS[CO][18]]:
            Y=max(min(Counter[MS[CO][18]]-1,Y),0)
    if (MS[CO][19]>0) & (CU !='V'):
        if SC[MM[CO][ind]]>=SC[MS[CO][19]]:
            V=max(min(Counter[MS[CO][19]]-1,V),0)
    if (MS[CO][20]>0) & (CU !='B'):
        if SC[MM[CO][ind]]>=SC[MS[CO][20]]:
            B=max(min(Counter[MS[CO][20]]-1,B),0)
    if (MS[CO][21]>0) & (CU !='Z'):
        if SC[MM[CO][ind]]>=SC[MS[CO][21]]:
            Z=max(min(Counter[MS[CO][21]]-1,Z),0)
    return A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z

def Score(inx,CU,PR,CO,MM,MMS,ind):
    global AB,TB,CB,GB,S1,S2,AS,TS,CS,GS,SC,Counter,match,penalty,TM,tim,RTB
    global A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z
    if len(MM)>0:
        ma=0
        st=0
        ci=Counter[inx]-1
        if S2[inx]=='A':
            st=AB[min(ci,len(AB)-1)][ind]
        elif S2[inx]=='R':
            st=RB[min(ci,len(RB)-1)][ind]
        elif S2[inx]=='N':
            st=NB[min(ci,len(NB)-1)][ind]
        elif S2[inx]=='D':
            st=DB[min(ci,len(DB)-1)][ind]
        elif S2[inx]=='C':
            st=CB[min(ci,len(CB)-1)][ind]
        elif S2[inx]=='Q':
            st=QB[min(ci,len(QB)-1)][ind]
        elif S2[inx]=='E':
            st=EB[min(ci,len(EB)-1)][ind]
        elif S2[inx]=='G':
            st=GB[min(ci,len(GB)-1)][ind]
        elif S2[inx]=='H':
            st=HB[min(ci,len(HB)-1)][ind]
        elif S2[inx]=='I':
            st=IB[min(ci,len(IB)-1)][ind]
        elif S2[inx]=='L':
            st=LB[min(ci,len(LB)-1)][ind]
        elif S2[inx]=='K':
            st=KB[min(ci,len(KB)-1)][ind]
        elif S2[inx]=='M':
            st=MB[min(ci,len(MB)-1)][ind]
        elif S2[inx]=='F':
            st=FB[min(ci,len(FB)-1)][ind]
        elif S2[inx]=='P':
            st=PB[min(ci,len(PB)-1)][ind]
        elif S2[inx]=='S':
            st=SB[min(ci,len(SB)-1)][ind]
        elif S2[inx]=='T':
            st=TB[min(ci,len(TB)-1)][ind]
        elif S2[inx]=='W':
            st=WB[min(ci,len(WB)-1)][ind]
        elif S2[inx]=='Y':
            st=YB[min(ci,len(YB)-1)][ind]
        elif S2[inx]=='V':
            st=VB[min(ci,len(VB)-1)][ind]
        elif S2[inx]=='B':
            st=BB[min(ci,len(BB)-1)][ind]
        elif S2[inx]=='Z':
            st=ZB[min(ci,len(ZB)-1)][ind]
        CO=max(Counter[st]-RTB,CO)
        co=CO
        k=CO
        cix=inx
        pr=0
        if (CO>0)&(CO<len(MM)):
            pr=SC[MM[CO-1][ind]]-(MM[CO][ind]-MM[CO-1][ind]-1)*penalty
        while (CO<len(MM)):
            ls=[]
            for j in range(0,22):
                if j!=ind:
                    ls.append(SC[MM[CO][j]]-(MM[CO][ind]-MM[CO][j]-1)*penalty)
            ls.append(pr)
            if CO>0:
                pr=SC[MM[CO][ind]]-(MM[CO][ind]-MM[CO-1][ind]-1)*penalty
            else:
                pr=SC[MM[CO][ind]]
            m=max(ls)+match
            SC[MM[CO][ind]]=max(m,match,SC[MM[CO][ind]])
            A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z=UpdateSucc(MM,MMS,CO,ind,CU)
            if SC[MM[CO][ind]]>ma:
                ma=SC[MM[CO][ind]]
                k=CO
            if (MM[CO][ind]>cix):
                SC[MM[CO][ind]]=max(SC[MM[CO][ind]],SC[cix]-(MM[CO][ind]-cix-1)*penalty+match)
                if SC[MM[CO][ind]]>ma:
                    k=CO
                if SC[MM[k][ind]]>SC[cix]:
                    inx=MM[k][ind]
                else:
                    inx=cix
                break
            CO=CO+1
            if CO>=len(MM):
                if (SC[MM[k][ind]]>=SC[cix])&(MM[k][ind]<cix):
                    inx=MM[k][ind]
                    A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z=UpdatePara(MM,k,ind)
                break
        if CU=='A':
            A=min(A+1,len(MM)-1)
        elif CU=='R':
            R=min(R+1,len(MM)-1)
        elif CU=='N':
            N=min(N+1,len(MM)-1)
        elif CU=='D':
            D=min(D+1,len(MM)-1)
        elif CU=='C':
            C=min(C+1,len(MM)-1)
        elif CU=='Q':
            Q=min(Q+1,len(MM)-1)
        elif CU=='E':
            E=min(E+1,len(MM)-1)
        elif CU=='G':
            G=min(G+1,len(MM)-1)
        elif CU=='H':
            H=min(H+1,len(MM)-1)
        elif CU=='I':
            I=min(I+1,len(MM)-1)
        elif CU=='L':
            L=min(L+1,len(MM)-1)
        elif CU=='K':
            K=min(K+1,len(MM)-1)
        elif CU=='M':
            M=min(M+1,len(MM)-1)
        elif CU=='F':
            F=min(F+1,len(MM)-1)
        elif CU=='P':
            P=min(P+1,len(MM)-1)
        elif CU=='S':
            S=min(S+1,len(MM)-1)
        elif CU=='T':
            T=min(T+1,len(MM)-1)
        elif CU=='W':
            W=min(W+1,len(MM)-1)
        elif CU=='Y':
            Y=min(Y+1,len(MM)-1)
        elif CU=='V':
            V=min(V+1,len(MM)-1)
        elif CU=='B':
            B=min(B+1,len(MM)-1)
        elif CU=='Z':
            Z=min(Z+1,len(MM)-1)
    return inx


def initial(S2,S1):
    global Counter,SC,TM,A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z
    A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z=0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    a=r=n=d=c=q=e=g=h=i=l=k=m=f=p=s=t=w=y=v=b=z=0
    SC=[]
    Counter=[]
    Counter.append(0)
    TM=[]
    for ii in range(0,len(S2)):
        SC.append(0)
        if S2[ii]=='A':
            a=a+1
            Counter.append(a)
        elif S2[ii]=='R':
            r=r+1
            Counter.append(r)
        elif S2[ii]=='N':
            n=n+1
            Counter.append(n)
        elif S2[ii]=='D':
            d=d+1
            Counter.append(d)
        elif S2[ii]=='C':
            c=c+1
            Counter.append(c)
        elif S2[ii]=='Q':
            q=q+1
            Counter.append(q)
        elif S2[ii]=='E':
            e=e+1
            Counter.append(e)
        elif S2[ii]=='G':
            g=g+1
            Counter.append(g)
        elif S2[ii]=='H':
            h=h+1
            Counter.append(h)
        elif S2[ii]=='I':
            i=i+1
            Counter.append(i)
        elif S2[ii]=='L':
            l=l+1
            Counter.append(l)
        elif S2[ii]=='K':
            k=k+1
            Counter.append(k)
        elif S2[ii]=='M':
            m=m+1
            Counter.append(m)
        elif S2[ii]=='F':
            f=f+1
            Counter.append(f)
        elif S2[ii]=='P':
            p=p+1
            Counter.append(p)
        elif S2[ii]=='S':
            s=s+1
            Counter.append(s)
        elif S2[ii]=='T':
            t=t+1
            Counter.append(t)
        elif S2[ii]=='W':
            w=w+1
            Counter.append(w)
        elif S2[ii]=='Y':
            y=y+1
            Counter.append(y)
        elif S2[ii]=='V':
            v=v+1
            Counter.append(v)
        elif S2[ii]=='B':
            b=b+1
            Counter.append(b)
        elif S2[ii]=='Z':
            z=z+1
            Counter.append(z)
        TM.append(0)
    inx=0
    return inx



def NASA():
    global AB,RB,NB,DB,CB,QB,EB,GB,HB,IB,LB,KB,MB,FB,PB,SB,TB,WB,YB,VB,BB,ZB,S1,S2,AS,RS,NS,DS,CS,QS,ES,GS,HS,IS,LS,KS,MS,FS,PS,SS,TS,WS,YS,VS,BS,ZS,SC,Counter,tim,TM
    global A,R,N,D,C,Q,E,G,H,I,L,K,M,F,P,S,T,W,Y,V,B,Z
    inx=initial(S2,S1)
    for i in range(1,len(S1)):
        tim=i
        if S1[i]=='A':
            inx=Score(inx,'A',S1[i-1],A,AB,AS,0)
        elif S1[i]=='R':
            inx=Score(inx,'R',S1[i-1],R,RB,RS,1)
        elif S1[i]=='N':
            inx=Score(inx,'N',S1[i-1],N,NB,NS,2)
        elif S1[i]=='D':
            inx=Score(inx,'D',S1[i-1],D,DB,DS,3)
        elif S1[i]=='C':
            inx=Score(inx,'C',S1[i-1],C,CB,CS,4)
        elif S1[i]=='Q':
            inx=Score(inx,'Q',S1[i-1],Q,QB,QS,5)
        elif S1[i]=='E':
            inx=Score(inx,'E',S1[i-1],E,EB,ES,6)
        elif S1[i]=='G':
            inx=Score(inx,'G',S1[i-1],G,GB,GS,7)
        elif S1[i]=='H':
            inx=Score(inx,'H',S1[i-1],H,HB,HS,8)
        elif S1[i]=='I':
            inx=Score(inx,'I',S1[i-1],I,IB,IS,9)
        elif S1[i]=='L':
            inx=Score(inx,'L',S1[i-1],L,LB,LS,10)
        elif S1[i]=='K':
            inx=Score(inx,'K',S1[i-1],K,KB,KS,11)
        elif S1[i]=='M':
            inx=Score(inx,'M',S1[i-1],M,MB,MS,12)
        elif S1[i]=='F':
            inx=Score(inx,'F',S1[i-1],F,FB,FS,13)
        elif S1[i]=='P':
            inx=Score(inx,'P',S1[i-1],P,PB,PS,14)
        elif S1[i]=='S':
            inx=Score(inx,'S',S1[i-1],S,SB,SS,15)
        elif S1[i]=='T':
            inx=Score(inx,'T',S1[i-1],T,TB,TS,16)
        elif S1[i]=='W':
            inx=Score(inx,'W',S1[i-1],W,WB,WS,17)
        elif S1[i]=='Y':
            inx=Score(inx,'Y',S1[i-1],Y,YB,YS,18)
        elif S1[i]=='V':
            inx=Score(inx,'V',S1[i-1],V,VB,VS,19)
        elif S1[i]=='B':
            inx=Score(inx,'B',S1[i-1],B,BB,BS,20)
        elif S1[i]=='Z':
            inx=Score(inx,'Z',S1[i-1],Z,ZB,ZS,21)
    return max(SC)
            


def CallNasa(MAT,PEN,rtb,p1,p2):
    global AB,RB,NB,DB,CB,QB,EB,GB,HB,IB,LB,KB,MB,FB,PB,SB,TB,WB,YB,VB,BB,ZB,S1,S2,FSEQ
    global AS,RS,NS,DS,CS,QS,ES,GS,HS,IS,LS,KS,MS,FS,PS,SS,TS,WS,YS,VS,BS,ZS,SC,Counter,RTB
    global match,penalty
    match=MAT
    penalty=PEN
    RTB=rtb
    S1='0'+p1
    S2='0'+p2
    AB,RB,NB,DB,CB,QB,EB,GB,HB,IB,LB,KB,MB,FB,PB,SB,TB,WB,YB,VB,BB,ZB=PRE_Positions(S2)
    AS,RS,NS,DS,CS,QS,ES,GS,HS,IS,LS,KS,MS,FS,PS,SS,TS,WS,YS,VS,BS,ZS=SUC_Positions(S2)
    score=NASA()
    print("NASA Score: "+str(score)+"\n")
    return ShowSequence(SC,p1,p2,score)
    #return FSEQ

def ShortAlign(p1,p2):
    LC=np.zeros([len(p1)+1,len(p2)+1])
    for i in range(1,len(p1)+1):
        for j in range(1,len(p2)+1):
            if p1[i-1]==p2[j-1]:
                LC[i][j]=LC[i-1][j-1]+1
            else:
                LC[i][j]=max(LC[i-1][j],LC[i][j-1])
    i=len(p1)
    j=len(p2)
    fs=''
    while LC[i][j]>0:
        if p1[i-1]==p2[j-1]:
            fs=p1[i-1]+fs
            i=i-1
            j=j-1
        else:
            if LC[i][j]==LC[i-1][j]:
                i=i-1
            else:
                j=j-1
    return fs


def ShowSequence(SC,p1,p2,score):
    fs=''
    ind=SC.index(score)-1
    c1=len(p1)-1
    while p1[c1]!=p2[ind]:
        c1=c1-1
    while (c1>=0)&(ind>=0):
        pp1=''
        pp2=''
        while (p1[c1]!=p2[ind]):
            pp1=p1[c1]+pp1
            pp2=p2[ind]+pp2
            c1=c1-1
            ind=ind-1
            if (c1<0)|(ind<0):
                break
        if len(pp1)>1:
            rs=ShortAlign(pp1,pp2)
            fs=rs+fs
        if (p1[c1]==p2[ind])&(c1>=0)&(ind>=0):
            fs=p1[c1]+fs
        c1=c1-1
        ind=ind-1
    pp1=''
    pp2=''
    c1=0
    c2=0
    for i in range(0,len(fs)):
        while p1[c1]!=fs[i]:
            pp1=pp1+p1[c1]
            if p1[c1]==p2[c2]:
                pp2=pp2+p2[c2]
                c2=c2+1
            else:
                pp2=pp2+'-'
            c1=c1+1
        while p2[c2]!=fs[i]:
            pp2=pp2+p2[c2]
            if p1[c1]==p2[c2]:
                pp1=pp1+p1[c1]
                c1=c1+1
            else:
                pp1=pp1+'-'
            c2=c2+1
        pp1=pp1+fs[i]
        pp2=pp2+fs[i]
        c1=c1+1
        c2=c2+1
    return pp1,pp2

    
p1='MASHRLLLLCLAGLVFVSEA'
p2='MRHLGAFLFLLGVLGALTEMCEIPEMDSHLVEKLGQHLLPWMDRLSLEHLNPSIYVGLRLSSLQAGTKEDLYLHSLKLGYQQCLLGSAFSEDDGDCQGKPSMGQLALYLLALRANCEFVRGHKGDRLVSQLKWFLEDEKRAIGHDHKGHPHTSYYQYGLGILALCLHQKRVHDSVVDKLLYAVEPFHQGHHSVDTAAMAGLAFTCLKRSNFNPGRRQRITMAIRTVREEILKAQTPEGHFGNVYSTPLALQFLMTSPMRGAELGTACLKARVALLASLQDGAFQNALMISQLLPVLNHKTYIDLIFPDCLAPRVMLEPAAETIPQTQEIISVTLQVLSLLPPYRQSISVLAGSTVEDVLKKAHELGGFTYETQASLSGPYLTSVMGKAAGEREFWQLLRDPNTPLLQGIADYRPKDGETIELRLVSW'
MAT=1
PEN=0
rtb=30
FinalSeq=CallNasa(MAT,PEN,rtb,p1,p2)
print(FinalSeq)
