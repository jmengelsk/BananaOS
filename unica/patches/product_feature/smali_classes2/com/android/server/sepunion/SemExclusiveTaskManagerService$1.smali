.class public final Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string/jumbo p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->$r8$clinit:I

    const-string/jumbo p2, "mUserSwitchedReceiver : "

    const-string/jumbo v0, "SemExclusiveTaskManagerService"

    invoke-static {p1, p2, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->userSwitch(I)V

    return-void
.end method
