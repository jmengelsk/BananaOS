.class public final Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public apiState:I

.field public isUrlExist:I

.field public final mBundle:Landroid/os/Bundle;

.field public mByteArrayExtraData:[B

.field public mByteArrayManagerURI:[B

.field public mConnectivityType:I

.field public mExtraID:[B

.field public mReason:I

.field public mRequestPkg:Ljava/lang/String;

.field public mStringExtraData:Ljava/lang/String;

.field public mStringManagerURI:Ljava/lang/String;

.field public publicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    return-void
.end method


# virtual methods
.method public final getResultBundle()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public final setExtraData([B)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setManagerURI([B)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setReason(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    const-string/jumbo v0, "reason"

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
