.class public final Lcom/android/server/sepunion/EngmodeService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-eqz p2, :cond_29

    :try_start_2
    const-string/jumbo p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    const-string/jumbo p1, "engmode_service"

    const-string p2, "BootCompleted"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$mregisterNetworkCallback(Lcom/android/server/sepunion/EngmodeService;)Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$2;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$mregisterNetworkCallback(Lcom/android/server/sepunion/EngmodeService;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_29
    return-void
.end method
