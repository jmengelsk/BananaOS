.class public final Lcom/android/server/sepunion/cover/ResolutionMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/ResolutionMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    iget-object p2, p2, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverManager_ResolutionMonitor"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x20001000

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_44

    iget-object p2, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    iget-object v0, p2, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mHandler:Landroid/os/Handler;

    iget-object p2, p2, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_44
    iget-object p0, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mConfiguration:Landroid/content/res/Configuration;

    :cond_4d
    return-void
.end method
