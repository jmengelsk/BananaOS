.class public final Lcom/android/server/power/WakeLockLog$TheLog$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final mChangeValue:J

.field public mCurrent:I

.field public mCurrentTimeReference:J

.field public final synthetic this$0:Lcom/android/server/power/WakeLockLog$TheLog;

.field public final synthetic val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$TheLog;Lcom/android/server/power/WakeLockLog$LogEntry;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;

    iget p2, p1, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iput p2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    iget-wide p1, p1, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    return-void
.end method


# virtual methods
.method public final checkState()V
    .registers 5

    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    iget-wide v2, v2, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer modified, old change: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", new change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->checkState()V

    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    iget p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-eq v0, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->checkState()V

    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    iget-object v4, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    iget-object v2, v1, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;

    iget-wide v3, v1, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    iget-object v1, v1, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    iget-wide v1, v0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    return-object v0

    :cond_30
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string/jumbo v0, "No more entries left."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
