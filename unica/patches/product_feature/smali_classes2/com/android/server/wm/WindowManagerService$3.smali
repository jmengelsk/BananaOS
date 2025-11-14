.class public final Lcom/android/server/wm/WindowManagerService$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/IOnKeyguardExitResult;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mdoDump(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    const-string p3, "-a"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mdoDump(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 19

    if-eqz p4, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string/jumbo v4, "all"

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v11, -0x1

    const-wide/16 v12, 0x3e8

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZIIJ)Z

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_2f
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda4;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v1}, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda4;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    new-instance p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda35;

    const/4 v0, 0x1

    move-object/from16 v3, p2

    invoke-direct {p0, v0, v3, p1}, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda35;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_4a
    move-exception v0

    move-object p0, v0

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onKeyguardExitResult(Z)V
    .registers 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/view/IOnKeyguardExitResult;

    invoke-interface {p0, p1}, Landroid/view/IOnKeyguardExitResult;->onKeyguardExitResult(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
