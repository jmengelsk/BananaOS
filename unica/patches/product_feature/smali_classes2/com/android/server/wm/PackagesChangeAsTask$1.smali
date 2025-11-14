.class public final Lcom/android/server/wm/PackagesChangeAsTask$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayCutoutController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayCutoutController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PackagesChangeAsTask$1;->this$0:Lcom/android/server/wm/DisplayCutoutController;

    return-void
.end method


# virtual methods
.method public final onDumpInTask(Lcom/android/server/wm/Task;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/PackagesChangeAsTask$1;->this$0:Lcom/android/server/wm/DisplayCutoutController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "mCutoutPolicy="

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p1, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "HideCameraCutout"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "OverlapWithTheCameraCutout"

    goto :goto_0

    :cond_3
    const-string p0, "AppDefault"

    :goto_0
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final updateValueToTask(Lcom/android/server/wm/Task;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/PackagesChangeAsTask$1;->this$0:Lcom/android/server/wm/DisplayCutoutController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/DisplayCutoutController;->getPolicy(ILjava/lang/String;Z)I

    move-result v1

    :cond_1
    iput v1, p1, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    return-void
.end method
