.class public Lcom/android/server/sepunion/BRReceiverAgentService;
.super Lcom/samsung/android/sepunion/IBRReceiverAgent$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBootCompleteReceiver:Lcom/android/server/sepunion/BRReceiverAgentService$1;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IBRReceiverAgent$Stub;-><init>()V

    new-instance v0, Lcom/android/server/sepunion/BRReceiverAgentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/BRReceiverAgentService$1;-><init>(Lcom/android/server/sepunion/BRReceiverAgentService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mBootCompleteReceiver:Lcom/android/server/sepunion/BRReceiverAgentService$1;

    iput-object p1, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onBootPhase(I)V
    .registers 9

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1f

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 p1, -0x3e8

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mBootCompleteReceiver:Lcom/android/server/sepunion/BRReceiverAgentService$1;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1f
    return-void
.end method

.method public final onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final onDestroy()V
    .registers 1

    return-void
.end method

.method public final onStart()V
    .registers 1

    return-void
.end method

.method public final onStartUser(I)V
    .registers 2

    return-void
.end method

.method public final onStopUser(I)V
    .registers 2

    return-void
.end method

.method public final onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public final onUnlockUser(I)V
    .registers 2

    return-void
.end method
