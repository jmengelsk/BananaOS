.class public final synthetic Lcom/android/server/sepunion/MinorModeObserverService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/MinorModeObserverService$1;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/MinorModeObserverService$1;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/MinorModeObserverService$1;

    iput-object p2, p0, Lcom/android/server/sepunion/MinorModeObserverService$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/MinorModeObserverService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/MinorModeObserverService$1;

    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    sget v1, Lcom/android/server/sepunion/MinorModeObserverService$1;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "android.intent.action.USER_UNLOCKED"

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    iget-object p0, v0, Lcom/android/server/sepunion/MinorModeObserverService$1;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    invoke-static {p0}, Lcom/android/server/sepunion/MinorModeObserverService;->-$$Nest$mhandleMinorModeEnabled(Lcom/android/server/sepunion/MinorModeObserverService;)V

    iget-object p0, v0, Lcom/android/server/sepunion/MinorModeObserverService$1;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    iget-object v1, v0, Lcom/android/server/sepunion/MinorModeObserverService$1;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    iget-boolean v1, v1, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    if-eqz v1, :cond_45

    if-eqz p0, :cond_45

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    if-eqz p0, :cond_45

    iget-object p0, v0, Lcom/android/server/sepunion/MinorModeObserverService$1;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    iget-boolean v1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/MinorModeObserverService;->updateUsageStatsWatcherRegistration(Z)V

    iget-object p0, v0, Lcom/android/server/sepunion/MinorModeObserverService$1;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    iget-boolean v0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/MinorModeObserverService;->updateAudioPlaybackCallbackRegistration(Z)V

    return-void

    :cond_45
    const-string/jumbo p0, "MinorModeObserverService"

    const-string/jumbo v0, "PHASE_BOOT_COMPLETED USER_UNLOCKED: no need register"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return-void
.end method
