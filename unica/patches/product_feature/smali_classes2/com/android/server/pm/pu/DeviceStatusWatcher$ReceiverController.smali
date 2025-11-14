.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final FOTA_SETTING_URI:Landroid/net/Uri;


# instance fields
.field public final mContentObserver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$3;

.field public final mShutdownFilter:Landroid/content/IntentFilter;

.field public final mShutdownReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

.field public final mStatusFilter:Landroid/content/IntentFilter;

.field public final mStatusReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

.field public final synthetic this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "badge_for_fota"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->FOTA_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mShutdownFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;I)V

    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mShutdownReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;I)V

    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mStatusReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$3;

    iget-object p1, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$3;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mContentObserver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$3;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mStatusFilter:Landroid/content/IntentFilter;

    const-string/jumbo p0, "android.intent.action.SCREEN_ON"

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    const-string/jumbo v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
