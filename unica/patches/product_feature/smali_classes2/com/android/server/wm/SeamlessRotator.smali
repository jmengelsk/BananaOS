.class public final Lcom/android/server/wm/SeamlessRotator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mFloat9:[F

.field public final mNewRotation:I

.field public final mOldRotation:I

.field public final mTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(IILandroid/view/DisplayInfo;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    iput p1, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    iput p2, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    iget p0, p3, Landroid/view/DisplayInfo;->installOrientation:I

    iget p0, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_21

    if-ne p0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    move p0, v2

    :goto_22
    if-eqz p0, :cond_27

    iget v3, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_29

    :cond_27
    iget v3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_29
    if-eqz p0, :cond_2e

    iget p0, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_30

    :cond_2e
    iget p0, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_30
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x42b40000  # 90.0f

    const/high16 v5, 0x43340000  # 180.0f

    const-string/jumbo v6, "Unknown rotation: "

    const/high16 v7, 0x43870000  # 270.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz p1, :cond_6f

    if-eq p1, v2, :cond_66

    if-eq p1, v8, :cond_5b

    if-ne p1, v1, :cond_51

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int p1, v3

    int-to-float p1, p1

    invoke-virtual {v0, p1, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_72

    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5b
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int p1, p0

    int-to-float p1, p1

    neg-int v10, v3

    int-to-float v10, v10

    invoke-virtual {v0, p1, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_72

    :cond_66
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int p1, p0

    int-to-float p1, p1

    invoke-virtual {v0, v9, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_72

    :cond_6f
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :goto_72
    if-eqz p2, :cond_9d

    if-eq p2, v2, :cond_95

    if-eq p2, v8, :cond_8c

    if-ne p2, v1, :cond_82

    invoke-virtual {p3, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, v3

    invoke-virtual {p3, p0, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_a0

    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8c
    invoke-virtual {p3, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p0

    int-to-float p1, v3

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_a0

    :cond_95
    invoke-virtual {p3, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p0

    invoke-virtual {p3, v9, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_a0

    :cond_9d
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_a0
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string/jumbo v2, "{old="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "ForcedSeamlessRotator"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
