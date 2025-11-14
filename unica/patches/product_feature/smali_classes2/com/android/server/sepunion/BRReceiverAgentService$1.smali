.class public final Lcom/android/server/sepunion/BRReceiverAgentService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/BRReceiverAgentService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/BRReceiverAgentService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1;->this$0:Lcom/android/server/sepunion/BRReceiverAgentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const-string/jumbo p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/sepunion/BRReceiverAgentService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/BRReceiverAgentService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/BRReceiverAgentService$1;I)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_23
    return-void
.end method
