.class public final synthetic Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/InattentiveSleepWarningController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/InattentiveSleepWarningController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/InattentiveSleepWarningController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object p0, p0, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    iget-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_16

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_16
    iget-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->showInattentiveSleepWarning()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    const-string v1, "InattentiveSleepWarning"

    const-string v2, "Failed to show inattentive sleep warning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    return-void
.end method
