.class public final synthetic Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;II)V
    .registers 4

    iput p3, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    iput p2, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_4a

    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    iget p0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserOrSystemMinAspectRatio(ILjava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x1
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    iget p0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode(ILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_33

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2a

    const p0, 0x3fe38e39

    goto :goto_35

    :cond_2a
    const/4 p1, 0x3

    if-ne p0, p1, :cond_31

    const p0, 0x3faaaaab

    goto :goto_35

    :cond_31
    const/4 p0, 0x0

    goto :goto_35

    :cond_33
    const/high16 p0, -0x40800000  # -1.0f

    :goto_35
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_3a  #0x0
    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    iget p0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserOrSystemMinAspectRatio(ILjava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3a  #00000000
        :pswitch_14  #00000001
    .end packed-switch
.end method
