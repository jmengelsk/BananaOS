.class public final synthetic Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/ImeTracker$Token;

.field public final synthetic f$1:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

.field public final synthetic f$2:Lcom/android/server/wm/InputTarget;

.field public final synthetic f$3:Lcom/android/server/wm/InsetsControlTarget;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InsetsControlTarget;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/ImeTracker$Token;

    iput-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    iput-object p3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/InputTarget;

    iput-object p4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/InsetsControlTarget;

    iput-boolean p5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/ImeTracker$Token;

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/InputTarget;

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/InsetsControlTarget;

    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;->f$4:Z

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    const/16 v5, 0x40

    invoke-interface {v4, v2, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Lcom/android/server/wm/InsetsTarget;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1e

    :cond_1a
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    :goto_1e
    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    if-eqz v3, :cond_55

    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onImeRequestedChanged: imeVisible="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " statsToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    if-eqz p0, :cond_5b

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_5b
    const-string p0, "IMMS.hideCurrentInputInternal"

    const-wide/16 v7, 0x20

    invoke-static {v7, v8, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p0

    const-string v3, "InputMethodManagerService#hideSoftInput"

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p0

    :try_start_70
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_90

    :try_start_78
    sget-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "Client requesting input be hidden"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_92

    :try_start_88
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit p0

    return-void

    :catchall_90
    move-exception v0

    goto :goto_9a

    :catchall_92
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :goto_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_88 .. :try_end_9b} :catchall_90

    throw v0
.end method
