.class public final Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-interface {p2}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    const-string/jumbo v0, "MultiControlAppDeathChecker - binderDied"

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    const-string/jumbo v0, "sendBroadcast - ACTION_MULTI_CONTROL_DIED"

    const-string/jumbo v1, "in resetMultiControlValue"

    invoke-static {v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService;->forceHideCursor(Z)V

    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService;->setMultiControlOutOfFocus(Z)V

    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    iget-object v3, v1, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/multicontrol/MultiControlManagerService;->resetInputFilter()V

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.inputshare.action.ACTION_MULTI_CONTROL_DIED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.android.inputshare"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    iget-object v3, v3, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.permission.MULTI_CONTROL_RECEIVER_PERMISSION"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v3, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    const/16 v3, 0x45

    invoke-static {v3, v0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    const-string/jumbo v3, "MultiControl@MultiControlManagerService"

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
