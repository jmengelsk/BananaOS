.class public final synthetic Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Ljava/lang/Integer;

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->$r8$clinit:I

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    :pswitch_0
    sget p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->$r8$clinit:I

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
