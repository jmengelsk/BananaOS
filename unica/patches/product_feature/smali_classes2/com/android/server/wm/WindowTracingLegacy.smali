.class public Lcom/android/server/wm/WindowTracingLegacy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mEnabledLock:Ljava/lang/Object;

.field public final mFrameCallback:Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mLogLevel:I

.field public final mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTraceFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowTracingLegacy;)V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/android/server/wm/WindowTracingLegacy;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p4, p0, Lcom/android/server/wm/WindowTracingLegacy;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mEnabledLock:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    iput-object p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mTraceFile:Ljava/io/File;

    new-instance p1, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {p1, p5}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    return-void
.end method

.method public static logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "WindowTracing"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_e
    return-void
.end method


# virtual methods
.method public final dumpToProto(IJLandroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .registers 11

    const-string/jumbo v0, "traceStateLocked"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-wide v3, 0x10600000001L

    const/4 v0, 0x0

    :try_start_e
    invoke-virtual {p4, v3, v4, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p2, 0x10900000002L

    invoke-virtual {p4, p2, p3, p5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p2, 0x10b00000003L

    invoke-virtual {p4, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    iget-object v3, p0, Lcom/android/server/wm/WindowTracingLegacy;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_44
    .catchall {:try_start_e .. :try_end_28} :catchall_42

    :try_start_28
    iget-object v4, p0, Lcom/android/server/wm/WindowTracingLegacy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1, p4}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(ILandroid/util/proto/ProtoOutputStream;)V

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_46

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {p4, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_34} :catch_44
    .catchall {:try_start_2e .. :try_end_34} :catchall_42

    const-string/jumbo p1, "onFrame"

    if-ne p5, p1, :cond_3e

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_42
    move-exception p1

    goto :goto_62

    :catch_44
    move-exception p1

    goto :goto_4c

    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_44
    .catchall {:try_start_48 .. :try_end_4c} :catchall_42

    :goto_4c
    :try_start_4c
    const-string/jumbo p2, "WindowTracing"

    const-string p3, "Exception while tracing state"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_42

    const-string/jumbo p1, "onFrame"

    if-ne p5, p1, :cond_5e

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_62
    const-string/jumbo p2, "onFrame"

    if-ne p5, p2, :cond_6c

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_6c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public final getStatus()Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "Status: "

    const-string v1, "Disabled"

    const-string v2, "\nLog level: "

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->getStatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onShellCommand(Landroid/os/ShellCommand;)I
    .registers 13

    const-string/jumbo v0, "transaction"

    const-string/jumbo v1, "frame"

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "Setting window tracing log frequency to "

    const-string v6, "Error: Tracing is not supported on user builds."

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_144

    :goto_21
    move v10, v9

    goto/16 :goto_7d

    :sswitch_24
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2b

    goto :goto_21

    :cond_2b
    const/4 v10, 0x7

    goto :goto_7d

    :sswitch_2d
    const-string/jumbo v10, "start"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_37

    goto :goto_21

    :cond_37
    const/4 v10, 0x6

    goto :goto_7d

    :sswitch_39
    const-string/jumbo v10, "level"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_43

    goto :goto_21

    :cond_43
    const/4 v10, 0x5

    goto :goto_7d

    :sswitch_45
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4c

    goto :goto_21

    :cond_4c
    const/4 v10, 0x4

    goto :goto_7d

    :sswitch_4e
    const-string/jumbo v10, "stop"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_58

    goto :goto_21

    :cond_58
    const/4 v10, 0x3

    goto :goto_7d

    :sswitch_5a
    const-string/jumbo v10, "size"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_64

    goto :goto_21

    :cond_64
    move v10, v2

    goto :goto_7d

    :sswitch_66
    const-string/jumbo v10, "save-for-bugreport"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_70

    goto :goto_21

    :cond_70
    move v10, v7

    goto :goto_7d

    :sswitch_72
    const-string/jumbo v10, "status"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7c

    goto :goto_21

    :cond_7c
    move v10, v8

    :goto_7d
    packed-switch v10, :pswitch_data_166

    const-string/jumbo p0, "Unknown command: "

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p0, "Window manager trace options:"

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  start: Start logging"

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  stop: Stop logging"

    const-string p1, "  save-for-bugreport: Save logging data to file if it\'s running."

    const-string v0, "  frame: Log trace once per frame"

    const-string v1, "  transaction: Log each transaction"

    invoke-static {v3, p0, p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "  size: Set the maximum log size (in KB)"

    const-string p1, "  status: Print trace status"

    const-string v0, "  level [lvl]: Set the log level between"

    const-string v1, "    lvl may be one of:"

    invoke-static {v3, p0, p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "      critical: Only visible windows with reduced information"

    const-string p1, "      trim: All windows with reduced"

    const-string v0, "      all: All window and information"

    invoke-static {v3, p0, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :pswitch_b5  #0x7
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/wm/WindowTracingLegacy;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v8

    :pswitch_c2  #0x6
    invoke-static {v3, v6}, Lcom/android/server/wm/WindowTracingLegacy;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v8

    :pswitch_c6  #0x5
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_17a

    goto :goto_fc

    :sswitch_d9
    const-string/jumbo v0, "critical"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e3

    goto :goto_fc

    :cond_e3
    move v9, v2

    goto :goto_fc

    :sswitch_e5
    const-string/jumbo v0, "trim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ef

    goto :goto_fc

    :cond_ef
    move v9, v7

    goto :goto_fc

    :sswitch_f1
    const-string/jumbo v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fb

    goto :goto_fc

    :cond_fb
    move v9, v8

    :goto_fc
    packed-switch v9, :pswitch_data_188

    invoke-virtual {p0, v7, v3}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_10e

    :pswitch_103  #0x2
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_10e

    :pswitch_107  #0x1
    invoke-virtual {p0, v7, v3}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_10e

    :pswitch_10b  #0x0
    invoke-virtual {p0, v8, v3}, Lcom/android/server/wm/WindowTracingLegacy;->setLogLevel(ILjava/io/PrintWriter;)V

    :goto_10e
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v8

    :pswitch_114  #0x4
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/wm/WindowTracingLegacy;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v8

    :pswitch_121  #0x3
    invoke-static {v3, v6}, Lcom/android/server/wm/WindowTracingLegacy;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v8

    :pswitch_125  #0x2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return v8

    :pswitch_138  #0x1
    invoke-static {v3, v6}, Lcom/android/server/wm/WindowTracingLegacy;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v8

    :pswitch_13c  #0x0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracingLegacy;->getStatus()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/wm/WindowTracingLegacy;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v8

    :sswitch_data_144
    .sparse-switch
        -0x3532300e -> :sswitch_72
        -0x174ab7ac -> :sswitch_66
        0x35e001 -> :sswitch_5a
        0x360802 -> :sswitch_4e
        0x5d2a96d -> :sswitch_45
        0x6219b84 -> :sswitch_39
        0x68ac462 -> :sswitch_2d
        0x7fa0d2de -> :sswitch_24
    .end sparse-switch

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_13c  #00000000
        :pswitch_138  #00000001
        :pswitch_125  #00000002
        :pswitch_121  #00000003
        :pswitch_114  #00000004
        :pswitch_c6  #00000005
        :pswitch_c2  #00000006
        :pswitch_b5  #00000007
    .end packed-switch

    :sswitch_data_17a
    .sparse-switch
        0x179a1 -> :sswitch_f1
        0x367422 -> :sswitch_e5
        0x745b779f -> :sswitch_d9
    .end sparse-switch

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_10b  #00000000
        :pswitch_107  #00000001
        :pswitch_103  #00000002
    .end packed-switch
.end method

.method public final setBufferCapacity(ILjava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Setting window tracing buffer capacity to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/wm/WindowTracingLegacy;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    return-void
.end method

.method public final setLogLevel(ILjava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Setting window tracing log level to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/wm/WindowTracingLegacy;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    return-void

    :cond_1d
    const/high16 p1, 0x500000

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    return-void

    :cond_23
    const/high16 p1, 0xa00000

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    return-void

    :cond_29
    const/high16 p1, 0x1400000

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracingLegacy;->setBufferCapacity(ILjava/io/PrintWriter;)V

    return-void
.end method
