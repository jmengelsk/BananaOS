.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    monitor-enter v0

    :try_start_e
    iget-boolean v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mDefaultEnabled:Z

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_56

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldIgnoreLandscapeRequestDueToMultiStar:Z

    if-eqz v0, :cond_26

    const-string v0, ", mShouldIgnoreLandscapeRequest="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldIgnoreLandscapeRequestDueToMultiStar:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    :cond_26
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    if-eqz v0, :cond_55

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mRotationCompatPolicy="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    if-eqz p0, :cond_4d

    const/4 p2, 0x1

    if-eq p0, p2, :cond_4a

    const/4 p2, 0x2

    if-eq p0, p2, :cond_47

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4f

    :cond_47
    const-string p0, "AUTO"

    goto :goto_4f

    :cond_4a
    const-string p0, "ALWAYS_ENABLED"

    goto :goto_4f

    :cond_4d
    const-string p0, "ALWAYS_DISABLED"

    :goto_4f
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_55
    return-void

    :catchall_56
    move-exception p0

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public final executeShellCommand()V
    .registers 1

    return-void
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "OrientationPolicy"

    return-object p0
.end method
