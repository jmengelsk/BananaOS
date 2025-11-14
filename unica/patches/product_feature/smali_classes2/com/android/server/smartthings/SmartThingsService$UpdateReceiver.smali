.class public final Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartthings/SmartThingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartthings/SmartThingsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;->this$0:Lcom/android/server/smartthings/SmartThingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;->this$0:Lcom/android/server/smartthings/SmartThingsService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/smartthings/SmartThingsService;->backgroundWhitelist(Landroid/content/Context;)V

    return-void
.end method
