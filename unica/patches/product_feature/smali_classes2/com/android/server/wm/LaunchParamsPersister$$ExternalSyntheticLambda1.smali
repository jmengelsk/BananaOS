.class public final synthetic Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_1e

    check-cast p1, Ljava/lang/String;

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    :pswitch_d  #0x1
    check-cast p1, Landroid/content/ComponentName;

    new-instance p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    invoke-direct {p0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>()V

    return-object p0

    :pswitch_15  #0x0
    check-cast p1, Landroid/content/ComponentName;

    new-instance p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    invoke-direct {p0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>()V

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_15  #00000000
        :pswitch_d  #00000001
    .end packed-switch
.end method
