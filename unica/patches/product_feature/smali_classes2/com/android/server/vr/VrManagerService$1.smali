.class public final Lcom/android/server/vr/VrManagerService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    return-void
.end method


# virtual methods
.method public final onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    sget-object v1, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/vr/VrManagerService$3;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-object v1, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_16

    :cond_14
    iget-object v1, v1, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    :goto_16
    if-eqz v1, :cond_30

    iget-object v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_28

    const/4 v3, 0x3

    if-ne v2, v3, :cond_30

    :cond_28
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v2}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_56

    :cond_30
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_2e

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-boolean v0, v0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-nez v0, :cond_55

    iget v0, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_55

    if-eqz v1, :cond_46

    iget-object p1, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    :cond_46
    const-string/jumbo p1, "VrManagerService"

    const-string/jumbo v0, "VrListenerSevice has died permanently, leaving system VR mode."

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    :cond_55
    return-void

    :goto_56
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_2e

    throw p0
.end method
