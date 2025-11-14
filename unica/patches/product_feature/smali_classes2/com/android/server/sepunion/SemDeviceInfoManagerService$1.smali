.class public final Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string/jumbo v0, "SemDeviceInfoManagerService"

    if-ltz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    sget v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is removed on User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->clearPendingIntentAsUserInternal(ILjava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    sget p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    const-string p0, "Intent contains invalid userId or package name"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
