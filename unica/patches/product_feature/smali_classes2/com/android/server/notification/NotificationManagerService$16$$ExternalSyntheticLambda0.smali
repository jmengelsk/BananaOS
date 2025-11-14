.class public final synthetic Lcom/android/server/notification/NotificationManagerService$16$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$16$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$16$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$16$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$16$$ExternalSyntheticLambda0;->f$0:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_0
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$16$$ExternalSyntheticLambda0;->f$0:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    :cond_1
    and-int/lit16 p0, p1, 0x1000

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const p0, 0x8040

    and-int/2addr p0, p1

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
