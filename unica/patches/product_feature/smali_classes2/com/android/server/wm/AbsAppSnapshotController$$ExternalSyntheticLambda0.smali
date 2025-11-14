.class public final synthetic Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/graphics/RenderNode;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/window/TaskSnapshot$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/RenderNode;IILandroid/window/TaskSnapshot$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/RenderNode;

    iput p2, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$3:Landroid/window/TaskSnapshot$Builder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/RenderNode;

    iget v1, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;->f$3:Landroid/window/TaskSnapshot$Builder;

    const-wide/16 v3, 0x20

    :try_start_0
    const-string/jumbo v5, "drawAppThemeSnapshot_acquire"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/window/TaskSnapshot$Builder;->setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/window/TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {p0}, Landroid/window/TaskSnapshot$Builder;->build()Landroid/window/TaskSnapshot;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
