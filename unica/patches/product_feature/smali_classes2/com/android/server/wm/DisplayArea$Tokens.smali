.class public Lcom/android/server/wm/DisplayArea$Tokens;
.super Lcom/android/server/wm/DisplayArea;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mGetOrientingWindow:Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;

.field public mLastKeyguardForcedOrientation:I

.field public final mWindowComparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    new-instance p1, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWindowComparator:Ljava/util/Comparator;

    new-instance p1, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayArea$Tokens;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mGetOrientingWindow:Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final asTokens()Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 1

    return-object p0
.end method

.method public getOrientation(I)I
    .registers 9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mGetOrientingWindow:Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_c

    return p1

    :cond_c
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_39

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v4, v4

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, 0x1ef316b0785f3aefL  # 1.357741434904241E-159

    const/16 v4, 0x14

    invoke-static {v6, v2, v3, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_39
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, -0x2

    if-eq p1, v1, :cond_50

    const/4 v1, -0x1

    if-eq p1, v1, :cond_50

    iput p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    goto :goto_52

    :cond_50
    iget p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    :cond_52
    :goto_52
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    return p1
.end method
