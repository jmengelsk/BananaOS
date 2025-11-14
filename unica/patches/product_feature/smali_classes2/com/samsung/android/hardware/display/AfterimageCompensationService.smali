.class public Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final mAFPC_KEYS:[Ljava/lang/String;


# instance fields
.field public AfcStateCondition:Z

.field public AfcThreadAODCondition:Z

.field public AfcThreadCondition:Z

.field public AfcThreadTerminateCondition:Z

.field public AfpcPeriodCount:I

.field public AfpcPeriodCount_sub:I

.field public final AfpcPeriodMax:I

.field public AodBrightness:I

.field public final DEBUG:Z

.field public ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

.field public ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

.field public PANEL_NAME:Ljava/lang/String;

.field public PANEL_NAME_SUB:Ljava/lang/String;

.field public final TIME_SLICE:I

.field public UPDATE_NEEDED_MAIN:Z

.field public UPDATE_NEEDED_SUB:Z

.field public final effNbdiTh:[F

.field public final effNbdiTh_V3:[F

.field public final effNbdiTh_V4:[F

.field public final effNbdiTh_V5:[F

.field public final effNbdiTh_V6:[F

.field public final effNbdiTh_V7:[F

.field public final effNbdiTh_V9:[F

.field public isRunningCameraApp:Z

.field public mAfcThread:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;

.field public final mAfcType:I

.field public final mAfpcJndRef:[F

.field public final mAfpcJndRefV2:[F

.field public final mAfpcPanelNumber_main:I

.field public final mAfpcPanelNumber_sub:I

.field public final mAfpcSize:I

.field public mApplyCount:I

.field public mApplyCount_sub:I

.field public final mApplyScaleEffect:I

.field public mApplyValue:F

.field public mApplyValue_sub:F

.field public mAvgLum:D

.field public mAvgLum_sub:D

.field public final mContext:Landroid/content/Context;

.field public mEffAvgLum:D

.field public mEffAvgLum_sub:D

.field public mEffMaxBDI:D

.field public mEffMaxBDI_sub:D

.field public mEffNBDI:D

.field public mEffNBDI_sub:D

.field public mLuminance:I

.field public mLuminance_sub:I

.field public mMaxBDI:D

.field public mMaxBDI_sub:D

.field public mNBDI:D

.field public mNBDI_sub:D

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public final mThreadAFPC:Z

.field public final mThreadSleepTime:J

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetAfcStateCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetENABLE_ABC_MAIN(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetENABLE_ABC_SUB(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V3:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V5:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V7(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V7:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetisRunningCameraApp(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfpcPanelNumber_main(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadAFPC(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadSleepTime(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputUPDATE_NEEDED_MAIN(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->UPDATE_NEEDED_MAIN:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputUPDATE_NEEDED_SUB(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->UPDATE_NEEDED_SUB:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLuminance(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLuminance_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static -$$Nest$mgetBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "NumberFormatException : "

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/lcd/panel/brt_avg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ltz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_2
    const-string v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return v3
.end method

.method public static -$$Nest$mgetBrightness_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "NumberFormatException : "

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/lcd/panel1/brt_avg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ltz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_2
    const-string v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return v3
.end method

.method public static -$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    invoke-static {v9, v10}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v9

    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    invoke-static {v13, v14}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    invoke-static {v14, v15}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    move-object v0, v2

    move-object v15, v3

    iget-wide v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    iget-wide v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    iget-wide v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v2

    move-object v2, v0

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPC_KEYS:[Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0x10

    if-ge v3, v5, :cond_0

    :try_start_1
    aget-object v5, v2, v3

    aget-object v6, v0, v3

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v3

    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\\{"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\\}"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    const-string v2, "AfterimageCompensationService"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "customDataSet : "

    invoke-static {v0, v12, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "sendBroadcastToHWParam() mSemHqmManager.sendHWParamToHQM"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v9, "0.0"

    const-string/jumbo v10, "sec"

    const/4 v5, 0x0

    const-string v6, "Display"

    const-string v7, "DIQE"

    const-string/jumbo v8, "sm"

    const-string v11, ""

    const-string v13, ""

    invoke-virtual/range {v4 .. v13}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "sendBroadcastToHWParam() mSemHqmManager is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataEvaluate()F
    .locals 1

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataRead(IIIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataRead(IIIZ)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadAvgLum()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLum()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadAvgLumSub()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLumSub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffAvgLum()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLum()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffAvgLumSub()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLumSub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffMaxBDI()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffMaxBDISub()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffNBDI()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffNBDISub()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadMaxBDI()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadMaxBDISub()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadNBDI()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadNBDISub()D
    .locals 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadSub(IIIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadSub(IIIZ)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataSave(I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSave(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataSaveSub(I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSaveSub(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataTerminate(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataTerminate(I)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataTerminateSub(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataTerminateSub(I)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataUpdate(I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdate(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataUpdateSub(I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdateSub(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataWriteV2(I)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWriteV2(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 17

    const-string v15, "EffMaxBDI_sub"

    const-string v16, "EffNBDI_sub"

    const-string v1, "ApplyCount"

    const-string v2, "JND"

    const-string v3, "AvgLum"

    const-string/jumbo v4, "MaxBDI"

    const-string/jumbo v5, "NBDI"

    const-string v6, "EffAvgLum"

    const-string v7, "EffMaxBDI"

    const-string v8, "EffNBDI"

    const-string v9, "ApplyCount_sub"

    const-string v10, "JND_sub"

    const-string v11, "AvgLum_sub"

    const-string/jumbo v12, "MaxBDI_sub"

    const-string/jumbo v13, "NBDI_sub"

    const-string v14, "EffAvgLum_sub"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPC_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23

    move-object/from16 v1, p0

    const-string/jumbo v2, "afpcDataWrite - str : "

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    sget-object v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->NONE:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->UPDATE_NEEDED_MAIN:Z

    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->UPDATE_NEEDED_SUB:Z

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;

    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadTerminateCondition:Z

    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/4 v5, 0x0

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_sub:I

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    const/16 v6, 0xb4

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    const/4 v7, 0x5

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    const/16 v7, 0x14

    new-array v7, v7, [F

    fill-array-data v7, :array_2

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh:[F

    const/16 v7, 0x1e

    new-array v8, v7, [F

    fill-array-data v8, :array_3

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V3:[F

    new-array v7, v7, [F

    fill-array-data v7, :array_4

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V4:[F

    const/16 v7, 0x32

    new-array v7, v7, [F

    fill-array-data v7, :array_5

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V5:[F

    const/16 v7, 0x64

    new-array v8, v7, [F

    fill-array-data v8, :array_6

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V6:[F

    new-array v8, v7, [F

    fill-array-data v8, :array_7

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V7:[F

    new-array v8, v7, [F

    fill-array-data v8, :array_8

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V9:[F

    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    const-string/jumbo v8, "android.intent.action.SCREEN_ON"

    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    const-string/jumbo v10, "android.intent.action.ACTION_SHUTDOWN"

    const-string/jumbo v11, "com.sec.android.app.server.power.DISPLAY_ON_TIME"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    const-string/jumbo v8, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

    invoke-direct {v9, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    invoke-virtual {v8, v9, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Ljava/io/File;

    const-string v8, "/efs/afc"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v8, "/efs/afc1"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v8, "/sys/class/lcd/panel/copr_roi"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    new-instance v0, Ljava/io/File;

    const-string v8, "/sys/class/lcd/panel/brt_avg"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x10e000f

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x10e0012

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x10e0013

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_sub:I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x10e0014

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x10e0010

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x10e0016

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x10e0015

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v15, 0x10e0011

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x10e0017

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x107004f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1070044

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x107004e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x107008a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1070045

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    const/4 v5, 0x4

    if-lt v9, v6, :cond_3

    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-lt v9, v5, :cond_2

    const-wide/16 v5, 0x7530

    iput-wide v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    const/16 v0, 0xb40

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    goto :goto_0

    :cond_2
    const-wide/32 v5, 0xea60

    iput-wide v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    const/16 v0, 0x5a0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    goto :goto_0

    :cond_3
    if-ne v9, v4, :cond_4

    const-wide/16 v5, 0x2710

    iput-wide v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    :cond_4
    :goto_0
    const-string/jumbo v0, "mAfcType : "

    const-string v5, ", mThreadAFPC : "

    invoke-static {v9, v0, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mThreadSleepTime : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", AfpcPeriodMax : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AfterimageCompensationService"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mAfpcPanelNumber_main : "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mAfpcSize : "

    move/from16 v17, v3

    const-string v3, ", mAfpcHeight : "

    invoke-static {v11, v12, v6, v3, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v3, ", mAfpcWidth : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mAfpcPanelNumber_sub : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", mAfpcSize_sub : "

    const-string v6, ", mAfpcHeight_sub : "

    invoke-static {v8, v14, v3, v6, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mAfpcWidth_sub : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-eqz v0, :cond_1a

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    :try_start_0
    const-string v0, "1"

    const-string/jumbo v3, "ro.debuggable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "persist.abc.debug.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    :cond_5
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->checkApABCSupported()V

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->update_check_panel_id()V

    new-instance v0, Ljava/io/File;

    const-string v3, "/efs/afc/rewrited"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    new-instance v0, Ljava/io/File;

    const-string v6, "/efs/afc/poc_data"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v6, "/efs/afc/time_data"

    invoke-static {v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v6

    const-string v16, "/efs/afc/diff_data"

    invoke-static/range {v16 .. v16}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v16

    const-string v18, "/efs/afc1/poc_data"

    invoke-static/range {v18 .. v18}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v18

    const-string v19, "/efs/afc1/time_data"

    invoke-static/range {v19 .. v19}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v19

    const-string v20, "/efs/afc1/diff_data"

    invoke-static/range {v20 .. v20}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v20

    move/from16 v21, v15

    move v15, v6

    move v6, v14

    move v14, v0

    invoke-static/range {v9 .. v16}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataInit(IIIIIIII)I

    move-result v0

    const-string v12, "/efs/afc/apply_count"

    const-string v13, " "

    const-string/jumbo v14, "NumberFormatException : "

    if-nez v0, :cond_8

    invoke-static {v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_1
    invoke-static {v12}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    array-length v15, v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v22, v4

    const/4 v4, 0x2

    if-ne v15, v4, :cond_6

    :try_start_3
    aget-object v4, v0, v17

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    aget-object v0, v0, v22

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_6
    move/from16 v4, v17

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/4 v4, 0x0

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_3
    move-exception v0

    move/from16 v22, v4

    goto :goto_3

    :catch_4
    move-exception v0

    move/from16 v22, v4

    :goto_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_7
    move/from16 v22, v4

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processApplyData_main() mApplyCount : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mApplyValue : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v15, v19

    move-object/from16 v19, v3

    move-object v3, v14

    move/from16 v14, v18

    move/from16 v18, v22

    :goto_5
    move-object v4, v13

    move/from16 v16, v20

    move v13, v7

    move v7, v11

    move v11, v6

    move v6, v10

    move v10, v8

    move-object v8, v12

    move/from16 v12, v21

    goto :goto_6

    :cond_8
    move/from16 v22, v4

    move/from16 v15, v19

    move-object/from16 v19, v3

    move-object v3, v14

    move/from16 v14, v18

    const/16 v18, 0x0

    goto :goto_5

    :goto_6
    invoke-static/range {v9 .. v16}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataInitSub(IIIIIIII)I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "/efs/afc1/apply_count"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    :try_start_5
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    const/16 v17, 0x0

    aget-object v10, v0, v17

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    aget-object v0, v0, v22

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    const/4 v10, 0x0

    goto :goto_8

    :catch_6
    move-exception v0

    const/4 v10, 0x0

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    :try_start_7
    iput v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    const/4 v11, 0x0

    iput v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_7
    :try_start_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_a

    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v10, 0x0

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "processApplyData_sub() mApplyCount_sub : "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " , mApplyValue_sub : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v22

    goto :goto_b

    :cond_b
    const/4 v10, 0x0

    move v0, v10

    :goto_b
    if-nez v18, :cond_d

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    const-string/jumbo v0, "mAFPC init Failed"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_d
    :goto_c
    const/4 v0, 0x3

    if-lez v9, :cond_11

    const/16 v11, 0xd

    if-eq v9, v11, :cond_11

    const v11, 0x3d159

    if-le v6, v11, :cond_f

    if-eq v9, v0, :cond_e

    move/from16 v10, v22

    :cond_e
    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeMdnieBlockVerify(Z)I

    move-result v10

    const-string/jumbo v11, "mAFPC_MdnieBlockVerify verify block! result = "

    invoke-static {v10, v11, v5}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_f
    const-string/jumbo v11, "mAFPC_MdnieBlockVerify not support this model : main panel number : "

    const-string v12, " is lower? "

    invoke-static {v6, v11, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x3d0f5

    if-ge v6, v12, :cond_10

    move/from16 v10, v22

    :cond_10
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "mAFPC_MdnieBlockVerify not support this model : Supported Version is 35, current OS version : 36"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_d
    if-ne v9, v0, :cond_12

    const v0, 0x30da5

    if-lt v6, v0, :cond_12

    const v0, 0x30da7

    if-gt v6, v0, :cond_12

    const-string v0, "/efs/afc/mdnie_block"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    move/from16 v10, v22

    if-ne v0, v10, :cond_12

    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataApply(I)I

    :cond_12
    const v10, 0x2e6fa

    const v11, 0x2e6f9

    if-eq v6, v11, :cond_13

    if-ne v6, v10, :cond_14

    :cond_13
    const/16 v6, 0x64

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    :cond_14
    const-string v6, "7 0 "

    const-string v12, "/dev/poc"

    const-string v13, "/sys/class/lcd/panel/poc"

    const-string v14, "/cache/recovery/poc.vec"

    const/4 v15, 0x4

    if-ne v9, v15, :cond_16

    invoke-static {v13}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "AFPC_V2 Update"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileCopy()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "AFPC_V2 Update RECOVERY_POC  delete"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/16 v22, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%.2f"

    iget v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v4, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_e

    :catch_9
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    :cond_16
    :goto_e
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_19

    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    const v2, 0x2e695

    if-lt v0, v2, :cond_17

    const v2, 0x2e697

    if-le v0, v2, :cond_18

    :cond_17
    if-lt v0, v11, :cond_19

    if-gt v0, v10, :cond_19

    :cond_18
    invoke-static {v13}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "FOTA AFPC"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileCopy()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "FOTA AFPC RECOVERY_POC  delete"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/afc/org.vec"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    new-instance v0, Ljava/io/File;

    move-object/from16 v2, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    :cond_1a
    :goto_f
    const-string v0, "AfterimageCompensationService Init Success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x40e00000    # 7.0f
        0x41300000    # 11.0f
    .end array-data

    :array_1
    .array-data 4
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40e00000    # 7.0f
        0x41100000    # 9.0f
        0x41300000    # 11.0f
    .end array-data

    :array_2
    .array-data 4
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    :array_3
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    :array_4
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    :array_5
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    :array_6
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_7
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_8
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

.method public static fileCopy()V
    .locals 11

    const-string v0, "/cache/recovery/poc.vec"

    const-string v1, "/dev/poc"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_0

    :try_start_5
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v10

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v10

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v5, v2

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v5, v2

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v4, v2

    :goto_0
    move-object v5, v4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v4, v2

    :goto_1
    move-object v5, v4

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v4, v3

    goto :goto_0

    :catch_5
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    goto :goto_1

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_4
    :goto_3
    return-void

    :goto_4
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_7
    throw v1
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "File Close error"

    const-string v1, "AfterimageCompensationService"

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    aput-byte v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-eqz p0, :cond_1

    new-instance v6, Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v4, p0, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v2, v6

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v5

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v3, v2

    move-object v2, v5

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v3, v2

    move-object v2, v5

    goto :goto_4

    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    move-object v3, v2

    goto :goto_2

    :catch_4
    move-exception p0

    move-object v3, v2

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catch_5
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    move-object v2, v3

    goto :goto_5

    :goto_4
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :goto_5
    return-object v2

    :goto_6
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_7
    throw p0
.end method

.method private static native nativeDataAPInit(ILjava/lang/String;)I
.end method

.method private static native nativeDataApply(I)I
.end method

.method private static native nativeDataEvaluate()F
.end method

.method private static native nativeDataInit(IIIIIIII)I
.end method

.method private static native nativeDataInitSub(IIIIIIII)I
.end method

.method private static native nativeDataOff()I
.end method

.method private static native nativeDataRead(IIIZ)I
.end method

.method private static native nativeDataReadAvgLum()D
.end method

.method private static native nativeDataReadAvgLumSub()D
.end method

.method private static native nativeDataReadEffAvgLum()D
.end method

.method private static native nativeDataReadEffAvgLumSub()D
.end method

.method private static native nativeDataReadEffMaxBDI()D
.end method

.method private static native nativeDataReadEffMaxBDISub()D
.end method

.method private static native nativeDataReadEffNBDI()D
.end method

.method private static native nativeDataReadEffNBDISub()D
.end method

.method private static native nativeDataReadMaxBDI()D
.end method

.method private static native nativeDataReadMaxBDISub()D
.end method

.method private static native nativeDataReadNBDI()D
.end method

.method private static native nativeDataReadNBDISub()D
.end method

.method private static native nativeDataReadSub(IIIZ)I
.end method

.method private static native nativeDataSave(I)I
.end method

.method private static native nativeDataSaveSub(I)I
.end method

.method private static native nativeDataTerminate(I)I
.end method

.method private static native nativeDataTerminateSub(I)I
.end method

.method private static native nativeDataUpdate(I)I
.end method

.method private static native nativeDataUpdateSub(I)I
.end method

.method private static native nativeDataVerify()I
.end method

.method private static native nativeDataWrite(I)I
.end method

.method private static native nativeDataWriteV2(I)I
.end method

.method private static native nativeMdnieBlockVerify(Z)I
.end method

.method public static readStrFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "FileReader Close IOException : "

    const-string v1, "BufferedReader Close IOException : "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :catchall_0
    move-exception v2

    goto/16 :goto_7

    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto/16 :goto_7

    :catch_4
    move-exception v4

    move-object p0, v2

    goto :goto_2

    :catch_5
    move-exception v4

    move-object p0, v2

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v3, v2

    move-object v2, p0

    move-object p0, v3

    goto/16 :goto_7

    :catch_6
    move-exception v4

    move-object p0, v2

    move-object v3, p0

    goto :goto_2

    :catch_7
    move-exception v4

    move-object p0, v2

    move-object v3, p0

    goto :goto_4

    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p0, :cond_0

    :try_start_6
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_3

    :catch_8
    move-exception p0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_3
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_6

    :catch_9
    move-exception p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p0, :cond_1

    :try_start_9
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_5

    :catch_a
    move-exception p0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_5
    if-eqz v3, :cond_2

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_6

    :catch_b
    move-exception p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    :goto_6
    return-object v2

    :goto_7
    if-eqz p0, :cond_3

    :try_start_b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_8

    :catch_c
    move-exception p0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_8
    if-eqz v3, :cond_4

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_9

    :catch_d
    move-exception p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    :goto_9
    throw v2
.end method


# virtual methods
.method public final afpcDataApply()Z
    .locals 6

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v1, "afpcDataApply()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->checkApABCSupported()V

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display_aiqe"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    sget-object v4, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->NONE:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const/4 v5, 0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v1, v3}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setABCReconfig(I)Z

    invoke-virtual {v1, v3, v5}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setABCState(II)Z

    return v5

    :cond_2
    const-string v1, "/efs/afc/mdnie_block"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataApply(I)I

    return v5

    :cond_3
    const-string/jumbo p0, "afpcDataApply - AFC_MDNIE_BLOCK not exist"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final afpcDataOff()Z
    .locals 5

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v1, "afpcDataOff()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->checkApABCSupported()V

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display_aiqe"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "afpcDataOff() - ENABLE_ABC_MAIN:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    sget-object v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->NONE:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    if-eq p0, v0, :cond_2

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setABCState(II)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataOff()I

    return v3
.end method

.method public final afpcDataVerify()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "afpcDataVerify() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AfterimageCompensationService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataVerify()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final afpcDataWrite()Z
    .locals 7

    const-string/jumbo v0, "afpcDataWrite - str : "

    const-string v1, "AfterimageCompensationService"

    const-string/jumbo v2, "afpcDataWrite()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    array-length v4, v3

    if-ge v2, v4, :cond_0

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F

    move-result v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%.2f"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    aget v3, v3, v6

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWrite(I)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/efs/afc/apply_count"

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NumberFormatException : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    return v3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkApABCSupported()V
    .locals 16

    move-object/from16 v1, p0

    const-string/jumbo v0, "vendor.display.enable_abc"

    sget-object v2, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->NONE:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const-string/jumbo v3, "PANEL_NAME_SUB from aiqe manager : "

    const-string/jumbo v4, "PANEL_NAME from aiqe manager : "

    iget v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "AfterimageCompensationService"

    const-string v9, "1"

    const/16 v10, 0xc

    if-le v5, v10, :cond_1

    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    iget v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_sub:I

    iget v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    if-le v5, v10, :cond_7

    :try_start_1
    const-string/jumbo v5, "vendor.display.enable_aiqe_abc"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lcom/samsung/android/hardware/display/AbcXmlParser;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/samsung/android/hardware/display/AbcXmlParser;->parse()Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v9, :cond_7

    sget-object v9, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->LSI:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const/4 v10, 0x0

    if-eqz v12, :cond_4

    :try_start_2
    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_2

    move v13, v6

    goto :goto_1

    :cond_2
    move v13, v7

    :goto_1
    if-eqz v13, :cond_4

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v13, v10

    :goto_2
    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    invoke-static {v7, v13}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataAPInit(ILjava/lang/String;)I

    :cond_4
    if-eqz v11, :cond_7

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_5

    move v13, v6

    goto :goto_3

    :cond_5
    move v13, v7

    :goto_3
    if-eqz v13, :cond_7

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v5, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    :cond_6
    iput-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    invoke-static {v6, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataAPInit(ILjava/lang/String;)I

    :cond_7
    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "display_aiqe"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v9, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->QC:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const-string v10, ".xml"

    const-string/jumbo v13, "_udc.bin"

    const-string/jumbo v14, "_main.bin"

    const-string v15, "/vendor/etc/aiqe/"

    const-string v6, "AIQE_QC_ABC_"

    if-eqz v12, :cond_8

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->getPanelName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataAPInit(ILjava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    :goto_4
    if-eqz v11, :cond_9

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->getPanelName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataAPInit(ILjava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    iput-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    iput-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    :cond_9
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAFPC checkApABCSupported ENABLE_ABC_MAIN : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ENABLE_ABC_SUB : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    const-string v0, "AfterimageCompensationService"

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fileWriteString : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  value : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p0

    :catch_1
    const-string/jumbo p2, "fileWriteString : file not found : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final update_check_panel_id()V
    .locals 14

    const-string v0, "/sys/class/lcd/panel1/cell_id"

    const-string v1, "/sys/class/lcd/panel/cell_id"

    const-string v2, "EFS_PANEL_INFO_SUB : "

    const-string v3, "EFS_PANEL_INFO : "

    const-string/jumbo v4, "update_cell_id() function start"

    const-string v5, "AfterimageCompensationService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v4

    goto :goto_1

    :cond_0
    move-object v1, v4

    :goto_0
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v4

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "USER_PANEL_INFO : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "USER_PANEL_INFO_SUB : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/afc/cell_id"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v8, 0x1

    sget-object v9, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->NONE:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const-string/jumbo v10, "_main.bin"

    const-string/jumbo v11, "_udc.bin"

    const-string v12, "/efs/afc"

    if-eqz v6, :cond_11

    :try_start_2
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v6, v4

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-eqz v6, :cond_f

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "EFS_PANEL_INFO , USER_PANEL_INFO Diff O"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "fileWriteString success_1 USER_PANEL_INFO : "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , EFS_PANEL_INFO : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "/efs/afc/afc_data"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AFC_REG_DATA.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v1, "/efs/afc/logging_data"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "AFC_LOGGING_DATA.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v1, "/efs/afc/rewrited"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "MCA_REWRITED.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v1, "/efs/afc/original.vec"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "MCA_ORG_VEC.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v1, "/efs/afc/org.vec"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "AFC_ORIGINAL_VEC.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v1, "/efs/afc/time_data"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "AFC_TIME_DATA.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v1, "/efs/afc/diff_data"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "AFC_DIFF_DATA.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v1, "/efs/afc/poc_data"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "AFC_POC_DATA.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v1, "/efs/afc/apply_count"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "AFC_APPLY_COUNT.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v1, "/efs/afc/mdnie_block"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "AFC_MDNIE_BLOCK.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    invoke-static {v3, v6, v11}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "AIQE_UDC_FILE_MAIN.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    invoke-static {v3, v6, v10}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "AIQE_MAIN_FILE_MAIN.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    if-eq v1, v9, :cond_12

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->UPDATE_NEEDED_MAIN:Z

    goto :goto_5

    :cond_f
    if-nez v6, :cond_10

    if-eqz v1, :cond_10

    const-string v3, "EFS_PANEL_INFO value is NULL"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "UPDATE EFS_PANEL_INFO : "

    invoke-static {v1, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    const-string v1, "EFS_PANEL_INFO , USER_PANEL_INFO Diff X"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    invoke-static {v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    if-eqz v1, :cond_12

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "fileWriteString success_2 USER_PANEL_INFO : "

    const-string v6, " , EFS_PANEL_INFO : null"

    invoke-static {v3, v1, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_5
    const-string v1, "/efs/afc1/cell_id"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :try_start_4
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    if-eqz v4, :cond_1b

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "EFS_PANEL_INFO_SUB , USER_PANEL_INFO_SUB Diff O"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fileWriteString success_1 USER_PANEL_INFO_SUB : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , EFS_PANEL_INFO_SUB : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v0, "/efs/afc1/time_data"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "AFC_TIME_DATA_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const-string v0, "/efs/afc1/diff_data"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc1/diff_data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "AFC_DIFF_DATA_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string v0, "/efs/afc1/poc_data"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc1/poc_data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "AFC_POC_DATA_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const-string v0, "/efs/afc1/apply_count"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc1/apply_count"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "AFC_APPLY_COUNT_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const-string v0, "/efs/afc1/mdnie_block"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc1/mdnie_block"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "AFC_MDNIE_BLOCK_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    invoke-static {v1, v2, v11}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "AIQE_UDC_FILE_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    invoke-static {v1, v2, v10}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "AIQE_MAIN_FILE_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    if-eq v0, v9, :cond_1e

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->UPDATE_NEEDED_SUB:Z

    goto :goto_7

    :cond_1b
    if-nez v4, :cond_1c

    if-eqz v0, :cond_1c

    const-string v2, "EFS_PANEL_INFO_SUB value is NULL"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo p0, "UPDATE EFS_PANEL_INFO_SUB : "

    invoke-static {p0, v4, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_1c
    const-string p0, "EFS_PANEL_INFO_SUB , USER_PANEL_INFO_SUB Diff X"

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_1d
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const-string/jumbo p0, "fileWriteString success_3 USER_PANEL_INFO_SUB : "

    const-string v1, " , EFS_PANEL_INFO_SUB : null"

    invoke-static {p0, v0, v1, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_7
    const-string/jumbo p0, "update_cell_id() function end"

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
