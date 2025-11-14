.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(ILjava/io/PrintWriter;)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;->f$0:Ljava/io/PrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;->f$0:Ljava/io/PrintWriter;

    packed-switch v1, :pswitch_data_0

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/server/wm/WindowState;

    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    const-string v1, "    "

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    const/16 v4, 0x20

    if-eqz v0, :cond_0

    const-string v5, "  imeLayeringTarget in display# "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "  imeInputTarget in display# "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "  imeControlTarget in display# "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    const-string v0, "  imeSurfaceParent in display# "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " (removed)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    const-string v0, "  Minimum task size of display#"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
