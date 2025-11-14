.class public abstract Lcom/samsung/ucm/ucmservice/UcmServiceODE;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sOdeStatus:I = -0x1


# direct methods
.method public static getOdeStatus()I
    .registers 2

    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->updateOdeStatus()V

    :cond_8
    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    return v0
.end method

.method public static isUCMODEEnabledWithPropFile()Z
    .registers 3

    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    move-result v0

    const/4 v1, 0x2

    const-string/jumbo v2, "UcmServiceODE"

    if-eq v0, v1, :cond_10

    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUcmOdeWpcEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    iget v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-eqz v0, :cond_20

    const-string/jumbo v0, "UCM ODE is enabled."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_20
    const-string/jumbo v0, "UCM ODE is not enabled"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isUcmOdeWpcEnabled()Z
    .registers 2

    const-string v0, "/efs/sec_efs/ucm_wpc_dar"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->readIntFromFile(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static updateOdeStatus()V
    .registers 4

    const-string v0, "/efs/sec_efs/ucm_ode_mode"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->readIntFromFile(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateOdeStatus ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    const-string/jumbo v2, "]"

    const-string/jumbo v3, "UcmServiceODE"

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    sget v0, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->sOdeStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.security.ucm_fbe_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
