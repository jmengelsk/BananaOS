.class public final Lcom/android/server/memory/ZramMaintenance$1;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/memory/ZramMaintenance;

.field public final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lcom/android/server/memory/ZramMaintenance;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/memory/ZramMaintenance$1;->this$0:Lcom/android/server/memory/ZramMaintenance;

    iput-object p2, p0, Lcom/android/server/memory/ZramMaintenance$1;->val$params:Landroid/app/job/JobParameters;

    const-string/jumbo p1, "ZramMaintenance"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "mmd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IMmd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMmd;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/memory/ZramMaintenance$1;->this$0:Lcom/android/server/memory/ZramMaintenance;

    iget-object v3, p0, Lcom/android/server/memory/ZramMaintenance$1;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v2, v3, v1}, Lcom/android/server/memory/ZramMaintenance;->startJob(Landroid/content/Context;Landroid/app/job/JobParameters;Landroid/os/IMmd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/memory/ZramMaintenance$1;->this$0:Lcom/android/server/memory/ZramMaintenance;

    iget-object p0, p0, Lcom/android/server/memory/ZramMaintenance$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/memory/ZramMaintenance$1;->this$0:Lcom/android/server/memory/ZramMaintenance;

    iget-object p0, p0, Lcom/android/server/memory/ZramMaintenance$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v2, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    throw v1
.end method
