.class public final Lcom/android/server/signedconfig/SignatureVerifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDebugKey:Ljava/security/PublicKey;

.field public final mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

.field public final mProdKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lcom/android/server/signedconfig/SignedConfigEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEmJKs4lSn+XRhMQmMid+Zbhbu13YrU1haIhVC5296InRu1x7A8PV1ejQyisBODGgRY6pqkAHRncBCYcgg5wIIJg=="

    invoke-static {p1}, Lcom/android/server/signedconfig/SignatureVerifier;->createKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mDebugKey:Ljava/security/PublicKey;

    const-string/jumbo p1, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE+lky6wKyGL6lE1VrD0YTMHwb0Xwc+tzC8MvnrzVxodvTpVY/jV7V+Zktcx+pry43XPABFRXtbhTo+qykhyBA1g=="

    invoke-static {p1}, Lcom/android/server/signedconfig/SignatureVerifier;->createKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mProdKey:Ljava/security/PublicKey;

    return-void
.end method

.method public static createKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    const-string/jumbo v0, "SignedConfig"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "EC"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "Failed to construct public key"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception p0

    const-string v2, "Failed to base64 decode public key"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public final verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const-string/jumbo v1, "SignedConfig"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string/jumbo v4, "SHA256withECDSA"

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mDebugKey:Ljava/security/PublicKey;

    if-eqz v3, :cond_0

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v6, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v6, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo p0, "Verified config using debug key"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    return v5

    :cond_0
    const-string v3, "Debuggable build, but have no debug key"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mProdKey:Ljava/security/PublicKey;

    if-nez p0, :cond_2

    const-string/jumbo p0, "No prod key; construction failed?"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x9

    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    return v2

    :cond_2
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v3, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v3, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "Verified config using production key"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    return v5

    :cond_3
    const/4 p0, 0x7

    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    return v2

    :catch_0
    const/4 p0, 0x3

    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    const-string p0, "Failed to base64 decode signature"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
