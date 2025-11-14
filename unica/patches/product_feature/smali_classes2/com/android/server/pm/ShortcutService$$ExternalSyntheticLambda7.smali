.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-wide p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$1:J

    iput p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-wide v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$1:J

    iget p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;->f$2:I

    sget-object v3, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "shortcutHandleUnlockUser"

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v3

    const/16 v6, 0xf

    :try_start_0
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
