.class public final Lcom/android/server/wm/utils/RotationCache;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCache:Landroid/util/SparseArray;

.field public mCachedFor:Ljava/lang/Object;

.field public final mComputation:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/wm/utils/RotationCache;->mComputation:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;

    return-void
.end method


# virtual methods
.method public final getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCachedFor:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput-object p2, p0, Lcom/android/server/wm/utils/RotationCache;->mCachedFor:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/utils/RotationCache;->mComputation:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;

    iget v1, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    check-cast p2, Landroid/view/DisplayShape;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_2

    sget-object p2, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    goto :goto_3

    :cond_2
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/DisplayShape;->setRotation(I)Landroid/view/DisplayShape;

    move-result-object p2

    goto :goto_3

    :pswitch_0
    check-cast p2, Landroid/view/PrivacyIndicatorBounds;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_4

    new-instance p2, Landroid/view/PrivacyIndicatorBounds;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    invoke-direct {p2, v0, p1}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p1}, Landroid/view/PrivacyIndicatorBounds;->rotate(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object p2

    goto :goto_3

    :pswitch_1
    check-cast p2, Landroid/view/RoundedCorners;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_9

    sget-object v1, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    if-ne p2, v1, :cond_5

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v1, :cond_7

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_0

    :cond_7
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    :goto_0
    if-eqz v1, :cond_8

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1

    :cond_8
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    :goto_1
    invoke-virtual {p2, p1, v2, v0}, Landroid/view/RoundedCorners;->rotate(III)Landroid/view/RoundedCorners;

    move-result-object p2

    goto :goto_3

    :cond_9
    :goto_2
    sget-object p2, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    goto :goto_3

    :pswitch_2
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p2, Landroid/view/DisplayCutout;

    invoke-static {v0, p2, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$OlRwH3_Eqb403xPL7MPG5vhH0aE(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p2

    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/utils/RotationCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
