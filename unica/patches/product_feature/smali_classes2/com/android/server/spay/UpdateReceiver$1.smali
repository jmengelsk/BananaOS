.class public final Lcom/android/server/spay/UpdateReceiver$1;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/spay/UpdateReceiver;

.field public final synthetic val$action:Ljava/lang/String;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/UpdateReceiver;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/spay/UpdateReceiver$1;->this$0:Lcom/android/server/spay/UpdateReceiver;

    iput-object p2, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "action"

    iget-object v3, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "getdata_of_intent"

    iget-object v3, p0, Lcom/android/server/spay/UpdateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver$1;->this$0:Lcom/android/server/spay/UpdateReceiver;

    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver;->mHandler:Lcom/android/server/spay/UpdateReceiver$2;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
