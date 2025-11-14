.class public final Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mChallenge:[B

.field public final mSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field public mVerifiableIntegrity:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    if-eqz p2, :cond_37

    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v4, "SHA-224"

    const-string/jumbo v5, "SHA-256"

    const-string/jumbo v2, "NONE"

    const-string/jumbo v3, "SHA-1"

    const-string/jumbo v6, "SHA-384"

    const-string/jumbo v7, "SHA-512"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput-object p2, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mChallenge:[B

    return-void

    :cond_37
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "challenge == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "alias must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
