.class public final Lcom/android/server/notification/EventConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/EventConditionProvider;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/notification/EventConditionProvider$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/EventConditionProvider$1;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget p1, p0, Lcom/android/server/notification/EventConditionProvider$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    sget-boolean p1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onReceive "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConditionProviders.ECP"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider$1;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-virtual {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/notification/EventConditionProvider$1;->this$0:Lcom/android/server/notification/EventConditionProvider;

    iget-object p1, p0, Lcom/android/server/notification/EventConditionProvider;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/EventConditionProvider;->reloadTrackers(Landroid/os/UserHandle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
