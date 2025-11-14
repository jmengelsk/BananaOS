.class public final synthetic Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/RemoteCallback;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;Ljava/util/concurrent/Executor;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$0:Landroid/os/RemoteCallback;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 5

    iget v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_44

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$0:Landroid/os/RemoteCallback;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    :try_start_9
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_19
    move-exception v0

    new-instance v1, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    throw v0

    :pswitch_24  #0x0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$0:Landroid/os/RemoteCallback;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    :try_start_28
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_38

    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_38
    move-exception v0

    new-instance v1, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    throw v0

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_24  #00000000
    .end packed-switch
.end method
