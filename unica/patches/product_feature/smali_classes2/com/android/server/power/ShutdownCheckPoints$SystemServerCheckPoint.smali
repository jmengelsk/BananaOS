.class public Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;
.super Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mStackTraceElements:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;-><init>(JLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public dumpDetails(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/io/PrintWriter;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findMethodName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "Failed to get method name"

    :cond_8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findCallSiteIndex()I

    move-result p1

    :goto_f
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v0, v0

    if-ge p1, v0, :cond_23

    const-string v0, " at "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_f

    :cond_23
    return-void
.end method

.method public final findCallSiteIndex()I
    .registers 5

    const-class v0, Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    :goto_1b
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v3, v2

    if-ge v1, v3, :cond_2f

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2f
    return v1
.end method

.method public final findMethodName()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findCallSiteIndex()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v1, p0

    if-ge v0, v1, :cond_1a

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "."

    invoke-static {v0, v1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrigin()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "SYSTEM"

    return-object p0
.end method
