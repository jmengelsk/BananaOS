.class public final Lcom/android/server/wm/PresentationController$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PresentationController;

.field public final synthetic val$displayId:I

.field public final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PresentationController;ILcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PresentationController$1;->this$0:Lcom/android/server/wm/PresentationController;

    iput p2, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    iput-object p3, p0, Lcom/android/server/wm/PresentationController$1;->val$win:Lcom/android/server/wm/WindowState;

    return-void
.end method


# virtual methods
.method public final onRemoved()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/PresentationController$1;->this$0:Lcom/android/server/wm/PresentationController;

    iget-object v1, v0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/PresentationController$1;->val$win:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_ERROR_enabled:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v0, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, 0x37250f1290fe354fL    # 4.7215635313942315E-43

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PresentationController$Presentation;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v1, v1, Lcom/android/server/wm/PresentationController$Presentation;->mPresentationListener:Lcom/android/server/wm/PresentationController$1;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    iget-object v0, v0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/hardware/display/DisplayManagerInternal;->onPresentation(IZ)V

    return-void
.end method
