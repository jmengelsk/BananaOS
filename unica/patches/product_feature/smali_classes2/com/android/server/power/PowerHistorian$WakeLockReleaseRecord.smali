.class public final Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;
.super Lcom/android/server/power/PowerHistorian$Record;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mElapsedTimeMillis:J

.field public final mWakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$WakeLock;J)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerHistorian$Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mWakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;

    iput-wide p2, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mElapsedTimeMillis:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/power/PowerHistorian$Record;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mElapsedTimeMillis:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " %-18s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mWakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
