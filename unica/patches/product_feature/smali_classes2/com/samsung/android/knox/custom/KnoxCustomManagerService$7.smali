.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTetheringFailed(I)V
    .locals 4

    const-string/jumbo v0, "onTetheringFailed + "

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetherLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetheringResultCode:I

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetherLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onTetheringStarted()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetherLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "KnoxCustomManagerService"

    const-string/jumbo v2, "onTetheringStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$7;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetheringResultCode:I

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mTetherLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
