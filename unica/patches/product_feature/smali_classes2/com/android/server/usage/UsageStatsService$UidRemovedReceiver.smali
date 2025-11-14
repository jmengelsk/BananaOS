.class public final Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget p1, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->$r8$classId:I

    packed-switch p1, :pswitch_data_60

    const-string/jumbo p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    if-ltz p1, :cond_44

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_44

    :cond_2a
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    if-ltz p1, :cond_44

    if-lez p1, :cond_44

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_44
    :goto_44
    return-void

    :pswitch_45  #0x0
    const-string/jumbo p1, "android.intent.extra.UID"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_50

    goto :goto_5e

    :cond_50
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    const/16 p2, 0xa

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_45  #00000000
    .end packed-switch
.end method
