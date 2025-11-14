.class public final Lcom/android/server/sepunion/SemShortcutManagerService$4;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$4;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$4;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    sget-object v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    return-void
.end method
