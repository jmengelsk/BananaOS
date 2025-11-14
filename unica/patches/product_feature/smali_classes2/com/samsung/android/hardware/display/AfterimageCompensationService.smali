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
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetENABLE_ABC_MAIN(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetENABLE_ABC_SUB(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V3:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V5:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V7(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V7:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetisRunningCameraApp(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfpcPanelNumber_main(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadAFPC(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadSleepTime(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputUPDATE_NEEDED_MAIN(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->UPDATE_NEEDED_MAIN:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputUPDATE_NEEDED_SUB(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->UPDATE_NEEDED_SUB:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLuminance(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLuminance_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static -$$Nest$mgetBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "NumberFormatException : "

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/lcd/panel/brt_avg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3c

    :try_start_14
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_24

    if-eqz v1, :cond_3c

    :try_start_1a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_20} :catch_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_24

    if-ltz v1, :cond_3c

    const/4 v3, 0x1

    goto :goto_3c

    :catch_24
    move-exception p0

    goto :goto_39

    :catch_26
    move-exception p0

    :try_start_27
    const-string v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_38} :catch_24

    goto :goto_3c

    :goto_39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    :goto_3c
    return v3
.end method

.method public static -$$Nest$mgetBrightness_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "NumberFormatException : "

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/lcd/panel1/brt_avg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3c

    :try_start_14
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_24

    if-eqz v1, :cond_3c

    :try_start_1a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_20} :catch_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_24

    if-ltz v1, :cond_3c

    const/4 v3, 0x1

    goto :goto_3c

    :catch_24
    move-exception p0

    goto :goto_39

    :catch_26
    move-exception p0

    :try_start_27
    const-string v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_38} :catch_24

    goto :goto_3c

    :goto_39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    :goto_3c
    return v3
.end method

.method public static -$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 19

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

    :try_start_77
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_7c} :catch_8e

    const/4 v3, 0x0

    :goto_7d
    const/16 v5, 0x10

    if-ge v3, v5, :cond_93

    :try_start_81
    aget-object v5, v2, v3

    aget-object v6, v0, v3

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_88} :catch_8b

    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    :catch_8b
    move-exception v0

    move-object v3, v4

    goto :goto_8f

    :catch_8e
    move-exception v0

    :goto_8f
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v3

    :cond_93
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

    if-eqz v0, :cond_b3

    const-string/jumbo v0, "customDataSet : "

    invoke-static {v0, v12, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b3
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_d4

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

    goto :goto_da

    :cond_d4
    const-string/jumbo v0, "sendBroadcastToHWParam() mSemHqmManager is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_da
    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataEvaluate()F
    .registers 1

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataRead(IIIZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataRead(IIIZ)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadAvgLum()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLum()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadAvgLumSub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLumSub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffAvgLum()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLum()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffAvgLumSub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLumSub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffMaxBDI()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffMaxBDISub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffNBDI()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffNBDISub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadMaxBDI()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadMaxBDISub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadNBDI()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadNBDISub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadSub(IIIZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadSub(IIIZ)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataSave(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSave(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataSaveSub(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSaveSub(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataTerminate(I)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataTerminate(I)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataTerminateSub(I)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataTerminateSub(I)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataUpdate(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdate(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataUpdateSub(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdateSub(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataWriteV2(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWriteV2(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 17

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
    .registers 25

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

    fill-array-data v7, :array_568

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    const/4 v7, 0x5

    new-array v7, v7, [F

    fill-array-data v7, :array_570

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    const/16 v7, 0x14

    new-array v7, v7, [F

    fill-array-data v7, :array_57e

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh:[F

    const/16 v7, 0x1e

    new-array v8, v7, [F

    fill-array-data v8, :array_5aa

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V3:[F

    new-array v7, v7, [F

    fill-array-data v7, :array_5ea

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V4:[F

    const/16 v7, 0x32

    new-array v7, v7, [F

    fill-array-data v7, :array_62a

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V5:[F

    const/16 v7, 0x64

    new-array v8, v7, [F

    fill-array-data v8, :array_692

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V6:[F

    new-array v8, v7, [F

    fill-array-data v8, :array_75e

    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V7:[F

    new-array v8, v7, [F

    fill-array-data v8, :array_82a

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

    if-nez v8, :cond_f1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_f1
    new-instance v0, Ljava/io/File;

    const-string v8, "/efs/afc1"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_101

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_101
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

    if-lt v9, v6, :cond_1e8

    iput-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-lt v9, v5, :cond_1de

    const-wide/16 v5, 0x7530

    iput-wide v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    const/16 v0, 0xb40

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    goto :goto_1ee

    :cond_1de
    const-wide/32 v5, 0xea60

    iput-wide v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    const/16 v0, 0x5a0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    goto :goto_1ee

    :cond_1e8
    if-ne v9, v4, :cond_1ee

    const-wide/16 v5, 0x2710

    iput-wide v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    :cond_1ee
    :goto_1ee
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

    if-eqz v0, :cond_562

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    :try_start_263
    const-string v0, "1"

    const-string/jumbo v3, "ro.debuggable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_286

    const-string/jumbo v0, "persist.abc.debug.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_283} :catch_284

    goto :goto_286

    :catch_284
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    :cond_286
    :goto_286
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

    if-nez v0, :cond_360

    invoke-static {v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32b

    :try_start_2d7
    invoke-static {v12}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_2e5
    .catch Ljava/io/IOException; {:try_start_2d7 .. :try_end_2e5} :catch_310

    :try_start_2e5
    array-length v15, v0
    :try_end_2e6
    .catch Ljava/lang/NumberFormatException; {:try_start_2e5 .. :try_end_2e6} :catch_314
    .catch Ljava/io/IOException; {:try_start_2e5 .. :try_end_2e6} :catch_310

    move/from16 v22, v4

    const/4 v4, 0x2

    if-ne v15, v4, :cond_308

    :try_start_2eb
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

    goto :goto_32d

    :catch_304
    move-exception v0

    goto :goto_327

    :catch_306
    move-exception v0

    goto :goto_317

    :cond_308
    move/from16 v4, v17

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/4 v4, 0x0

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    :try_end_30f
    .catch Ljava/lang/NumberFormatException; {:try_start_2eb .. :try_end_30f} :catch_306
    .catch Ljava/io/IOException; {:try_start_2eb .. :try_end_30f} :catch_304

    goto :goto_32d

    :catch_310
    move-exception v0

    move/from16 v22, v4

    goto :goto_327

    :catch_314
    move-exception v0

    move/from16 v22, v4

    :goto_317
    :try_start_317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_326
    .catch Ljava/io/IOException; {:try_start_317 .. :try_end_326} :catch_304

    goto :goto_32d

    :goto_327
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32d

    :cond_32b
    move/from16 v22, v4

    :goto_32d
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

    :goto_354
    move-object v4, v13

    move/from16 v16, v20

    move v13, v7

    move v7, v11

    move v11, v6

    move v6, v10

    move v10, v8

    move-object v8, v12

    move/from16 v12, v21

    goto :goto_36c

    :cond_360
    move/from16 v22, v4

    move/from16 v15, v19

    move-object/from16 v19, v3

    move-object v3, v14

    move/from16 v14, v18

    const/16 v18, 0x0

    goto :goto_354

    :goto_36c
    invoke-static/range {v9 .. v16}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataInitSub(IIIIIIII)I

    move-result v0

    if-nez v0, :cond_3ed

    const-string v0, "/efs/afc1/apply_count"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3cb

    :try_start_37a
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3cb

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_388
    .catch Ljava/io/IOException; {:try_start_37a .. :try_end_388} :catch_3a7

    :try_start_388
    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3ad

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
    :try_end_3a6
    .catch Ljava/lang/NumberFormatException; {:try_start_388 .. :try_end_3a6} :catch_3aa
    .catch Ljava/io/IOException; {:try_start_388 .. :try_end_3a6} :catch_3a7

    goto :goto_3cb

    :catch_3a7
    move-exception v0

    const/4 v10, 0x0

    goto :goto_3c7

    :catch_3aa
    move-exception v0

    const/4 v10, 0x0

    goto :goto_3b7

    :cond_3ad
    const/4 v10, 0x0

    :try_start_3ae
    iput v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    const/4 v11, 0x0

    iput v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F
    :try_end_3b3
    .catch Ljava/lang/NumberFormatException; {:try_start_3ae .. :try_end_3b3} :catch_3b6
    .catch Ljava/io/IOException; {:try_start_3ae .. :try_end_3b3} :catch_3b4

    goto :goto_3cc

    :catch_3b4
    move-exception v0

    goto :goto_3c7

    :catch_3b6
    move-exception v0

    :goto_3b7
    :try_start_3b7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c6
    .catch Ljava/io/IOException; {:try_start_3b7 .. :try_end_3c6} :catch_3b4

    goto :goto_3cc

    :goto_3c7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3cc

    :cond_3cb
    :goto_3cb
    const/4 v10, 0x0

    :goto_3cc
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

    goto :goto_3ef

    :cond_3ed
    const/4 v10, 0x0

    move v0, v10

    :goto_3ef
    if-nez v18, :cond_3fc

    if-eqz v0, :cond_3f4

    goto :goto_3fc

    :cond_3f4
    const-string/jumbo v0, "mAFPC init Failed"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_562

    :cond_3fc
    :goto_3fc
    const/4 v0, 0x3

    if-lez v9, :cond_437

    const/16 v11, 0xd

    if-eq v9, v11, :cond_437

    const v11, 0x3d159

    if-le v6, v11, :cond_417

    if-eq v9, v0, :cond_40c

    move/from16 v10, v22

    :cond_40c
    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeMdnieBlockVerify(Z)I

    move-result v10

    const-string/jumbo v11, "mAFPC_MdnieBlockVerify verify block! result = "

    invoke-static {v10, v11, v5}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_437

    :cond_417
    const-string/jumbo v11, "mAFPC_MdnieBlockVerify not support this model : main panel number : "

    const-string v12, " is lower? "

    invoke-static {v6, v11, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x3d0f5

    if-ge v6, v12, :cond_427

    move/from16 v10, v22

    :cond_427
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "mAFPC_MdnieBlockVerify not support this model : Supported Version is 35, current OS version : 36"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_437
    :goto_437
    if-ne v9, v0, :cond_452

    const v0, 0x30da5

    if-lt v6, v0, :cond_452

    const v0, 0x30da7

    if-gt v6, v0, :cond_452

    const-string v0, "/efs/afc/mdnie_block"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    move/from16 v10, v22

    if-ne v0, v10, :cond_452

    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataApply(I)I

    :cond_452
    const v10, 0x2e6fa

    const v11, 0x2e6f9

    if-eq v6, v11, :cond_45c

    if-ne v6, v10, :cond_460

    :cond_45c
    const/16 v6, 0x64

    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    :cond_460
    const-string v6, "7 0 "

    const-string v12, "/dev/poc"

    const-string v13, "/sys/class/lcd/panel/poc"

    const-string v14, "/cache/recovery/poc.vec"

    const/4 v15, 0x4

    if-ne v9, v15, :cond_4f8

    invoke-static {v13}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f8

    invoke-static {v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f8

    invoke-static {v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f8

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

    if-eqz v0, :cond_4a4

    const-string v0, "AFPC_V2 Update RECOVERY_POC  delete"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a4
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/16 v22, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    :try_start_4ac
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
    :try_end_4e4
    .catch Ljava/lang/NumberFormatException; {:try_start_4ac .. :try_end_4e4} :catch_4e5

    goto :goto_4f8

    :catch_4e5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    :cond_4f8
    :goto_4f8
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_548

    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    const v2, 0x2e695

    if-lt v0, v2, :cond_509

    const v2, 0x2e697

    if-le v0, v2, :cond_50d

    :cond_509
    if-lt v0, v11, :cond_548

    if-gt v0, v10, :cond_548

    :cond_50d
    invoke-static {v13}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_548

    invoke-static {v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_548

    invoke-static {v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_548

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

    if-eqz v0, :cond_548

    const-string v0, "FOTA AFPC RECOVERY_POC  delete"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_548
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/afc/org.vec"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    new-instance v0, Ljava/io/File;

    move-object/from16 v2, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_562

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    :cond_562
    :goto_562
    const-string v0, "AfterimageCompensationService Init Success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_568
    .array-data 4
        0x40e00000  # 7.0f
        0x41300000  # 11.0f
    .end array-data

    :array_570
    .array-data 4
        0x40400000  # 3.0f
        0x40a00000  # 5.0f
        0x40e00000  # 7.0f
        0x41100000  # 9.0f
        0x41300000  # 11.0f
    .end array-data

    :array_57e
    .array-data 4
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
    .end array-data

    :array_5aa
    .array-data 4
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
    .end array-data

    :array_5ea
    .array-data 4
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
    .end array-data

    :array_62a
    .array-data 4
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x42c80000  # 100.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43160000  # 150.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x43480000  # 200.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x437a0000  # 250.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
        0x43960000  # 300.0f
    .end array-data

    :array_692
    .array-data 4
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
    .end array-data

    :array_75e
    .array-data 4
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
    .end array-data

    :array_82a
    .array-data 4
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
        0x41f00000  # 30.0f
    .end array-data
.end method

.method public static fileCopy()V
    .registers 11

    const-string v0, "/cache/recovery/poc.vec"

    const-string v1, "/dev/poc"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_55
    .catchall {:try_start_5 .. :try_end_a} :catchall_50

    :try_start_a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_4c
    .catchall {:try_start_a .. :try_end_f} :catchall_47

    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_44
    .catchall {:try_start_f .. :try_end_13} :catchall_40

    :try_start_13
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_3e
    .catchall {:try_start_13 .. :try_end_17} :catchall_3b

    :try_start_17
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_38
    .catchall {:try_start_17 .. :try_end_20} :catchall_34

    if-eqz v10, :cond_25

    :try_start_22
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    :cond_25
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_70

    :catchall_34
    move-exception v0

    move-object v1, v0

    move-object v2, v10

    goto :goto_71

    :catch_38
    move-exception v0

    move-object v2, v10

    goto :goto_59

    :catchall_3b
    move-exception v0

    move-object v1, v0

    goto :goto_71

    :catch_3e
    move-exception v0

    goto :goto_59

    :catchall_40
    move-exception v0

    move-object v1, v0

    move-object v5, v2

    goto :goto_71

    :catch_44
    move-exception v0

    move-object v5, v2

    goto :goto_59

    :catchall_47
    move-exception v0

    move-object v1, v0

    move-object v4, v2

    :goto_4a
    move-object v5, v4

    goto :goto_71

    :catch_4c
    move-exception v0

    move-object v4, v2

    :goto_4e
    move-object v5, v4

    goto :goto_59

    :catchall_50
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v4, v3

    goto :goto_4a

    :catch_55
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    goto :goto_4e

    :goto_59
    :try_start_59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_3b

    if-eqz v2, :cond_61

    :try_start_5e
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_61
    if-eqz v5, :cond_66

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_66
    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_6b
    if-eqz v4, :cond_70

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_70} :catch_2f

    :cond_70
    :goto_70
    return-void

    :goto_71
    if-eqz v2, :cond_79

    :try_start_73
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_79

    :catch_77
    move-exception v0

    goto :goto_89

    :cond_79
    :goto_79
    if-eqz v5, :cond_7e

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_7e
    if-eqz v3, :cond_83

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_83
    if-eqz v4, :cond_8c

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_88} :catch_77

    goto :goto_8c

    :goto_89
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8c
    :goto_8c
    throw v1
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "File Close error"

    const-string v1, "AfterimageCompensationService"

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_a
    if-ge v5, v2, :cond_11

    aput-byte v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :try_start_12
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_48
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_45
    .catchall {:try_start_12 .. :try_end_1c} :catchall_43

    :try_start_1c
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-eqz p0, :cond_38

    new-instance v6, Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v4, p0, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v2, v6

    goto :goto_38

    :catchall_2d
    move-exception p0

    move-object v2, v5

    goto :goto_88

    :catch_30
    move-exception p0

    move-object v3, v2

    move-object v2, v5

    goto :goto_4b

    :catch_34
    move-exception p0

    move-object v3, v2

    move-object v2, v5

    goto :goto_6d

    :cond_38
    :goto_38
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_3b} :catch_34
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3b} :catch_30
    .catchall {:try_start_1c .. :try_end_3b} :catchall_2d

    :try_start_3b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_87

    :catch_3f
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    :catchall_43
    move-exception p0

    goto :goto_88

    :catch_45
    move-exception p0

    move-object v3, v2

    goto :goto_4b

    :catch_48
    move-exception p0

    move-object v3, v2

    goto :goto_6d

    :goto_4b
    :try_start_4b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_4b .. :try_end_62} :catchall_43

    if-eqz v2, :cond_6b

    :try_start_64
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6b

    :catch_68
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    move-object v2, v3

    goto :goto_87

    :goto_6d
    :try_start_6d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_6d .. :try_end_81} :catchall_43

    if-eqz v2, :cond_6b

    :try_start_83
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_68

    goto :goto_6b

    :goto_87
    return-object v2

    :goto_88
    if-eqz v2, :cond_91

    :try_start_8a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_91

    :catch_8e
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    :goto_91
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
    .registers 8

    const-string v0, "FileReader Close IOException : "

    const-string v1, "BufferedReader Close IOException : "

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_67
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_63
    .catchall {:try_start_5 .. :try_end_a} :catchall_5d

    :try_start_a
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_5a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_57
    .catchall {:try_start_a .. :try_end_f} :catchall_51

    :try_start_f
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_13} :catch_4f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_4d
    .catchall {:try_start_f .. :try_end_13} :catchall_4a

    :try_start_13
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_2d

    :catch_17
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

    :goto_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_32

    goto/16 :goto_c8

    :catch_32
    move-exception p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3a
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_c8

    :catchall_4a
    move-exception v2

    goto/16 :goto_c9

    :catch_4d
    move-exception v4

    goto :goto_6b

    :catch_4f
    move-exception v4

    goto :goto_99

    :catchall_51
    move-exception p0

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto/16 :goto_c9

    :catch_57
    move-exception v4

    move-object p0, v2

    goto :goto_6b

    :catch_5a
    move-exception v4

    move-object p0, v2

    goto :goto_99

    :catchall_5d
    move-exception p0

    move-object v3, v2

    move-object v2, p0

    move-object p0, v3

    goto/16 :goto_c9

    :catch_63
    move-exception v4

    move-object p0, v2

    move-object v3, p0

    goto :goto_6b

    :catch_67
    move-exception v4

    move-object p0, v2

    move-object v3, p0

    goto :goto_99

    :goto_6b
    :try_start_6b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_4a

    if-eqz p0, :cond_8a

    :try_start_70
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_8a

    :catch_74
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

    :cond_8a
    :goto_8a
    if-eqz v3, :cond_c8

    :try_start_8c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_c8

    :catch_90
    move-exception p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    :goto_99
    :try_start_99
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_4a

    if-eqz p0, :cond_b8

    :try_start_9e
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_b8

    :catch_a2
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

    :cond_b8
    :goto_b8
    if-eqz v3, :cond_c8

    :try_start_ba
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_be

    goto :goto_c8

    :catch_be
    move-exception p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3a

    :cond_c8
    :goto_c8
    return-object v2

    :goto_c9
    if-eqz p0, :cond_e5

    :try_start_cb
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    goto :goto_e5

    :catch_cf
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

    :cond_e5
    :goto_e5
    if-eqz v3, :cond_101

    :try_start_e7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_101

    :catch_eb
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

    :cond_101
    :goto_101
    throw v2
.end method


# virtual methods
.method public final afpcDataApply()Z
    .registers 7

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v1, "afpcDataApply()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_13

    const/4 v2, 0x5

    if-lt v1, v2, :cond_12

    goto :goto_13

    :cond_12
    return v3

    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->checkApABCSupported()V

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display_aiqe"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    sget-object v4, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->NONE:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const/4 v5, 0x1

    if-eq v2, v4, :cond_2f

    invoke-virtual {v1, v3}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setABCReconfig(I)Z

    invoke-virtual {v1, v3, v5}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setABCState(II)Z

    return v5

    :cond_2f
    const-string v1, "/efs/afc/mdnie_block"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataApply(I)I

    return v5

    :cond_3d
    const-string/jumbo p0, "afpcDataApply - AFC_MDNIE_BLOCK not exist"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final afpcDataOff()Z
    .registers 6

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v1, "afpcDataOff()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_13

    const/4 v2, 0x5

    if-lt v1, v2, :cond_12

    goto :goto_13

    :cond_12
    return v3

    :cond_13
    :goto_13
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

    if-eq p0, v0, :cond_40

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setABCState(II)Z

    const/4 p0, 0x1

    return p0

    :cond_40
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataOff()I

    return v3
.end method

.method public final afpcDataVerify()Z
    .registers 3

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

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final afpcDataWrite()Z
    .registers 8

    const-string/jumbo v0, "afpcDataWrite - str : "

    const-string v1, "AfterimageCompensationService"

    const-string/jumbo v2, "afpcDataWrite()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9f

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-eqz v2, :cond_9f

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    if-eqz v2, :cond_9f

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    array-length v4, v3

    if-ge v2, v4, :cond_9f

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

    if-ltz v2, :cond_9f

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWrite(I)I

    move-result v2

    if-nez v2, :cond_9f

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    :try_start_4f
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
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_87} :catch_88

    return v3

    :catch_88
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

    :cond_9f
    const/4 p0, 0x0

    return p0
.end method

.method public final checkApABCSupported()V
    .registers 17

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

    if-le v5, v10, :cond_31

    :try_start_19
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2f

    const-string v11, "2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_216

    if-eqz v0, :cond_31

    :cond_2f
    move v0, v6

    goto :goto_32

    :cond_31
    move v0, v7

    :goto_32
    iget v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_sub:I

    iget v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    if-le v5, v10, :cond_e9

    :try_start_38
    const-string/jumbo v5, "vendor.display.enable_aiqe_abc"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e9

    new-instance v5, Lcom/samsung/android/hardware/display/AbcXmlParser;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/samsung/android/hardware/display/AbcXmlParser;->parse()Z

    move-result v9
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_55} :catch_216

    if-eqz v9, :cond_e9

    sget-object v9, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->LSI:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const/4 v10, 0x0

    if-eqz v12, :cond_a2

    :try_start_5c
    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7a

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7a

    move v13, v6

    goto :goto_7b

    :cond_7a
    move v13, v7

    :goto_7b
    if-eqz v13, :cond_a2

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9a

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_9b

    :cond_9a
    move-object v13, v10

    :goto_9b
    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    invoke-static {v7, v13}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataAPInit(ILjava/lang/String;)I

    :cond_a2
    if-eqz v11, :cond_e9

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c2

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_c2

    move v13, v6

    goto :goto_c3

    :cond_c2
    move v13, v7

    :goto_c3
    if-eqz v13, :cond_e9

    iget-object v13, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e2

    iget-object v5, v5, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    :cond_e2
    iput-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    invoke-static {v6, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataAPInit(ILjava/lang/String;)I

    :cond_e9
    if-eqz v0, :cond_21a

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "display_aiqe"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_f7} :catch_216

    sget-object v9, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->QC:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    const-string v10, ".xml"

    const-string/jumbo v13, "_udc.bin"

    const-string/jumbo v14, "_main.bin"

    const-string v15, "/vendor/etc/aiqe/"

    const-string v6, "AIQE_QC_ABC_"

    if-eqz v12, :cond_18c

    :try_start_107
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

    if-eqz v0, :cond_18c

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

    if-eqz v0, :cond_18c

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

    if-eqz v0, :cond_18c

    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataAPInit(ILjava/lang/String;)I
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_185} :catch_186

    goto :goto_18c

    :catch_186
    move-exception v0

    :try_start_187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18c} :catch_216

    :cond_18c
    :goto_18c
    if-eqz v11, :cond_21a

    :try_start_18e
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

    if-eqz v0, :cond_21a

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

    if-eqz v0, :cond_21a

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

    if-eqz v0, :cond_21a

    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataAPInit(ILjava/lang/String;)I
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_20e} :catch_20f

    goto :goto_21a

    :catch_20f
    move-exception v0

    :try_start_210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_215} :catch_216

    goto :goto_21a

    :catch_216
    iput-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    iput-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    :cond_21a
    :goto_21a
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
    .registers 6

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    const-string v0, "AfterimageCompensationService"

    if-eqz p0, :cond_20

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

    :cond_20
    const/4 p0, 0x0

    :try_start_21
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_2b} :catch_4a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_3a

    :try_start_2b
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_3c

    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_38} :catch_4a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3a

    const/4 p0, 0x1

    return p0

    :catch_3a
    move-exception p1

    goto :goto_46

    :catchall_3c
    move-exception p2

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v1

    :try_start_42
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw p2
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_46} :catch_4a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_3a

    :goto_46
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p0

    :catch_4a
    const-string/jumbo p2, "fileWriteString : file not found : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final update_check_panel_id()V
    .registers 15

    const-string v0, "/sys/class/lcd/panel1/cell_id"

    const-string v1, "/sys/class/lcd/panel/cell_id"

    const-string v2, "EFS_PANEL_INFO_SUB : "

    const-string v3, "EFS_PANEL_INFO : "

    const-string/jumbo v4, "update_cell_id() function start"

    const-string v5, "AfterimageCompensationService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_11
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v0

    move-object v1, v4

    goto :goto_36

    :cond_24
    move-object v1, v4

    :goto_25
    :try_start_25
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_35

    goto :goto_3a

    :catch_35
    move-exception v0

    :goto_36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_39
    move-object v0, v4

    :goto_3a
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

    if-eqz v6, :cond_212

    :try_start_76
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7a} :catch_8c

    :try_start_7a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_89} :catch_8a

    goto :goto_91

    :catch_8a
    move-exception v3

    goto :goto_8e

    :catch_8c
    move-exception v3

    move-object v6, v4

    :goto_8e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_91
    if-eqz v6, :cond_1f9

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f9

    const-string v3, "EFS_PANEL_INFO , USER_PANEL_INFO Diff O"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_be

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

    :cond_be
    const-string v1, "/efs/afc/afc_data"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_d6

    const-string v1, "AFC_REG_DATA.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    const-string v1, "/efs/afc/logging_data"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ee

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_ee

    const-string v1, "AFC_LOGGING_DATA.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ee
    const-string v1, "/efs/afc/rewrited"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_107

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_107

    const-string/jumbo v1, "MCA_REWRITED.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    const-string v1, "/efs/afc/original.vec"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_120

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_120

    const-string/jumbo v1, "MCA_ORG_VEC.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_120
    const-string v1, "/efs/afc/org.vec"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_138

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_138

    const-string v1, "AFC_ORIGINAL_VEC.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_138
    const-string v1, "/efs/afc/time_data"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_150

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_150

    const-string v1, "AFC_TIME_DATA.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_150
    const-string v1, "/efs/afc/diff_data"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_168

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_168

    const-string v1, "AFC_DIFF_DATA.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_168
    const-string v1, "/efs/afc/poc_data"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_180

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_180

    const-string v1, "AFC_POC_DATA.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_180
    const-string v1, "/efs/afc/apply_count"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_198

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_198

    const-string v1, "AFC_APPLY_COUNT.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_198
    const-string v1, "/efs/afc/mdnie_block"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1b0

    const-string v1, "AFC_MDNIE_BLOCK.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    invoke-static {v3, v6, v11}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1d1

    const-string v1, "AIQE_UDC_FILE_MAIN.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME:Ljava/lang/String;

    invoke-static {v3, v6, v10}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1f2

    const-string v1, "AIQE_MAIN_FILE_MAIN.delete() success"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f2
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_MAIN:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    if-eq v1, v9, :cond_228

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->UPDATE_NEEDED_MAIN:Z

    goto :goto_228

    :cond_1f9
    if-nez v6, :cond_20c

    if-eqz v1, :cond_20c

    const-string v3, "EFS_PANEL_INFO value is NULL"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "UPDATE EFS_PANEL_INFO : "

    invoke-static {v1, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_228

    :cond_20c
    const-string v1, "EFS_PANEL_INFO , USER_PANEL_INFO Diff X"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_228

    :cond_212
    invoke-static {v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_228

    if-eqz v1, :cond_228

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_228

    const-string/jumbo v3, "fileWriteString success_2 USER_PANEL_INFO : "

    const-string v6, " , EFS_PANEL_INFO : null"

    invoke-static {v3, v1, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_228
    :goto_228
    const-string v1, "/efs/afc1/cell_id"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_357

    :try_start_230
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_243} :catch_244

    goto :goto_248

    :catch_244
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_248
    if-eqz v4, :cond_33e

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33e

    const-string v2, "EFS_PANEL_INFO_SUB , USER_PANEL_INFO_SUB Diff O"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_275

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

    :cond_275
    const-string v0, "/efs/afc1/time_data"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28d

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_28d

    const-string v0, "AFC_TIME_DATA_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28d
    const-string v0, "/efs/afc1/diff_data"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a7

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc1/diff_data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2a7

    const-string v0, "AFC_DIFF_DATA_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a7
    const-string v0, "/efs/afc1/poc_data"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c1

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc1/poc_data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2c1

    const-string v0, "AFC_POC_DATA_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c1
    const-string v0, "/efs/afc1/apply_count"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2db

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc1/apply_count"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2db

    const-string v0, "AFC_APPLY_COUNT_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2db
    const-string v0, "/efs/afc1/mdnie_block"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f5

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc1/mdnie_block"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2f5

    const-string v0, "AFC_MDNIE_BLOCK_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f5
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    invoke-static {v1, v2, v11}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_316

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_316

    const-string v0, "AIQE_UDC_FILE_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_316
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->PANEL_NAME_SUB:Ljava/lang/String;

    invoke-static {v1, v2, v10}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_337

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_337

    const-string v0, "AIQE_MAIN_FILE_SUB.delete() success"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_337
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->ENABLE_ABC_SUB:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    if-eq v0, v9, :cond_36d

    iput-boolean v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->UPDATE_NEEDED_SUB:Z

    goto :goto_36d

    :cond_33e
    if-nez v4, :cond_351

    if-eqz v0, :cond_351

    const-string v2, "EFS_PANEL_INFO_SUB value is NULL"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo p0, "UPDATE EFS_PANEL_INFO_SUB : "

    invoke-static {p0, v4, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36d

    :cond_351
    const-string p0, "EFS_PANEL_INFO_SUB , USER_PANEL_INFO_SUB Diff X"

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36d

    :cond_357
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36d

    if-eqz v0, :cond_36d

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36d

    const-string/jumbo p0, "fileWriteString success_3 USER_PANEL_INFO_SUB : "

    const-string v1, " , EFS_PANEL_INFO_SUB : null"

    invoke-static {p0, v0, v1, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_36d
    :goto_36d
    const-string/jumbo p0, "update_cell_id() function end"

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
