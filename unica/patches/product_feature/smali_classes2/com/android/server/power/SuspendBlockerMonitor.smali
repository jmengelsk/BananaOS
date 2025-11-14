.class public final Lcom/android/server/power/SuspendBlockerMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final GLOBAL_INSTANCE:Lcom/android/server/power/SuspendBlockerMonitor;

.field public static final mSuspendBlockerMonitorCallbacks:Lcom/android/internal/util/RingBuffer;


# instance fields
.field public mDetail:Ljava/lang/String;

.field public mEvents:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/power/SuspendBlockerMonitor;->mSuspendBlockerMonitorCallbacks:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Lcom/android/server/power/SuspendBlockerMonitor;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/SuspendBlockerMonitor;->GLOBAL_INSTANCE:Lcom/android/server/power/SuspendBlockerMonitor;

    return-void
.end method

.method public static addNewCallbackEvent(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/power/SuspendBlockerMonitor;->mSuspendBlockerMonitorCallbacks:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->getCurrentTimeAsString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->mTimeStr:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->mDetail:Ljava/lang/String;

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "REL"

    iput-object p0, v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->mCmd:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "ACQ"

    iput-object p0, v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->mCmd:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "SuspendBlockerMonitor:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/power/SuspendBlockerMonitor;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final setEvent(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x1

    const-string v3, " ( "

    const-string v4, "      mEvents = 0x"

    if-eqz v1, :cond_4

    const-string v1, "    [Global]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-string/jumbo v1, "READY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PROGRESS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "DOZING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SOME_GROUPS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit16 v1, v1, 0xf0

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v5

    :goto_0
    const-string v1, "\n"

    if-eqz v2, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    const-string v2, "BRIGHT_OR_DIM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_7

    const-string v2, "DOZE_ON_STATE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    const-string v2, "CHARGING_UI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_9

    const-string v2, "BUILT_IN_DISPLAY_STATE_ON "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_b

    const-string v2, "    [Callback]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mDetail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    sget-object v2, Lcom/android/server/power/SuspendBlockerMonitor;->GLOBAL_INSTANCE:Lcom/android/server/power/SuspendBlockerMonitor;

    if-ne p0, v2, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "\n    CallBack History = "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/SuspendBlockerMonitor;->mSuspendBlockerMonitorCallbacks:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;

    :goto_1
    array-length v2, p0

    if-ge v5, v2, :cond_c

    aget-object v2, p0, v5

    invoke-virtual {v2}, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
