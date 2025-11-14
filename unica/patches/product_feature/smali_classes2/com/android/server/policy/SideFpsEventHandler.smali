.class public Lcom/android/server/policy/SideFpsEventHandler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mContext:Landroid/content/Context;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Lcom/android/server/policy/SideFpsEventHandler$1;

    invoke-direct {p2, p0}, Lcom/android/server/policy/SideFpsEventHandler$1;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string/jumbo p3, "android.intent.action.SCREEN_OFF"

    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e016f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    return-void
.end method

.method public static dismissDialog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Dismissing dialog with reason: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SideFpsEventHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    const/4 p1, 0x4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method
