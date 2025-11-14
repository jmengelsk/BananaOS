.class public final Lcom/android/server/vibrator/SemCustomVibration;
.super Lcom/android/server/vibrator/SemVibration;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

.field public final mSettings:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/SemVibrationBundle;Landroid/os/vibrator/SemHapticSegment;Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    iput-object p1, p0, Lcom/android/server/vibrator/SemCustomVibration;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/vibrator/SemCustomVibration;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    iput-object p4, p0, Lcom/android/server/vibrator/SemCustomVibration;->mSettings:Lcom/android/server/vibrator/VibrationSettings;

    return-void
.end method


# virtual methods
.method public final getCustomAmplitudeData(ILjava/lang/String;)[I
    .registers 8

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aget-object p2, p2, v0

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    new-array v0, v0, [I

    iget-object p0, p0, Lcom/android/server/vibrator/SemCustomVibration;->mSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    int-to-double v1, p0

    int-to-double p0, p1

    div-double/2addr v1, p0

    const/4 p0, 0x0

    :goto_1c
    :try_start_1c
    array-length p1, p2

    if-ge p0, p1, :cond_31

    aget-object p1, p2, p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v3, v1

    double-to-int p1, v3

    aput p1, v0, p0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_2a} :catch_2d

    add-int/lit8 p0, p0, 0x1

    goto :goto_1c

    :catch_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_31
    return-object v0
.end method

.method public final getVibration()Lcom/android/server/vibrator/HalVibration;
    .registers 14

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->commonValidation()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_c

    return-object v3

    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/vibrator/SemCustomVibration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    :try_start_16
    iget-object v0, p0, Lcom/android/server/vibrator/SemCustomVibration;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/SemHapticSegment;->getCategoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string/jumbo v9, "vibration_pattern=?"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_31} :catch_58
    .catchall {:try_start_16 .. :try_end_31} :catchall_54

    iget v7, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    if-eqz v6, :cond_8a

    :try_start_35
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string/jumbo v0, "custom_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_95

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_5a

    :try_start_4d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_58
    .catchall {:try_start_4d .. :try_end_50} :catchall_54

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_54
    move-exception v0

    move-object p0, v0

    goto/16 :goto_cb

    :catch_58
    move-exception v0

    goto :goto_a9

    :catchall_5a
    move-exception v0

    move-object v7, v0

    goto :goto_9e

    :cond_5d
    :try_start_5d
    const-string v0, "#"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    aget-object v0, v0, v9

    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    new-array v10, v10, [J
    :try_end_6f
    .catchall {:try_start_5d .. :try_end_6f} :catchall_5a

    :goto_6f
    :try_start_6f
    array-length v11, v0

    if-ge v9, v11, :cond_81

    aget-object v11, v0, v9

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    aput-wide v11, v10, v9
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_7a} :catch_7d
    .catchall {:try_start_6f .. :try_end_7a} :catchall_5a

    add-int/lit8 v9, v9, 0x1

    goto :goto_6f

    :catch_7d
    move-exception v0

    :try_start_7e
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_81
    invoke-virtual {p0, v1, v8}, Lcom/android/server/vibrator/SemCustomVibration;->getCustomAmplitudeData(ILjava/lang/String;)[I

    move-result-object v0

    invoke-static {v10, v0, v7}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v3

    goto :goto_95

    :cond_8a
    iget-object v0, p0, Lcom/android/server/vibrator/SemCustomVibration;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/SemHapticSegment;->getDefaultSepIndex()I

    move-result v0

    invoke-static {v0, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_94
    .catchall {:try_start_7e .. :try_end_94} :catchall_5a

    move-object v3, v0

    :cond_95
    :goto_95
    if-eqz v6, :cond_9a

    :try_start_97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_58
    .catchall {:try_start_97 .. :try_end_9a} :catchall_54

    :cond_9a
    :goto_9a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_ad

    :goto_9e
    if-eqz v6, :cond_a8

    :try_start_a0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a4

    goto :goto_a8

    :catchall_a4
    move-exception v0

    :try_start_a5
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a8
    :goto_a8
    throw v7
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a9} :catch_58
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_54

    :goto_a9
    :try_start_a9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_54

    goto :goto_9a

    :goto_ad
    if-eqz v3, :cond_b2

    invoke-virtual {v3, v1}, Landroid/os/VibrationEffect;->semSetMagnitude(I)V

    :cond_b2
    invoke-static {v3}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v6

    new-instance v4, Lcom/android/server/vibrator/HalVibration;

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternFrequencyByIndex(I)I

    const-wide/16 v7, -0x1

    iget v9, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/vibrator/HalVibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;JI[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;)V

    return-object v4

    :goto_cb
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SemCustomVibration : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/SemVibration;->getCommonLog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
