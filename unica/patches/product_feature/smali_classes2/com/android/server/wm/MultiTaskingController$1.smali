.class public final Lcom/android/server/wm/MultiTaskingController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/MultiTaskingController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget p1, p0, Lcom/android/server/wm/MultiTaskingController$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_96

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo v0, "MultiTaskingController"

    if-eqz p2, :cond_3d

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_55

    const-string/jumbo p1, "demo reset"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz p1, :cond_34

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->resetPackageListStr(Landroid/content/Context;)V

    :cond_34
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setCornerGestureEnabledWithSettings(Z)V

    goto :goto_55

    :cond_3d
    const-string/jumbo p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    const-string/jumbo p1, "settings reset"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->resetPackageListStr(Landroid/content/Context;)V

    :cond_55
    :goto_55
    return-void

    :pswitch_56  #0x0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_68

    const-string/jumbo v1, "displayId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_68
    const-string/jumbo p2, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7a

    const-string/jumbo p2, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    :cond_7a
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_84
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    monitor-exit p1
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_8f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_8e
    return-void

    :catchall_8f
    move-exception p0

    :try_start_90
    monitor-exit p1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_56  #00000000
    .end packed-switch
.end method
