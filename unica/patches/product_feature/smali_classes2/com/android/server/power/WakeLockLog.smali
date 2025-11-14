.class public final Lcom/android/server/power/WakeLockLog;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final LEVEL_TO_STRING:[Ljava/lang/String;

.field public static final REDUCED_TAG_PREFIXES:[Ljava/lang/String;

.field static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "System"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

.field public final mInjector:Lcom/android/server/power/WakeLockLog$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/android/server/power/WakeLockLog$TheLog;

.field public final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string/jumbo v6, "doze"

    const-string/jumbo v7, "draw"

    const-string/jumbo v0, "override"

    const-string/jumbo v1, "partial"

    const-string/jumbo v2, "full"

    const-string/jumbo v3, "screen-dim"

    const-string/jumbo v4, "screen-bright"

    const-string/jumbo v5, "prox"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    const-string v0, "*gms_scheduler*/"

    const-string v1, "IntentOp:"

    const-string v2, "*job*/"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    new-instance v0, Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-direct {v0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;-><init>(Lcom/android/server/power/WakeLockLog$Injector;)V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    new-instance v1, Lcom/android/server/power/WakeLockLog$TheLog$1;

    invoke-direct {v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog$1;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$TheLog$1;Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    iput-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    sget-object p1, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    iput-object p2, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Z)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v1, "Wake Lock Log"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    iget-object v5, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    iget-object v5, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/WakeLockLog$LogEntry;

    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->updatePackageName(Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    new-instance v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/power/WakeLockLog$TheLog$2;

    invoke-direct {v6, v5, v3}, Lcom/android/server/power/WakeLockLog$TheLog$2;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;Lcom/android/server/power/WakeLockLog$LogEntry;)V

    :goto_1
    invoke-virtual {v6}, Lcom/android/server/power/WakeLockLog$TheLog$2;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v6}, Lcom/android/server/power/WakeLockLog$TheLog$2;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    iget v5, v3, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/android/server/power/WakeLockLog$LogEntry;->updatePackageName(Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "  -"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Events: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Time-Resets: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Buffer, Bytes used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    iget-object v3, v2, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v4, v3

    iget v5, v2, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget v2, v2, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    if-le v5, v2, :cond_3

    array-length v3, v3

    sub-int/2addr v5, v2

    sub-int/2addr v3, v5

    goto :goto_2

    :cond_3
    if-ge v5, v2, :cond_4

    sub-int v3, v2, v5

    goto :goto_2

    :cond_4
    array-length v3, v3

    :goto_2
    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception dumping wake-lock log: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onWakeLockEvent(IILjava/lang/String;IJ)V
    .locals 8

    if-nez p3, :cond_0

    const-string/jumbo p0, "PowerManagerService.WLLog"

    const-string p1, "Insufficient data to log wakelock [tag: "

    const-string p5, ", ownerUid: "

    const-string p6, ", flags: 0x"

    invoke-static {p2, p1, p3, p5, p6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p5, v0

    if-nez v0, :cond_1

    iget-object p5, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    :cond_1
    move-wide v1, p5

    const/4 p5, 0x1

    const/4 p6, 0x3

    const/4 v0, 0x0

    if-ne p1, p5, :cond_d

    const v3, 0xffff

    and-int/2addr v3, p4

    if-eq v3, p5, :cond_8

    const/4 v4, 0x6

    if-eq v3, v4, :cond_7

    const/16 v5, 0xa

    if-eq v3, v5, :cond_6

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x20

    if-eq v3, v5, :cond_4

    const/16 v5, 0x40

    if-eq v3, v5, :cond_9

    const/16 v4, 0x80

    if-eq v3, v4, :cond_3

    const/16 v4, 0x100

    if-eq v3, v4, :cond_2

    const-string/jumbo v3, "Unsupported lock level for logging, flags: "

    const-string/jumbo v4, "PowerManagerService.WLLog"

    invoke-static {p4, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v4, v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x7

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_0

    :cond_6
    const/4 v4, 0x4

    goto :goto_0

    :cond_7
    move v4, p6

    goto :goto_0

    :cond_8
    move v4, p5

    :cond_9
    :goto_0
    const/high16 v3, 0x10000000

    and-int/2addr v3, p4

    if-eqz v3, :cond_a

    or-int/lit8 v4, v4, 0x10

    :cond_a
    const/high16 v3, 0x20000000

    and-int/2addr v3, p4

    if-eqz v3, :cond_b

    or-int/lit8 v4, v4, 0x8

    :cond_b
    const/high16 v3, -0x80000000

    and-int/2addr p4, v3

    if-eqz p4, :cond_c

    or-int/lit8 v4, v4, 0x20

    :cond_c
    move v5, v4

    goto :goto_1

    :cond_d
    move v5, v0

    :goto_1
    sget-object p4, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    move v3, v0

    :goto_2
    if-ge v3, p6, :cond_f

    aget-object v4, p4, v3

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_3

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_f
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_15

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p6

    invoke-virtual {p4, p3, v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string p6, "/"

    invoke-virtual {p3, p6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p6

    const-string v3, "."

    invoke-virtual {p3, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-static {p6, v3}, Ljava/lang/Math;->max(II)I

    move-result p6

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move v4, p5

    :goto_4
    if-ge v3, p6, :cond_14

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_11

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_10

    goto :goto_5

    :cond_10
    move v7, v0

    goto :goto_6

    :cond_11
    :goto_5
    move v7, p5

    :goto_6
    if-nez v7, :cond_12

    if-eqz v4, :cond_13

    :cond_12
    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_4

    :cond_14
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_15
    iget-object p4, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    iget-object p5, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {p5, p2, p3}, Lcom/android/server/power/WakeLockLog$TagDatabase;->findOrCreateTag(ILjava/lang/String;)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    new-instance v0, Lcom/android/server/power/WakeLockLog$LogEntry;

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    monitor-exit p4

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
