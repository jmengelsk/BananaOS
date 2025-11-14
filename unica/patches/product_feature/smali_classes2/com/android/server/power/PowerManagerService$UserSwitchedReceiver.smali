.class final Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo p1, "PowerManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[api] UserSwitchedReceiver: onReceive: UserHandle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2e
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p2, p2, Lcom/android/server/power/PowerManagerService;->mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

    if-eqz p2, :cond_48

    const-string/jumbo v0, "ScreenOnKeeper"

    const-string/jumbo v1, "onUserSwitched"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p2, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    if-eqz v0, :cond_48

    invoke-virtual {p2}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/server/power/ScreenOnKeeper;->notifyScreenOnKeeperDisabledLocked(I)V

    :cond_48
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetScreenOffTimeoutForBatterySaver(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit p1

    return-void

    :catchall_54
    move-exception p0

    monitor-exit p1
    :try_end_56
    .catchall {:try_start_2e .. :try_end_56} :catchall_54

    throw p0
.end method
