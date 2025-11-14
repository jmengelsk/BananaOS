.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p0, :pswitch_data_72

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    goto :goto_2e

    :cond_f
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer;->getNotYetIdleActivity(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_2e

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_2d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x7ade58d8be923c5dL  # 7.051029260039047E283

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2d
    const/4 v0, 0x1

    :cond_2e
    :goto_2e
    return v0

    :pswitch_2f  #0x1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetBlurWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    :pswitch_36  #0x0
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_40

    goto :goto_71

    :cond_40
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer;->getNotYetIdleActivity(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_60

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_5e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x7ade58d8be923c5dL  # 7.051029260039047E283

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5e
    const/4 v0, 0x1

    goto :goto_71

    :cond_60
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result p0

    if-eqz p0, :cond_67

    goto :goto_71

    :cond_67
    new-instance p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v0

    :goto_71
    return v0

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_2f  #00000001
    .end packed-switch
.end method
