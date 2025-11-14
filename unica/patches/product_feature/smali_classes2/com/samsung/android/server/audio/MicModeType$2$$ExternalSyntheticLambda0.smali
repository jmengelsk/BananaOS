.class public final synthetic Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;->$r8$classId:I

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/lang/Integer;

    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/samsung/android/server/audio/MicModeType$6;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_0
    sget v2, Lcom/samsung/android/server/audio/MicModeType$5;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_1
    sget v2, Lcom/samsung/android/server/audio/MicModeType$2;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
