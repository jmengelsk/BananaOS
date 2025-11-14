.class public final Lcom/android/server/trust/TrustAgentWrapper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget p1, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p1, "componentName"

    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    const-string/jumbo v0, "android.server.trust.TRUST_EXPIRED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object p2, p2, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object p1, p1, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :pswitch_0
    const-string/jumbo p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$1;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
