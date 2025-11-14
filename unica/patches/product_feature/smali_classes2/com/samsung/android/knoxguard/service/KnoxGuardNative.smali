.class public Lcom/samsung/android/knoxguard/service/KnoxGuardNative;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static KGTA_FAILED:I = -0x3e8

.field public static KGTA_PARAM_DEFAULT:I = 0x0

.field public static KG_CMD_CHECKING:I = 0x12

.field public static KG_CMD_GENERATE_DH_REQUEST:I = 0x4

.field public static KG_CMD_GENERATE_HOTP_CHANLLENGE:I = 0x3

.field public static KG_CMD_GET_CLIENT_DATA:I = 0xf

.field public static KG_CMD_GET_KGID:I = 0x10

.field public static KG_CMD_GET_LOCK_ACTION:I = 0xd

.field public static KG_CMD_GET_LOCK_OBJECT:I = 0xc

.field public static KG_CMD_GET_NONCE:I = 0x15

.field public static KG_CMD_GET_POLICY:I = 0x8

.field public static KG_CMD_GET_STATUS:I = 0x1

.field public static KG_CMD_GET_TA_INFO:I = 0x16

.field public static KG_CMD_LOCK:I = 0x9

.field public static KG_CMD_PROCESS_KG_ROT:I = 0x14

.field public static KG_CMD_PROVISION_CERT:I = 0x17

.field public static KG_CMD_RPMB_RESET:I = 0x11

.field public static KG_CMD_SET_CLIENT_DATA:I = 0xe

.field public static KG_CMD_UNLOCK:I = 0xa

.field public static KG_CMD_VERIFY_COMPLETETOKEN:I = 0xb

.field public static KG_CMD_VERIFY_DH_RESPONSE:I = 0x5

.field public static KG_CMD_VERIFY_HOTP_SECRET:I = 0x6

.field public static KG_CMD_VERIFY_POLICY:I = 0x7

.field public static KG_CMD_VERIFY_REGISTRATION_INFO:I = 0x2

.field public static TAG:Ljava/lang/String; = "KnoxGuardTANative"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b2s([B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateHotpDHRequest()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateHotpDHRequestRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getClientData()Ljava/lang/String;
    .locals 4

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getClientData - errwrapper = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientDataRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getHotpChallenge()Ljava/lang/String;
    .locals 4

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getHotpChallenge - errwrapper = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHotpChallengeRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getKGID()Ljava/lang/String;
    .locals 4

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getKGID - errwrapper = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKGIDRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getKGPolicy()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->getStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 4

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->readData()I

    move-result v1

    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readData failed error "

    invoke-static {v1, v2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getPolicyRes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getSignature()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v1, "GetKG Policy : policy or signature  null "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static getLockAction()Ljava/lang/String;
    .locals 4

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLockAction - errwrapper = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLockActionRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getLockObject()[B
    .locals 4

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLockObject - errwrapper = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    return-object v0
.end method

.method public static getLockObjectRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getNonce - errwrapper = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getNonce(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getSfPolicy()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getSfPolicy(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getTAState()I
    .locals 2

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v0

    :cond_0
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v1, :cond_1

    iget v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return v0

    :cond_1
    return v1
.end method

.method public static getTAStateRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "lockScreen - errwrapper = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {p2, p3, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez p1, :cond_1

    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return p0

    :cond_1
    return p1
.end method

.method public static lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 8

    new-instance v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    const/4 p2, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "lockScreen: empty actionName"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "lockScreen: empty serialzeObj"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    sget p2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_lockScreen(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_provisionCert(I[B[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static resetRPMB()I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMB(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static resetRPMB(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetRPMB - errwrapper = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_1

    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return p0

    :cond_1
    return v0
.end method

.method public static resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_resetRPMB(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static s2b(Ljava/lang/String;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static serialize(Ljava/lang/Object;)[B
    .locals 5

    const-string/jumbo v0, "Serialize outstream failed IO exception"

    const-string/jumbo v1, "Serialize failed IO exception"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception p0

    :goto_1
    move-object v2, v3

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v4, v2

    goto :goto_1

    :catch_3
    move-exception p0

    move-object v4, v2

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v4, v2

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    :goto_4
    return-object v2

    :goto_5
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_6
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :catch_7
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_7
    throw p0
.end method

.method public static setClientData(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setClientData - errwrapper = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_1

    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return p0

    :cond_1
    return v0
.end method

.method public static setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setClientData fail: empty input"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_setClientData(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static native tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getKGPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getNonce(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getSfPolicy(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_lockScreen(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_provisionCert(I[B[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_resetRPMB(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_setClientData(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyCompleteToken(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHOTPPin(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHOTPsecret(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHotpDhChallenge(I[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyRegistrationInfo(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifySfPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static unlockScreen()I
    .locals 4

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v0

    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unlockScreen - errwrapper = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v1, :cond_1

    iget v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return v0

    :cond_1
    return v1
.end method

.method public static unlockScreenRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static userChecking()I
    .locals 4

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v0

    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "userChecking - errwrapper = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v1, :cond_1

    iget v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return v0

    :cond_1
    return v1
.end method

.method public static userCheckingRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static verifyCompleteToken(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verifyCompleteToken - errwrapper = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_1

    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return p0

    :cond_1
    return v0
.end method

.method public static verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyCompleteToken input string is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyCompleteToken(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static verifyHOTPPin(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verifyHOTPPin - errwrapper = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_1

    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return p0

    :cond_1
    return v0
.end method

.method public static verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHotpPin fail, input null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHOTPPin(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static verifyHOTPsecret(Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHOTPsecret input string is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPsecretRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_1

    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    :cond_1
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_2

    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return p0

    :cond_2
    return v0
.end method

.method public static verifyHOTPsecretRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHOTPsecret input string is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHOTPsecret(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static verifyHotpDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "verifyHotpDHChallenge - errwrapper = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {p2, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez p1, :cond_1

    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return p0

    :cond_1
    return p1
.end method

.method public static verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHotpDhChallenge(I[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyHotpDHChallenge failed: input null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static verifyKgRot()Ljava/lang/String;
    .locals 4

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "verifyKgRot - errwrapper = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static verifyKgRotRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "verifyPolicy - errwrapper = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyPolicy failed, empty return from TA"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v2, v1, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->saveData(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I

    if-eq p0, p1, :cond_2

    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "store the policy to EFS failed ="

    invoke-static {p1, v2, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyPolicy failed, empty input"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "verifyRegistrationInfo - errwrapper = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyRegistrationInfo(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyRegistrationInfo failed input null "

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static verifySfPolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifySfPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifySfPolicy failed, empty input"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
