.class public final Lcom/android/server/power/HqmDataDispatcher;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayStats:Landroid/util/SparseArray;

.field public mGlobalBrightness:F

.field public final mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

.field public final mHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/HqmDataDispatcher$Clock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    const-string v0, "HqmDataDispatcher"

    const-string v1, "HqmDataDispatcher()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;-><init>(Lcom/android/server/power/HqmDataDispatcher;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    iput-object p3, p0, Lcom/android/server/power/HqmDataDispatcher;->mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

    const-string p2, "HqmManagerService"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SemHqmManager;

    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mHqmManager:Landroid/os/SemHqmManager;

    const-class p1, Landroid/os/BatteryManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    new-instance p1, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/HqmDataDispatcher;)V

    check-cast p3, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/HqmDataDispatcher$Clock;)V
    .locals 1

    new-instance v0, Lcom/android/server/power/HqmDataDispatcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/power/HqmDataDispatcher;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/HqmDataDispatcher$Clock;)V

    sput-object v0, Lcom/android/server/power/HqmDataDispatcher$HqmDataDispatcherHolder;->INSTANCE:Lcom/android/server/power/HqmDataDispatcher;

    return-void
.end method


# virtual methods
.method public final getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;
    .locals 3

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iget-object v2, p0, Lcom/android/server/power/HqmDataDispatcher;->mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;-><init>(ILcom/android/server/power/HqmDataDispatcher$Clock;)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    return-object p0
.end method

.method public final noteScreenBrightness(FI)V
    .locals 9

    const/4 v0, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v1, :cond_8

    if-ne p2, v0, :cond_8

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/power/HqmDataDispatcher;->getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    iget v2, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    sget v2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_DIM:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-gt v1, v2, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v2, 0xe6

    const/16 v6, 0xff

    if-lt v1, v2, :cond_2

    if-gt v1, v6, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    if-le v1, v6, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    iget v2, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    if-eq v3, v2, :cond_5

    if-eq v2, v5, :cond_4

    iget-object v6, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    aget-wide v7, v6, v2

    long-to-float v7, v7

    iget-object v8, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    move-result v8

    add-float/2addr v8, v7

    float-to-long v7, v8

    aput-wide v7, v6, v2

    iput v5, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    :cond_4
    iput v3, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    if-eq v3, v5, :cond_5

    iget-object v2, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    :cond_5
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    sget v3, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_HIGHEST:I

    if-nez v2, :cond_6

    if-ne v1, v3, :cond_6

    iget-object v1, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-virtual {v1}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    iput-boolean v0, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    if-eq v1, v3, :cond_7

    if-eqz v2, :cond_7

    iget-wide v0, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    long-to-float v0, v0

    iget-object v1, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-virtual {v1}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    move-result v1

    add-float/2addr v1, v0

    float-to-long v0, v1

    iput-wide v0, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    iput-boolean v4, p2, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    :cond_7
    :goto_2
    iput p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    :cond_8
    return-void
.end method

.method public final sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendDataSetToHqm: feature="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HqmDataDispatcher"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/HqmDataDispatcher;->mHqmManager:Landroid/os/SemHqmManager;

    const-string v7, "0.0"

    const-string/jumbo v8, "sec"

    const/4 v3, 0x0

    const-string v4, "Display"

    const-string/jumbo v6, "sm"

    const-string v9, ""

    const-string v11, ""

    move-object v5, p1

    move-object v10, p2

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
