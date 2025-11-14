.class public final Lcom/samsung/android/server/vibrator/VibratorHqmData;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAlarmCount:I

.field public mExtraCount:I

.field public mLoggingData:Ljava/util/HashMap;

.field public mNotificationCount:I

.field public mRingCount:I

.field public mTouchCount:I


# virtual methods
.method public final increaseCount(I)V
    .registers 4

    const/16 v0, 0x11

    const v1, 0x7fffffff

    if-eq p1, v0, :cond_6a

    const/16 v0, 0x12

    if-eq p1, v0, :cond_55

    const/16 v0, 0x21

    if-eq p1, v0, :cond_40

    const/16 v0, 0x31

    if-eq p1, v0, :cond_2b

    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    if-lt p1, v1, :cond_1d

    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    :cond_1d
    iget-object p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    iget p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "FW_EVPC"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2b
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    if-lt p1, v1, :cond_30

    goto :goto_32

    :cond_30
    add-int/lit8 v1, p1, 0x1

    :goto_32
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "FW_NVPC"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_40
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    if-lt p1, v1, :cond_45

    goto :goto_47

    :cond_45
    add-int/lit8 v1, p1, 0x1

    :goto_47
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "FW_RVPC"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_55
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    if-lt p1, v1, :cond_5a

    goto :goto_5c

    :cond_5a
    add-int/lit8 v1, p1, 0x1

    :goto_5c
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "FW_TVPC"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6a
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    if-lt p1, v1, :cond_6f

    goto :goto_71

    :cond_6f
    add-int/lit8 v1, p1, 0x1

    :goto_71
    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "FW_AVPC"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
