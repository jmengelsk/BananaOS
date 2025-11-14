.class public final Lcom/android/server/power/WakeLockLog$LogEntry;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public flags:I

.field public packageName:Ljava/lang/String;

.field public tag:Lcom/android/server/power/WakeLockLog$TagData;

.field public time:J

.field public type:I


# direct methods
.method public constructor <init>(JILcom/android/server/power/WakeLockLog$TagData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput p3, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    iput-object p4, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iput p5, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - RESET"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez v1, :cond_1

    const-string v1, "---"

    goto :goto_0

    :cond_1
    iget v1, v1, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    const-string v2, ")"

    const-string v3, " ("

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string p1, "ACQ"

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "REL"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez p1, :cond_4

    const-string/jumbo p1, "UNKNOWN"

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-ne p1, v1, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 v1, v1, 0x7

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    const/16 v1, 0x8

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_5

    const-string p1, ",on-after-release"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    const/16 v1, 0x10

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_6

    const-string p1, ",acq-causes-wake"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget p0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    const/16 p1, 0x20

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const-string p0, ",system-wakelock"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updatePackageName(Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    const-string/jumbo p1, "System"

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget p2, p2, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget v0, v0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget v0, v0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_3

    array-length p2, p1

    if-lez p2, :cond_3

    const/4 p2, 0x0

    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    array-length p1, p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    const-string v0, ",..."

    invoke-static {p1, p2, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method
