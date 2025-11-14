.class public Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "TipsManagerService"

    const-string/jumbo v2, "com.samsung.android.app.tips"

    if-nez v0, :cond_4a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_4a

    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    sget-object p1, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    const-string/jumbo p1, "[GalaxyTips] Tips was uninstalled."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    return-void

    :cond_4a
    :goto_4a
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_aa

    sget-object p2, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    const-string/jumbo p2, "[GalaxyTips] Tips was installed. Start to register all filters"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    iget-boolean v1, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    if-eqz v1, :cond_6e

    iget-object p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_6e
    const-string/jumbo p2, "android.intent.action.LOCALE_CHANGED"

    const-string/jumbo v1, "samsung.galaxy.tips.application.terminated"

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-static {p2, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v6

    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    if-nez p2, :cond_87

    const-string/jumbo p2, "samsung.galaxy.tips.network_granted"

    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_87
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-boolean p2, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    if-nez p2, :cond_99

    const-string/jumbo p2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_99
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iget-object v4, p2, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    :cond_aa
    return-void
.end method
