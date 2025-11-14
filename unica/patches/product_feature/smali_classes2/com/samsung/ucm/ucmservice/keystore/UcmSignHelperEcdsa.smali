.class public final Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;
.super Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final algorithmSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v5, "sha384withecdsa"

    const-string/jumbo v6, "sha512withecdsa"

    const-string/jumbo v1, "nonewithecdsa"

    const-string/jumbo v2, "sha1withecdsa"

    const-string/jumbo v3, "sha224withecdsa"

    const-string/jumbo v4, "sha256withecdsa"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;->algorithmSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getProcessAlgorithm()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "NONEwithECDSA"

    return-object p0
.end method

.method public final processInput([B)[B
    .registers 3

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->algorithm:Ljava/lang/String;

    const-string/jumbo v0, "nonewithecdsa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p1

    :cond_c
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;->getMdAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method
