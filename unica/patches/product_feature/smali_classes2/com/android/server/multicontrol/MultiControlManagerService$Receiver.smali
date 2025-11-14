.class public final Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceive(), action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Shutdown received with UserId: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    :cond_2
    return-void
.end method
