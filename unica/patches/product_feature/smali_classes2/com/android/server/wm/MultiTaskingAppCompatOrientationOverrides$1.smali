.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    return-void
.end method


# virtual methods
.method public final dumpUserChanges(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final initializeUserOverride(ILjava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->setUserOverride(IILjava/lang/String;)V

    return-void
.end method

.method public final onSystemReady()V
    .registers 1

    return-void
.end method

.method public final resetAllIfNeeded(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    iget v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_f

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->reset(I)V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method
