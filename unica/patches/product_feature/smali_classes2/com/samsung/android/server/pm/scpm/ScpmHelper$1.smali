.class public final Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/scpm/ScpmHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/scpm/ScpmHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;->this$0:Lcom/samsung/android/server/pm/scpm/ScpmHelper;

    return-void
.end method


# virtual methods
.method public final onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .locals 0

    return-void
.end method

.method public final onUnformattedPackageFeatureFileChanged(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;)V
    .locals 2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/FileDescriptor;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;->this$0:Lcom/samsung/android/server/pm/scpm/ScpmHelper;

    iget-object p2, p2, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;->this$0:Lcom/samsung/android/server/pm/scpm/ScpmHelper;

    iget-object v0, v0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SCPM file is updated"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;->this$0:Lcom/samsung/android/server/pm/scpm/ScpmHelper;

    invoke-static {v0, p1}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->-$$Nest$mcopyFromScpm(Lcom/samsung/android/server/pm/scpm/ScpmHelper;Ljava/io/FileDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;->this$0:Lcom/samsung/android/server/pm/scpm/ScpmHelper;

    iget-object p1, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->FILE_PATH:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->parse(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
