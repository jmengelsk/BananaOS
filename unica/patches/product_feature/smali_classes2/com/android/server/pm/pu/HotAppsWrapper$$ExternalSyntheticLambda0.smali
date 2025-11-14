.class public final synthetic Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/pm/pu/App;

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/pm/pu/App;->getDex2oatWallTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-wide p0, p1, Lcom/android/server/pm/pu/App;->mWastedTimeMs:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
