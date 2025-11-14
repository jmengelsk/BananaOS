.class public final Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    return-void
.end method


# virtual methods
.method public final onKeepDreamingWhenUnpluggingChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mKeepDreamingWhenUnplugging:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
