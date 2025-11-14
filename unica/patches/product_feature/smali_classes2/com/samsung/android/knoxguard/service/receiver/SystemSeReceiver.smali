.class public Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final INTENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field public static final RMM_BLINK_STOP:Ljava/lang/String; = "com.samsung.android.rmm.blink_stop"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    const-string v0, "KG.SystemSeReceiver"

    sput-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_BOOT_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_USER_PRESENT:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "com.samsung.android.kgclient"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string/jumbo p0, "com.samsung.kgclient.android.intent.action.KG_PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_3
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v2, "uri"

    if-nez v0, :cond_7

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_DATA_CLEARED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    return-void

    :cond_6
    :goto_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_SETUP_WIZARD_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    return-void

    :cond_7
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_REPLACED_OR_REMOVED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    :cond_8
    return-void

    :cond_9
    :goto_2
    sget-object p0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "intent is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
