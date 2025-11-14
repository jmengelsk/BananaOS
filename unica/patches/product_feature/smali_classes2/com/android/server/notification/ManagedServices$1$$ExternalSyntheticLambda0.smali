.class public final synthetic Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/ManagedServices$1;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ManagedServices$1;

    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ManagedServices$1;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$1;->mRemovedInfo:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(ILandroid/content/ComponentName;Z)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/notification/ManagedServices;->reregisterService(Landroid/content/ComponentName;I)V

    return-void
.end method
