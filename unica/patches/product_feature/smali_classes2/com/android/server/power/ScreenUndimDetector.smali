.class public final Lcom/android/server/power/ScreenUndimDetector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final KEY_KEEP_SCREEN_ON_FOR_MILLIS:Ljava/lang/String; = "keep_screen_on_for_millis"

.field static final KEY_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:Ljava/lang/String; = "max_duration_between_undims_millis"

.field static final KEY_UNDIMS_REQUIRED:Ljava/lang/String; = "undims_required"


# instance fields
.field public mContext:Landroid/content/Context;

.field mCurrentScreenPolicy:I

.field public mKeepScreenOnEnabled:Z

.field public mKeepScreenOnForMillis:J

.field public mMaxDurationBetweenUndimsMillis:J

.field mUndimCounter:I

.field mUndimCounterStartedMillis:J

.field public mUndimsRequired:I

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# virtual methods
.method public readValuesFromDeviceConfig()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string/jumbo v1, "keep_screen_on_enabled"

    const-string/jumbo v2, "attention_manager_service"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v3, "keep_screen_on_for_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string/jumbo v1, "undims_required"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    const-string/jumbo v4, "ScreenUndimDetector"

    if-lt v1, v3, :cond_50

    const/4 v3, 0x5

    if-le v1, v3, :cond_4e

    goto :goto_50

    :cond_4e
    move v0, v1

    goto :goto_6a

    :cond_50
    :goto_50
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Provided undimsRequired="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed [1, 5]; using the default="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v3, "max_duration_between_undims_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mMaxDurationBetweenUndimsMillis:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmKeepScreenOnForMillis="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmKeepScreenOnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmUndimsRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmMaxDurationBetweenUndimsMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mMaxDurationBetweenUndimsMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_16
    return-void
.end method
