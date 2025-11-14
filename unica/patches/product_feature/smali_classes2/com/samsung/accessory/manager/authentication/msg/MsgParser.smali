.class public final Lcom/samsung/accessory/manager/authentication/msg/MsgParser;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public extraData:[B

.field public keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

.field public mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

.field public mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field public managerUrl:[B

.field public productId:B

.field public publicKey:Ljava/lang/String;

.field public randNum:[B

.field public serialNumber:[B

.field public urlExtra:[B


# direct methods
.method public static byteArrayToString([B)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v1, v4}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result v1

    goto :goto_8

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string/jumbo p0, "null"

    return-object p0
.end method


# virtual methods
.method public final checkPubKey(IZ)Z
    .registers 10

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    array-length v1, v1

    iget v2, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    iget v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    add-int/2addr v2, v0

    const/4 v0, 0x0

    if-ne v1, v2, :cond_62

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    iget v4, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    const/4 v5, 0x2

    div-int/2addr v3, v5

    iget-object v6, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    invoke-static {v2, v4, v6, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    if-eqz p2, :cond_34

    const/4 v5, 0x3

    goto :goto_37

    :cond_34
    if-ne p1, v5, :cond_37

    move v5, v0

    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    invoke-static {p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v2, v5, p1, p2, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_certificate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v0, :cond_61

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    invoke-static {p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->publicKey:Ljava/lang/String;

    :cond_61
    return p1

    :cond_62
    return v0
.end method

.method public final parseData(I[BZ)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string/jumbo v3, "SAccessoryManager_MsgParser"

    if-eq p1, v0, :cond_174

    const-string v4, ":"

    const-string/jumbo v5, "command "

    if-eq p1, v1, :cond_153

    const/4 v6, 0x3

    if-eq p1, v6, :cond_ef

    const/4 v1, 0x5

    if-eq p1, v1, :cond_e1

    const-string/jumbo v1, "extra Data: "

    const-string/jumbo v4, "url: "

    packed-switch p1, :pswitch_data_1de

    return v0

    :pswitch_1f  #0xb
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    aget-byte p2, p1, v2

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p2, v0

    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    new-array v5, p2, [B

    iput-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    add-int/2addr p3, v0

    new-array v6, p3, [B

    iput-object v6, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    invoke-static {p1, v2, v5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    invoke-static {p1, p2, v5, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    invoke-static {p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_73  #0xa
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    array-length p2, p1

    add-int/lit8 p3, p2, 0x1

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    int-to-byte v4, p2

    aput-byte v4, p3, v2

    invoke-static {p1, v2, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_a3  #0x9
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    array-length p2, p1

    add-int/lit8 p3, p2, 0x1

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    int-to-byte v1, p2

    aput-byte v1, p3, v2

    invoke-static {p1, v2, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_d3  #0x8
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v0, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkPubKey(IZ)Z

    move-result p0

    return p0

    :cond_e1
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->serialNumber:[B

    return v0

    :cond_ef
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object p3

    array-length p3, p3

    iget p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    if-ne p3, p2, :cond_137

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object p3

    iget v0, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/2addr v0, v1

    iget-object v1, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    invoke-static {p3, v0, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    invoke-static {p2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_rand_signature(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_13d

    :cond_137
    const-string/jumbo p0, "signature is invalid"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_153
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v0, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {p0, v1, p3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkPubKey(IZ)Z

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_174
    new-instance p3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {p3, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object p1

    array-length p1, p1

    if-lt p1, v1, :cond_1dd

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object p1

    aget-byte p1, p1, v0

    iput-byte p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "productId = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "h"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-byte p2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x33

    if-eq p2, p3, :cond_1bc

    const/16 p3, 0x55

    if-eq p2, p3, :cond_1bc

    goto :goto_1da

    :cond_1bc
    const/16 p2, 0x28

    iput p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    const/16 p3, 0x2a

    iput p3, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    new-array p2, p2, [B

    iput-object p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    const/16 p2, 0x15

    new-array p3, p2, [B

    iput-object p3, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    new-array p3, p2, [B

    iput-object p3, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    new-array p3, p2, [B

    iput-object p3, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    new-array p2, p2, [B

    iput-object p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    :goto_1da
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    return v0

    :cond_1dd
    return v2

    :pswitch_data_1de
    .packed-switch 0x8
        :pswitch_d3  #00000008
        :pswitch_a3  #00000009
        :pswitch_73  #0000000a
        :pswitch_1f  #0000000b
    .end packed-switch
.end method
