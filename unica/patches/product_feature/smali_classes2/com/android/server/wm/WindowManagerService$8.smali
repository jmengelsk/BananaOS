.class public final Lcom/android/server/wm/WindowManagerService$8;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/WindowManagerService$8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpChanged(ILjava/lang/String;)V
    .registers 5

    iget p2, p0, Lcom/android/server/wm/WindowManagerService$8;->$r8$classId:I

    packed-switch p2, :pswitch_data_46

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mupdateAppOpsState(Lcom/android/server/wm/WindowManagerService;)V

    return-void

    :pswitch_b  #0x1
    const/16 p2, 0xa4

    if-ne p1, p2, :cond_3f

    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_17
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Session;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Session;->updateCanCreateSystemApplicationOverlay(Landroid/permission/PermissionManager;)V

    goto :goto_1f

    :catchall_33
    move-exception p0

    goto :goto_3a

    :cond_35
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_3f

    :goto_3a
    :try_start_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_3f
    :goto_3f
    return-void

    :pswitch_40  #0x0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mupdateAppOpsState(Lcom/android/server/wm/WindowManagerService;)V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_40  #00000000
        :pswitch_b  #00000001
    .end packed-switch
.end method
