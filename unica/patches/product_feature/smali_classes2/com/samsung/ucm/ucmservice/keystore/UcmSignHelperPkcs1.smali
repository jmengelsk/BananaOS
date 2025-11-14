.class public final Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;
.super Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final algorithmMap:Ljava/util/HashMap;

.field public static final algorithmSet:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmMap:Ljava/util/HashMap;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string/jumbo v2, "md5withrsa"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string/jumbo v2, "sha1withrsa"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x13

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    const-string/jumbo v3, "sha224withrsa"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    const-string/jumbo v3, "sha256withrsa"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    const-string/jumbo v3, "sha384withrsa"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string/jumbo v2, "sha512withrsa"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void

    :array_0
    .array-data 1
        0x30t
        0x20t
        0x30t
        0xct
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0x5t
        0x5t
        0x0t
        0x4t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x30t
        0x21t
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
        0x4t
        0x14t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x2dt
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x4t
        0x5t
        0x0t
        0x4t
        0x1ct
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x31t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x1t
        0x5t
        0x0t
        0x4t
        0x20t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x41t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x2t
        0x5t
        0x0t
        0x4t
        0x30t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x51t
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x3t
        0x5t
        0x0t
        0x4t
        0x40t
    .end array-data
.end method


# virtual methods
.method public final getProcessAlgorithm()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "RSA/ECB/PKCS1Padding"

    return-object p0
.end method

.method public final processInput([B)[B
    .locals 3

    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->algorithm:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->getMdAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, v0

    array-length v1, p0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v1, p0

    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
