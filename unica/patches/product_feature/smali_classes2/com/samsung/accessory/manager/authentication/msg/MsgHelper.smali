.class public Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "accauthentication_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native ccic_close()I
.end method

.method public native ccic_open()I
.end method

.method public native genRandom()[B
.end method

.method public native ioctl_longDataRead()[B
.end method

.method public native ioctl_longDataRead_batt()[B
.end method

.method public native ioctl_longDataWrite([B)I
.end method

.method public native ioctl_longDataWrite_batt([B)I
.end method

.method public native verify_certificate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native verify_rand_signature(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native wirelesscharger_open()I
.end method
