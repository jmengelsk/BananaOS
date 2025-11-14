.class public final Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public static getNameOfMsgWhat(I)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_6

    const-string/jumbo p0, "MSG_AUTH_STOP"

    return-object p0

    :cond_6
    const/4 v0, 0x1

    if-ne v0, p0, :cond_d

    const-string/jumbo p0, "MSG_AUTH_START"

    return-object p0

    :cond_d
    const/4 v0, 0x2

    if-ne v0, p0, :cond_14

    const-string/jumbo p0, "MSG_AUTH_REQ_DIGEST"

    return-object p0

    :cond_14
    const/4 v0, 0x3

    if-ne v0, p0, :cond_1b

    const-string/jumbo p0, "MSG_AUTH_GET_AND_CHECK_DIGEST"

    return-object p0

    :cond_1b
    const/4 v0, 0x4

    if-ne v0, p0, :cond_22

    const-string/jumbo p0, "MSG_AUTH_REQ_CERT_CHAIN"

    return-object p0

    :cond_22
    const/4 v0, 0x5

    if-ne v0, p0, :cond_29

    const-string/jumbo p0, "MSG_AUTH_GET_AND_VERIFY_CERT_CHAIN"

    return-object p0

    :cond_29
    const/4 v0, 0x7

    if-ne v0, p0, :cond_30

    const-string/jumbo p0, "MSG_AUTH_REQ_CHALLENGE"

    return-object p0

    :cond_30
    const/16 v0, 0x8

    if-ne v0, p0, :cond_38

    const-string/jumbo p0, "MSG_AUTH_GET_AND_VERIFY_CHALLENGE"

    return-object p0

    :cond_38
    const/16 v0, 0x3e8

    if-ne v0, p0, :cond_40

    const-string/jumbo p0, "MSG_AUTH_TIMEOUT"

    return-object p0

    :cond_40
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleMessage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BattAuthManager_WpcAuthenticator"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    if-eqz v2, :cond_59e

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v2, v7, :cond_57e

    const/16 v9, 0x3e8

    if-eq v2, v8, :cond_52d

    const/4 v10, 0x4

    const/16 v11, 0x22

    const/4 v12, 0x3

    const/4 v13, 0x7

    if-eq v2, v12, :cond_452

    if-eq v2, v10, :cond_3f5

    const/4 v14, 0x5

    const/16 v15, 0x8

    if-eq v2, v14, :cond_fe

    if-eq v2, v13, :cond_ab

    if-eq v2, v15, :cond_62

    if-eq v2, v9, :cond_43

    goto/16 :goto_52c

    :cond_43
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleMessage, timeout after "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_62
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {v0}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->readDataFromBattMisc()[B

    move-result-object v2

    if-nez v2, :cond_75

    const-string/jumbo v0, "getAndVerifyChallenge, challengeAuth is invalid"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_73
    move v7, v5

    goto :goto_a4

    :cond_75
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getAndVerifyChallenge, challengeAuth : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    iget-object v8, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    iget-object v9, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    invoke-virtual {v0, v4, v8, v9, v2}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->verifyChallengeAuth([B[B[B[B)Z

    move-result v0

    if-nez v0, :cond_9e

    const-string/jumbo v0, "getAndVerifyChallenge,  challenge verification failed"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :cond_9e
    const-string/jumbo v0, "getAndVerifyChallenge, challenge verification succeeded"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a4
    invoke-static {v6, v7}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_ab
    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {v2, v5, v7}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->makeChallengeReq(II)[B

    move-result-object v4

    iput-object v4, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "requestChallengeAuth, reqMsg : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    invoke-static {v7}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    invoke-virtual {v2, v4}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->writeDataToBattMisc([B)I

    move-result v2

    iget-object v4, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    array-length v4, v4

    if-eq v2, v4, :cond_e3

    const-string/jumbo v0, "requestChallengeAuth, failed to write challenge request"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_e3
    const-string/jumbo v2, "handleMessage: successfully requested challenge"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v2, 0x15f90

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->WAIT_CHALLENGE_AUTH:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    return-void

    :cond_fe
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {v2}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->readDataFromBattMisc()[B

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "getAndVerifyCertChain, receivedBytes : "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    if-eqz v0, :cond_12b

    array-length v14, v0

    if-eqz v14, :cond_12b

    aget-byte v14, v0, v5

    move/from16 v16, v15

    const/16 v15, 0x12

    if-eq v14, v15, :cond_12f

    :cond_12b
    move/from16 v16, v10

    goto/16 :goto_3ca

    :cond_12f
    iget-object v14, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_16b

    array-length v14, v0

    if-ge v14, v12, :cond_144

    const-string/jumbo v0, "getAndVerifyCertChain: cannot find whole length"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_140
    move/from16 v16, v10

    goto/16 :goto_3d0

    :cond_144
    aget-byte v14, v0, v7

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    aget-byte v15, v0, v8

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    iput v14, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "getAndVerifyCertChain: whole certChainLength : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    invoke-static {v14, v15, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v14, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    const/16 v15, 0x329

    if-le v14, v15, :cond_16b

    const-string/jumbo v0, "getAndVerifyCertChain: certChainLength is too long"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_140

    :cond_16b
    move v14, v7

    :goto_16c
    array-length v15, v0

    if-ge v14, v15, :cond_17e

    iget-object v15, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    aget-byte v16, v0, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x7

    goto :goto_16c

    :cond_17e
    iget v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    iget-object v13, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v0, v13

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "getAndVerifyCertChain: saved cert chain len : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", need more len : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1ab

    move v9, v0

    goto :goto_140

    :cond_1ab
    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v13, v0, [B

    move v0, v5

    :goto_1b4
    iget-object v14, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v0, v14, :cond_1cd

    iget-object v14, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    aput-byte v14, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b4

    :cond_1cd
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "getAndVerifyCertChain, whole chain  : "

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1e3
    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_1f1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e3 .. :try_end_1f1} :catch_1f2

    goto :goto_1fa

    :catch_1f2
    move-exception v0

    const-string/jumbo v14, "getSha256Hash: NoSuchAlgorithmException"

    invoke-static {v3, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_1fa
    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    const-string/jumbo v0, "e1s,e2s,e3s,e1q,e2q,e3q,b6q,q6q,pa1q,pa2q,pa3q,psq"

    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39d

    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mQiCertificateValidator:Lcom/samsung/android/battauthmanager/QiCertificateValidator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v13}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->getDerLength(I[B)I

    move-result v0

    const/16 v2, 0x24

    invoke-static {v2, v13}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->getDerLength(I[B)I

    move-result v2

    add-int/lit8 v14, v2, 0x4

    add-int/lit8 v15, v2, 0x26

    add-int/lit8 v2, v2, 0x28

    invoke-static {v2, v13}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->getDerLength(I[B)I

    move-result v2

    add-int/2addr v2, v10

    move/from16 v16, v10

    const-string v10, " whole chain len : "

    const-string v4, ", manu cert len: "

    const-string v8, ", product cert len: "

    invoke-static {v0, v14, v10, v4, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "BattAuthManager_QiCertificateValidator"

    invoke-static {v4, v2, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eq v0, v9, :cond_392

    if-eq v14, v9, :cond_392

    if-ne v2, v9, :cond_23a

    goto/16 :goto_392

    :cond_23a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->wpcRootCert:[B

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13, v11, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v15

    invoke-static {v13, v15, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v12, :cond_261

    const-string v0, "Certificate chain data is empty or does not contain exactly 3 certificates."

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25e
    const/4 v4, 0x0

    goto/16 :goto_39a

    :cond_261
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->loadCertificate([B)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v2

    if-nez v2, :cond_26f

    goto/16 :goto_321

    :cond_26f
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->loadCertificate([B)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v4

    if-nez v4, :cond_27d

    goto/16 :goto_321

    :cond_27d
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->loadCertificate([B)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    if-nez v0, :cond_28c

    goto/16 :goto_321

    :cond_28c
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Verifying(self-signed) Root certificate: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-static {v2, v11, v10, v7}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->validateCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/security/PublicKey;Ljava/util/Date;Z)Z

    move-result v12

    if-nez v12, :cond_2af

    goto :goto_321

    :cond_2af
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Root certificate is self-signed and valid: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->getPublicKey(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Ljava/security/PublicKey;

    move-result-object v2

    if-nez v2, :cond_2cc

    goto :goto_321

    :cond_2cc
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Verifying Intermediate certificate: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v2, v10, v5}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->validateCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/security/PublicKey;Ljava/util/Date;Z)Z

    move-result v2

    if-nez v2, :cond_2e9

    goto :goto_321

    :cond_2e9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Intermediate certificate is valid and signed by Root: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->getPublicKey(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Ljava/security/PublicKey;

    move-result-object v2

    if-nez v2, :cond_305

    goto :goto_321

    :cond_305
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Verifying Leaf certificate: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v2}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->verifySignature(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/security/PublicKey;)Z

    move-result v2

    if-nez v2, :cond_323

    :goto_321
    goto/16 :goto_25e

    :cond_323
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Leaf certificate is valid and signed by Intermediate: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Certificate chain is valid."

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->getPublicKey(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Ljava/security/PublicKey;

    move-result-object v0

    if-nez v0, :cond_34b

    const-string v0, "Failed to retrieve leaf certificate\'s PublicKey."

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25e

    :cond_34b
    instance-of v2, v0, Ljava/security/interfaces/ECPublicKey;

    if-nez v2, :cond_357

    const-string/jumbo v0, "PublicKey is not an instance of ECPublicKey."

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_355
    const/4 v4, 0x0

    goto :goto_389

    :cond_357
    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->toFixedLength(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->toFixedLength(Ljava/math/BigInteger;)[B

    move-result-object v0

    if-eqz v2, :cond_383

    if-nez v0, :cond_372

    goto :goto_383

    :cond_372
    const/16 v4, 0x41

    new-array v4, v4, [B

    aput-byte v16, v4, v5

    const/16 v10, 0x20

    invoke-static {v2, v5, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x21

    invoke-static {v0, v5, v4, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_389

    :cond_383
    :goto_383
    const-string v0, "Failed to convert X or Y coordinates to 32 bytes."

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_355

    :goto_389
    if-nez v4, :cond_39a

    const-string v0, "Failed to convert leaf PublicKey to byte[]."

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25e

    :cond_392
    :goto_392
    const-string/jumbo v0, "invalid length"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25e

    :cond_39a
    :goto_39a
    iput-object v4, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    goto :goto_3a5

    :cond_39d
    move/from16 v16, v10

    invoke-virtual {v2, v13}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->verifyWpcCertChain([B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    :goto_3a5
    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    if-nez v0, :cond_3b0

    const-string/jumbo v0, "getAndVerifyCertChain: failed to verify certificate chain"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d0

    :cond_3b0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getAndVerifyCertChain, verified, pubKey : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    invoke-static {v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v5

    goto :goto_3d0

    :goto_3ca
    const-string/jumbo v0, "getAndVerifyCertChain: certificate chain has invalid header"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d0
    if-lez v9, :cond_3df

    const-string/jumbo v0, "handleMessage: more data needed for authentication"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_52c

    :cond_3df
    if-gez v9, :cond_3e9

    invoke-static {v6, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_52c

    :cond_3e9
    const-string/jumbo v0, "handleMessage: successfully verified certificate"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_52c

    :cond_3f5
    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit16 v13, v2, 0x100

    rem-int/lit16 v15, v2, 0x100

    const/4 v14, 0x0

    const/16 v16, 0x0

    iget-object v10, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v10 .. v16}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->makeGetCertReq(IIIIII)[B

    move-result-object v4

    const-string/jumbo v7, "requestCertChain, offset: "

    const-string v8, ", length: 0, reqMsg : "

    invoke-static {v2, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {v2, v4}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->writeDataToBattMisc([B)I

    move-result v2

    array-length v4, v4

    if-eq v2, v4, :cond_437

    const-string/jumbo v0, "requestCertChain: failed to write certificate chain request"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_437
    const-string/jumbo v2, "handleMessage: successfully requested certificate"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->WAIT_CERT_CHAIN:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    return-void

    :cond_452
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {v0}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->readDataFromBattMisc()[B

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getAndCheckDigests, digest : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, v0

    if-eq v2, v11, :cond_482

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getAndCheckDigests: incorrect length of digest: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-static {v2, v0, v3}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto/16 :goto_501

    :cond_482
    array-length v2, v0

    const/4 v10, 0x2

    invoke-static {v0, v10, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "getAndCheckDigests, b64ResMsg : "

    invoke-static {v4, v0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v5, [Ljava/lang/String;

    const-string v8, "/efs/Battery/qi_digests/cached_digests"

    invoke-static {v8, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    const-string v8, ""

    if-nez v5, :cond_4af

    const-string/jumbo v0, "searchDigest, digest file not found : /efs/Battery/qi_digests/cached_digests"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f5

    :cond_4af
    :try_start_4af
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v4
    :try_end_4b5
    .catch Ljava/io/IOException; {:try_start_4af .. :try_end_4b5} :catch_4e2

    :goto_4b5
    :try_start_4b5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4de

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4db

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "searchDigest, match found! "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d6
    .catchall {:try_start_4b5 .. :try_end_4d6} :catchall_4d8

    move-object v8, v5

    goto :goto_4de

    :catchall_4d8
    move-exception v0

    move-object v5, v0

    goto :goto_4e4

    :cond_4db
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b5

    :cond_4de
    :goto_4de
    :try_start_4de
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4e1
    .catch Ljava/io/IOException; {:try_start_4de .. :try_end_4e1} :catch_4e2

    goto :goto_4f5

    :catch_4e2
    move-exception v0

    goto :goto_4ef

    :goto_4e4
    if-eqz v4, :cond_4ee

    :try_start_4e6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4e9
    .catchall {:try_start_4e6 .. :try_end_4e9} :catchall_4ea

    goto :goto_4ee

    :catchall_4ea
    move-exception v0

    :try_start_4eb
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4ee
    :goto_4ee
    throw v5
    :try_end_4ef
    .catch Ljava/io/IOException; {:try_start_4eb .. :try_end_4ef} :catch_4e2

    :goto_4ef
    const-string/jumbo v4, "searchDigest"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4f5
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50c

    const-string/jumbo v0, "getAndCheckDigests, not found cached digests"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_501
    const-string/jumbo v0, "handleMessage: checking digest failed, requesting certificate chain"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_52c

    :cond_50c
    array-length v0, v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    const/16 v0, 0x2c

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_52c
    return-void

    :cond_52d
    iget-object v2, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {v2, v7, v7}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->makeGetDigestsReq(BI)[B

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "requestDigests, reqMsg : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->writeDataToBattMisc([B)I

    move-result v2

    array-length v4, v4

    if-eq v2, v4, :cond_563

    const-string/jumbo v0, "requestDigests: failed to write digest request"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "handleMessage, requestDigests failed"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v5}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->-$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_563
    const-string/jumbo v2, "handleMessage: successfully requested digests"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;->getNameOfMsgWhat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->WAIT_DIGEST:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    return-void

    :cond_57e
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_592

    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_592
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v5, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    return-void

    :cond_59e
    const-string/jumbo v0, "handleMessage, auth stop"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5b5

    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5b5
    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->STATUS_NONE:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    iput-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    iget-object v0, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v5, v6, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    return-void
.end method
