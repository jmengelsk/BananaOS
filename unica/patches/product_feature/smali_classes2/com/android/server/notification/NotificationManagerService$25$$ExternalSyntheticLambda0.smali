.class public final synthetic Lcom/android/server/notification/NotificationManagerService$25$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$25$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$25$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .locals 2

    const/16 v0, 0xb

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$25$$ExternalSyntheticLambda0;->f$0:I

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$25$$ExternalSyntheticLambda0;->f$1:I

    if-eq v0, p0, :cond_0

    const/4 v0, 0x3

    if-ne v0, p0, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x1000

    :cond_1
    and-int p0, p1, v1

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
