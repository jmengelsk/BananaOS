.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    iput p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;->$r8$classId:I

    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;->$r8$classId:I

    iget p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;->f$0:I

    packed-switch v0, :pswitch_data_26

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    iget p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerUid:I

    if-ne p1, p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0

    :pswitch_11  #0x1
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    iget p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUid:I

    if-ne p1, p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0

    :pswitch_1b  #0x0
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    iget p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUid:I

    if-ne p1, p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b  #00000000
        :pswitch_11  #00000001
    .end packed-switch
.end method
