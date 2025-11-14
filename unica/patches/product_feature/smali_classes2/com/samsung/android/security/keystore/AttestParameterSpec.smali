.class public final Lcom/samsung/android/security/keystore/AttestParameterSpec;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAlgorithm:Ljava/lang/String;

.field public final mChallenge:[B

.field public final mSAKUidRequired:Z

.field public final mSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field public final mVerifiableIntegrity:Z


# direct methods
.method public constructor <init>([BZZLandroid/security/keystore/KeyGenParameterSpec;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mAlgorithm:Ljava/lang/String;

    goto :goto_10

    :cond_e
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mAlgorithm:Ljava/lang/String;

    :goto_10
    if-eqz p1, :cond_19

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mChallenge:[B

    iput-boolean p2, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mVerifiableIntegrity:Z

    iput-boolean p3, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSAKUidRequired:Z

    iput-object p4, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-void
.end method
