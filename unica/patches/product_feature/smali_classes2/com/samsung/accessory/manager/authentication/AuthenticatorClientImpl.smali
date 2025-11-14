.class public final Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final SW_FAIL:[B

.field public final SW_SECURITY_ATTACK:[B

.field public final SW_SUCCESS:[B

.field public final SW_SUCCESS_UBIVELOX:[B

.field public volatile isInterrupted:Z

.field public mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

.field public mContext:Landroid/content/Context;

.field public final mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

.field public final mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

.field public mType:I

.field public final statusWord:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    new-array v1, v0, [B

    fill-array-data v1, :array_50

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    const/16 v1, 0x10

    new-array v2, v0, [B

    fill-array-data v2, :array_56

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS_UBIVELOX:[B

    new-array v2, v0, [B

    fill-array-data v2, :array_5c

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    new-array v2, v0, [B

    fill-array-data v2, :array_62

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    iput p2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-array p2, v1, [B

    iput-object p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-array p2, v1, [B

    iput-object p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    new-instance p2, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    return-void

    :array_50
    .array-data 1
        -0x70t
        0x0t
    .end array-data

    nop

    :array_56
    .array-data 1
        -0x70t
        0x10t
    .end array-data

    nop

    :array_5c
    .array-data 1
        0x69t
        -0x7ft
    .end array-data

    nop

    :array_62
    .array-data 1
        0x69t
        -0x7et
    .end array-data
.end method

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
.method public final checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checkError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SAccessoryManager_AuthenticatorClientImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_103

    array-length v2, p2

    if-nez v2, :cond_21

    goto/16 :goto_103

    :cond_21
    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a2

    aget-byte p0, p2, v0

    if-ne p0, v3, :cond_2f

    const/16 p0, 0x14

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_2f
    const/16 p1, -0x50

    if-ne p0, p1, :cond_39

    const/16 p0, 0x15

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_39
    const/16 p1, -0x4e

    if-ne p0, p1, :cond_43

    const/16 p0, 0x16

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_43
    const/16 p1, -0x20

    if-ne p0, p1, :cond_4d

    const/16 p0, 0xd

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_4d
    const/16 p1, -0xf

    if-ne p0, p1, :cond_57

    const/16 p0, 0x28

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_57
    const/16 p1, -0xe

    if-ne p0, p1, :cond_61

    const/16 p0, 0x29

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_61
    const/16 p1, -0xd

    if-ne p0, p1, :cond_6b

    const/16 p0, 0x2a

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_6b
    const/16 p1, -0xc

    if-ne p0, p1, :cond_75

    const/16 p0, 0x2b

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_75
    const/16 p1, -0xb

    if-ne p0, p1, :cond_7f

    const/16 p0, 0x2c

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_7f
    const/16 p1, -0xa

    if-ne p0, p1, :cond_89

    const/16 p0, 0x2d

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_89
    const/16 p1, -0x9

    if-ne p0, p1, :cond_93

    const/16 p0, 0x2e

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_93
    const/4 p1, -0x2

    if-ne p0, p1, :cond_9c

    const/16 p0, 0x1c

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_9c
    const/16 p0, 0x1b

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_a2
    array-length v2, p2

    const/4 v4, 0x3

    if-le v2, v4, :cond_102

    array-length v2, p2

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->statusWord:[B

    const/4 v5, 0x2

    invoke-static {p2, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Status Word: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SUCCESS_UBIVELOX:[B

    if-nez v1, :cond_f1

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_d5

    goto :goto_f1

    :cond_d5
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_SECURITY_ATTACK:[B

    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_e3

    const/16 p0, 0x18

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_e3
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->SW_FAIL:[B

    invoke-static {v4, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_102

    const/16 p0, 0x17

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_f1
    :goto_f1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->parseData(I[BZ)Z

    move-result p0

    if-nez p0, :cond_101

    invoke-virtual {p3, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0

    :cond_101
    return p0

    :cond_102
    return v0

    :cond_103
    :goto_103
    const/16 p0, 0xc

    invoke-virtual {p3, p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v0
.end method

.method public final sendCommand(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;I)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    const-string/jumbo v4, "SAccessoryManager_AuthenticatorClientImpl"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1b

    const-string/jumbo v0, "interrupted!"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_1b
    const/16 v3, 0x52

    const/16 v7, 0x16

    const/16 v8, 0x10

    const/16 v9, 0x22

    const/16 v10, 0x54

    const-string/jumbo v11, "URI is NULL"

    const-string v12, "ExtraData is NULL"

    const/16 v13, 0x5f

    const/16 v14, 0x5e

    const/16 v15, 0xe

    const-string/jumbo v6, "Send Command "

    packed-switch v2, :pswitch_data_2b2

    goto/16 :goto_2a6

    :pswitch_38  #0xb
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v7, 0x24

    invoke-direct {v3, v10, v7, v5, v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :try_start_4e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v3

    if-nez v3, :cond_6b

    invoke-virtual {v1, v14}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_6b
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    iget-object v6, v6, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    if-eqz v6, :cond_87

    invoke-virtual {v1, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    if-eqz v0, :cond_80

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    :cond_7d
    :goto_7d
    move v5, v3

    goto/16 :goto_2a6

    :cond_80
    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v13}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_87
    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v14}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_8d} :catch_8e

    return v5

    :catch_8e
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :pswitch_92  #0xa
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v7, 0x11

    invoke-direct {v3, v10, v9, v7, v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :try_start_a8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v3

    if-nez v3, :cond_c5

    invoke-virtual {v1, v13}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_c5
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    if-eqz v0, :cond_cf

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    goto :goto_7d

    :cond_cf
    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v13}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_d5} :catch_d6

    return v5

    :catch_d6
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :pswitch_da  #0x9
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v3, v10, v9, v8, v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :try_start_ee
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v3

    if-nez v3, :cond_10b

    invoke-virtual {v1, v14}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_10b
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    if-eqz v0, :cond_116

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    goto/16 :goto_7d

    :cond_116
    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v14}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_11c} :catch_11d

    return v5

    :catch_11d
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :pswitch_121  #0x8
    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v8, v5, v7, v5, v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    invoke-virtual {v8}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :try_start_135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_14c} :catch_153

    if-nez v0, :cond_150

    goto/16 :goto_299

    :cond_150
    move v5, v0

    goto/16 :goto_2a6

    :catch_153
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :pswitch_157  #0x7
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v7, 0x42

    invoke-direct {v3, v5, v7, v5, v5}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :try_start_16d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_184} :catch_18b

    if-nez v0, :cond_188

    goto/16 :goto_299

    :cond_188
    :goto_188
    const/4 v5, 0x1

    goto/16 :goto_2a6

    :catch_18b
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :pswitch_18f  #0x6
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v7, 0x8

    invoke-direct {v3, v5, v8, v5, v7}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :try_start_1a5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1b7} :catch_1b8

    goto :goto_188

    :catch_1b8
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :pswitch_1bc  #0x5
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/msg/Message;

    const/16 v7, 0x1f

    const/16 v8, 0x12

    invoke-direct {v3, v10, v9, v7, v8}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :try_start_1d4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v3

    if-nez v3, :cond_1ef

    goto/16 :goto_299

    :cond_1ef
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->serialNumber:[B

    if-eqz v0, :cond_224

    array-length v3, v0

    new-array v3, v3, [B

    iput-object v3, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    array-length v6, v0

    invoke-static {v0, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    const/16 v3, 0x17

    if-ne v0, v3, :cond_224

    iget-object v0, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    const/16 v3, 0x15

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x1

    if-ne v0, v3, :cond_212

    iput v3, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto/16 :goto_7d

    :cond_212
    const/4 v6, 0x2

    if-ne v0, v6, :cond_219

    iput v6, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto/16 :goto_7d

    :cond_219
    const/4 v6, 0x3

    if-ne v0, v6, :cond_7d

    iput v6, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I
    :try_end_21e
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_21e} :catch_220

    goto/16 :goto_7d

    :catch_220
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :cond_224
    :pswitch_224  #0x4
    const/4 v3, 0x1

    goto/16 :goto_7d

    :pswitch_227  #0x3
    :try_start_227
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->genRandom()[B

    move-result-object v7

    iput-object v7, v3, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->randNum:[B

    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, v7, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;->getDataVerification()[B

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v0
    :try_end_265
    .catch Ljava/io/IOException; {:try_start_227 .. :try_end_265} :catch_268

    if-nez v0, :cond_150

    goto :goto_299

    :catch_268
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    :pswitch_26c  #0x2
    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgBuilder:Lcom/samsung/accessory/manager/authentication/msg/MsgBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v8, v5, v7, v5, v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(BBBB)V

    invoke-virtual {v8}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getApdu()[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :try_start_280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->checkError(I[BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z

    move-result v3

    if-nez v3, :cond_29a

    :goto_299
    return v5

    :cond_29a
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mMsgParser:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->publicKey:Ljava/lang/String;

    if-nez v0, :cond_2a2

    const-string v0, ""

    :cond_2a2
    iput-object v0, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;
    :try_end_2a4
    .catch Ljava/io/IOException; {:try_start_280 .. :try_end_2a4} :catch_2ad

    goto/16 :goto_7d

    :goto_2a6
    const-string/jumbo v0, "Receive Command "

    invoke-static {v2, v0, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v5

    :catch_2ad
    invoke-virtual {v1, v15}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    return v5

    nop

    :pswitch_data_2b2
    .packed-switch 0x2
        :pswitch_26c  #00000002
        :pswitch_227  #00000003
        :pswitch_224  #00000004
        :pswitch_1bc  #00000005
        :pswitch_18f  #00000006
        :pswitch_157  #00000007
        :pswitch_121  #00000008
        :pswitch_da  #00000009
        :pswitch_92  #0000000a
        :pswitch_38  #0000000b
    .end packed-switch
.end method

.method public final sendStopAuth()V
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStopAuth()Z

    return-void
.end method

.method public final sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 5

    iget v0, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_9

    const/4 v0, 0x2

    iput v0, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    :cond_9
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object p0

    return-object p0
.end method

.method public final setSessionState(I)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz p0, :cond_6

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    :cond_6
    return-void
.end method

.method public final stopAuthentication()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->sendStopAuth()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    const-string/jumbo p0, "SAccessoryManager_AuthenticatorClientImpl"

    const-string/jumbo v0, "fail stop command"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
