.class public Lcom/samsung/android/battauthmanager/BattAuthHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "authentication_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native makeChallengeReq(II)[B
.end method

.method public native makeGetCertReq(IIIIII)[B
.end method

.method public native makeGetDigestsReq(BI)[B
.end method

.method public native readDataFromBattMisc()[B
.end method

.method public native verifyChallengeAuth([B[B[B[B)Z
.end method

.method public native verifyWpcCertChain([B)[B
.end method

.method public native writeDataToBattMisc([B)I
.end method
