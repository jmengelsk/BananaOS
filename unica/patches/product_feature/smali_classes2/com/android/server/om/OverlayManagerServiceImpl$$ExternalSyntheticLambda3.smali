.class public final synthetic Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/Predicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;->f$0:I

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Predicate;

    check-cast p1, Landroid/content/om/OverlayInfo;

    iget v1, p1, Landroid/content/om/OverlayInfo;->userId:I

    if-ne v0, v1, :cond_12

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method
