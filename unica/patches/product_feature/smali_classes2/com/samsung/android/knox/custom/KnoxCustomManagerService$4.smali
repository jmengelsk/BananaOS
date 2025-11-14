.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    const-string/jumbo v0, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_166

    sget-boolean p2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiConfigure:Z

    if-eqz p2, :cond_166

    sget-boolean p2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiEap:Z

    if-nez p2, :cond_2b

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    sget-object p2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiSSID:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiPassword:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_2b
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    sget-object p2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiSSID:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiUsername:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiPassword:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    sput-boolean v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiConfigure:Z

    return-void

    :cond_39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "connected"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_166

    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetStateInternal()Z

    move-result p2

    if-eqz p2, :cond_166

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V

    return-void

    :cond_5d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.samsung.systemui.statusbar.STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_77

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mPhoneStatusBarInit:Z

    if-nez p1, :cond_166

    iput-boolean v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mPhoneStatusBarInit:Z

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->initialiseSystemUi()V

    return-void

    :cond_77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a6

    const-string/jumbo p1, "plugged"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_90

    sput-boolean v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z

    return-void

    :cond_90
    sget-boolean p1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z

    if-eqz p1, :cond_a3

    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getForceAutoShutDownState()I

    move-result p1

    if-ne p1, v0, :cond_a3

    sput-boolean v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->powerOff()I

    :cond_a3
    sput-boolean v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z

    return-void

    :cond_a6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b5

    sput-boolean v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->isDesktopMode:Z

    return-void

    :cond_b5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    sput-boolean v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->isDesktopMode:Z

    return-void

    :cond_c4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "com.samsung.android.knox.intent.action.SCREEN_OFF_HOME_LONG_PRESS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ec

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_166

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void

    :cond_ec
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "com.samsung.android.knox.intent.action.RECENT_LONG_PRESS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_166

    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getRecentLongPressMode()I

    move-result p1

    if-ne p1, v0, :cond_118

    :try_start_101
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object p1, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->isDefaultLauncher(Ljava/lang/String;)Z

    move-result p1
    :try_end_115
    .catch Ljava/lang/NullPointerException; {:try_start_101 .. :try_end_115} :catch_166
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_115} :catch_166

    if-nez p1, :cond_11b

    goto :goto_166

    :cond_118
    const/4 p2, 0x2

    if-ne p1, p2, :cond_166

    :cond_11b
    :try_start_11b
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_137

    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object p2, p2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_149

    :cond_137
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v2

    :goto_149
    if-eqz p1, :cond_166

    const-string/jumbo p2, "android.intent.action.MAIN"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "android.intent.category.DEFAULT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_166} :catch_166

    :catch_166
    :cond_166
    :goto_166
    return-void
.end method
