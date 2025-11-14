.class public final Lcom/android/server/wm/AppWarnings$BaseDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings$BaseDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings$BaseDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog$1;->this$0:Lcom/android/server/wm/AppWarnings$BaseDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string/jumbo p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog$1;->this$0:Lcom/android/server/wm/AppWarnings$BaseDialog;

    iget-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mManager:Lcom/android/server/wm/AppWarnings;

    iget-object p1, p1, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    const/4 p2, 0x4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_20
    return-void
.end method
