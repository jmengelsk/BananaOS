.class public Lcom/android/server/sepunion/DexModeService;
.super Lcom/samsung/android/sepunion/IDexModeService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public bleAdvertiserServiceManagerForTV:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

.field public final mBootCompleteReceiver:Lcom/android/server/sepunion/DexModeService$1;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/sepunion/DexModeService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IDexModeService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/sepunion/DexModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/DexModeService$1;-><init>(Lcom/android/server/sepunion/DexModeService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/DexModeService;->mBootCompleteReceiver:Lcom/android/server/sepunion/DexModeService$1;

    const-string v0, "DexModeService"

    const-string/jumbo v1, "Pradeep DesktopModeServiceForTV"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/sepunion/DexModeService;->mContext:Landroid/content/Context;

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
    .registers 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_21

    const-string p1, "DexModeService"

    const-string/jumbo v1, "Pradeep onBootPhase()"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/android/server/sepunion/DexModeService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/sepunion/DexModeService;->mBootCompleteReceiver:Lcom/android/server/sepunion/DexModeService$1;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_21
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
