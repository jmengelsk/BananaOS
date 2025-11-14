.class final Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;


# direct methods
.method public static synthetic $r8$lambda$UFzDN-gLG2m1X2vCxGgpiDGKL3E(Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->lambda$onReceive$0(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOnAsync()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOffAsync()V

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOn()V

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOff()V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-boolean p2, p2, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mUseScreenStatusAsyncHandle:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method
