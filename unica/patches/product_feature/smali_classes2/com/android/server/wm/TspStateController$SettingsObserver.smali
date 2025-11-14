.class public final Lcom/android/server/wm/TspStateController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TspStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TspStateController;Lcom/android/server/wm/TspStateController$H;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_THRESHOLD:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    iget-object p2, p1, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "setting_tsp_threshold"

    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/wm/TspStateController;->mTspThresholdSetting:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p1}, Lcom/android/server/wm/TspStateController;->initDefaultValues()V

    invoke-virtual {p1}, Lcom/android/server/wm/TspStateController;->updateCustomValue()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onChange "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "tspstatemanager"

    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/android/server/wm/TspStateController;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->registerEdgeTouchUninstallReceiver()V

    return-void

    :cond_1
    sget-object p1, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_THRESHOLD_COVER:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    iget-object p1, p1, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "setting_tsp_threshold_cover"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateTspCustomCoverCommand() cmd="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "TspStateManager"

    invoke-static {v1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/wm/TspStateController;->mCoverDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommandCover:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v1, p2, p1, v0}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    return-void

    :cond_2
    sget-object p1, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_DEBUG:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    iget-object p1, p1, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "setting_tsp_debug"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    move v0, p2

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    iput-boolean v0, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mEnabled:Z

    :cond_4
    :goto_0
    return-void
.end method
