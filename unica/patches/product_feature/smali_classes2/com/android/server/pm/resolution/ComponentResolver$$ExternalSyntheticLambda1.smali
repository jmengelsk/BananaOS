.class public final synthetic Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;->$r8$classId:I

    check-cast p1, Landroid/content/IntentFilter;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
