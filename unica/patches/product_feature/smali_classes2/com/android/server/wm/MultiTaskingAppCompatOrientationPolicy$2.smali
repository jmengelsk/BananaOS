.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$2;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    return-void
.end method


# virtual methods
.method public final onDumpInTask(Lcom/android/server/wm/Task;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    iget p0, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "mOrientationOverride="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->toPolicyToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final updateValueToTask(Lcom/android/server/wm/Task;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$2;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->onOverridesChangedIfNeededInTask(Lcom/android/server/wm/Task;Z)V

    return-void
.end method
