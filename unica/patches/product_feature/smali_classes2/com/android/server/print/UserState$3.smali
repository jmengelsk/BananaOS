.class public final Lcom/android/server/print/UserState$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final listener:Landroid/os/IInterface;

.field public final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/print/IPrintServicesChangeListener;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/print/UserState$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0, p2}, Lcom/android/server/print/UserState$3;-><init>(Landroid/os/IInterface;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/print/UserState$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0, p2}, Lcom/android/server/print/UserState$3;-><init>(Landroid/os/IInterface;)V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget v0, p0, Lcom/android/server/print/UserState$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    iget-object v0, v0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    iget-object v1, v1, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    iget-object v0, v0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    iget-object v1, v1, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
