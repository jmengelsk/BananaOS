.class public final Lcom/android/server/sepunion/SemShortcutManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageModified(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo p1, "SemExecuteManagerService"

    const-string/jumbo v0, "onPackageModified"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    iget-object p1, p1, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$3;

    const/16 v0, 0x3e6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    iget-object p1, p1, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$3;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1c
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$3;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onSomePackagesChanged()V
    .registers 5

    const-string/jumbo v0, "SemExecuteManagerService"

    const-string/jumbo v1, "onSomePackagesChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    iget-object v0, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$3;

    const/16 v1, 0x3e6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    iget-object v0, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$3;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1c
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$1;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$3;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
