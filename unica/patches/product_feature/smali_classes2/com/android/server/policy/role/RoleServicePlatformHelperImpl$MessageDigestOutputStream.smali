.class public final Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;
.super Ljava/io/OutputStream;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mMessageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    :try_start_0
    const-string/jumbo v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;->mMessageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create MessageDigest"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final write(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;->mMessageDigest:Ljava/security/MessageDigest;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public final write([B)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
