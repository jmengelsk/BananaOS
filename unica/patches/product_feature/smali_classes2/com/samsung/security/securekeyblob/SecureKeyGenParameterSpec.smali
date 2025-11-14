.class public final Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBlockModes:[Ljava/lang/String;

.field public final mChallenge:[B

.field public final mDNQualifier:[B

.field public final mDigests:[Ljava/lang/String;

.field public final mEncryptionPaddings:[Ljava/lang/String;

.field public final mKeySize:I

.field public final mMgf1Digests:Ljava/util/Set;

.field public final mPurposes:I

.field public final mServiceTAName:[B

.field public final mSignaturePaddings:[Ljava/lang/String;


# direct methods
.method public constructor <init>([BI[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V
    .registers 9

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mServiceTAName:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDNQualifier:[B

    iput p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mKeySize:I

    const/16 p2, 0xc

    iput p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mPurposes:I

    invoke-static {p3}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-static {p4}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {p5}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {p6}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    if-eqz p7, :cond_3e

    invoke-virtual {p7}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :cond_3e
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mChallenge:[B

    return-void
.end method
