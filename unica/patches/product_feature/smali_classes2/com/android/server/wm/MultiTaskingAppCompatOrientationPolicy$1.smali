.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldIgnoreLandscapeRequestDueToMultiStar:Z

    if-eqz v0, :cond_0

    const-string v0, ", mShouldIgnoreLandscapeRequest="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldIgnoreLandscapeRequestDueToMultiStar:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mRotationCompatPolicy="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    if-eqz p0, :cond_3

    const/4 p2, 0x1

    if-eq p0, p2, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "AUTO"

    goto :goto_0

    :cond_2
    const-string p0, "ALWAYS_ENABLED"

    goto :goto_0

    :cond_3
    const-string p0, "ALWAYS_DISABLED"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final executeShellCommand()V
    .locals 0

    return-void
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "OrientationPolicy"

    return-object p0
.end method
