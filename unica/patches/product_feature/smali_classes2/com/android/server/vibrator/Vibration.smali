.class public abstract Lcom/android/server/vibrator/Vibration;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field public final id:J

.field public mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

.field public final stats:Lcom/android/server/vibrator/VibrationStats;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/vibrator/Vibration;->sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/vibrator/VibrationStats;

    invoke-direct {v0}, Lcom/android/server/vibrator/VibrationStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v0, Lcom/android/server/vibrator/Vibration;->sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->id:J

    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-void
.end method


# virtual methods
.method public end(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUid:I

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUsage:I

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndTimeDebug:J

    return-void
.end method
