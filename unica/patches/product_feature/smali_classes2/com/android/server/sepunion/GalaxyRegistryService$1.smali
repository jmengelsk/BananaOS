.class public final Lcom/android/server/sepunion/GalaxyRegistryService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/GalaxyRegistryService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/GalaxyRegistryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$1;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    const-string/jumbo p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$1;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    invoke-static {p0}, Lcom/android/server/sepunion/GalaxyRegistryService;->-$$Nest$mstartService(Lcom/android/server/sepunion/GalaxyRegistryService;)V

    :cond_0
    return-void
.end method
