.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:[I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$0:[I

    return-void
.end method

.method public synthetic constructor <init>([I[ILandroid/graphics/Region;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$0:[I

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 7

    iget v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->$r8$classId:I

    packed-switch v0, :pswitch_data_64

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$0:[I

    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v2, "Window #"

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    aget p1, p0, v2

    add-int/lit8 p1, p1, 0x1

    aput p1, p0, v2

    return-void

    :pswitch_36  #0x0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$0:[I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$1:Ljava/lang/Object;

    check-cast v1, [I

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Region;

    check-cast p1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    if-gtz v3, :cond_48

    goto :goto_62

    :cond_48
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    aget v1, v0, v2

    if-le v3, v1, :cond_5a

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    :cond_5a
    sub-int/2addr v1, v3

    aput v1, v0, v2

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :goto_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_36  #00000000
    .end packed-switch
.end method
