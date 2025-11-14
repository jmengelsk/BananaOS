.class public final synthetic Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;


# direct methods
.method public synthetic constructor <init>(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    check-cast p1, Lcom/samsung/android/camera/scpm/ScpmList;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p1, p1, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p1, p1, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    iget-object p1, p1, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
