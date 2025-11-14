.class public final Lcom/android/server/wm/TspStateController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TspStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TspStateController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/TspStateController$1;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const/4 p1, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    goto :goto_1e

    :cond_1d
    move-object p2, p1

    :goto_1e
    if-eqz p2, :cond_57

    const-string/jumbo v0, "com.samsung.android.app.edgetouch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_57

    const-string/jumbo p2, "TspStateManager"

    const-string v0, "EdgeTouch app uninstalled"

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/wm/TspStateController$1;->this$0:Lcom/android/server/wm/TspStateController;

    iget-object p2, p2, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "setting_tsp_threshold"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/server/wm/TspStateController$1;->this$0:Lcom/android/server/wm/TspStateController;

    iget-object p1, p1, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "setting_tsp_debug"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$1;->this$0:Lcom/android/server/wm/TspStateController;

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mPackageReceiver:Lcom/android/server/wm/TspStateController$1;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_57
    return-void
.end method
