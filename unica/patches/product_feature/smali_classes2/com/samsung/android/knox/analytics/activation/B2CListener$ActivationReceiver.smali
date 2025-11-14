.class public Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object p1, Lcom/samsung/android/knox/analytics/activation/B2CListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivationReceiver: onReceive() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.samsung.android.knox.analytics.intent.action.B2C_ACTIVATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "com.samsung.android.knox.analytics.intent.extra.B2C_PACKAGE_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.samsung.android.knox.analytics.intent.extra.B2C_FEATURE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.knox.analytics.intent.extra.B2C_ACTIVATION_STATUS"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {v1, p1, v0, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    iget-object v0, p1, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    if-nez v0, :cond_0

    new-instance p2, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    invoke-direct {p2, p1}, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;-><init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    iput-object p2, p1, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p2, "package"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    iget-object p2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->checkRemovedReceiver()V

    :cond_1
    return-void
.end method
