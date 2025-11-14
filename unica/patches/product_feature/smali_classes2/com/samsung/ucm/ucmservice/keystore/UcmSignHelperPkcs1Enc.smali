.class public final Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;
.super Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final algorithmSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "rsa/ecb/nopadding"

    const-string/jumbo v2, "rsa/ecb/pkcs1padding"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;->algorithmSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final isEncryptFunction()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
