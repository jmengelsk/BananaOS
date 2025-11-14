.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Supplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Supplier;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/os/Bundle;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
