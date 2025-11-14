.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/OctConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    check-cast p3, Landroid/os/UserHandle;

    check-cast p4, Ljava/lang/String;

    check-cast p5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    check-cast p6, Ljava/lang/String;

    check-cast p7, Landroid/media/MediaRoute2Info;

    check-cast p8, Ljava/lang/Integer;

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    invoke-static/range {p0 .. p8}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$VwOkF_wuq7S_wu2mL143qz8S5B4(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;I)V

    return-void
.end method
