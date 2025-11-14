.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;->$r8$classId:I

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    packed-switch p0, :pswitch_data_46

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p3, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void

    :pswitch_20  #0x1
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    return-void

    :pswitch_33  #0x0
    check-cast p2, Ljava/lang/Boolean;

    check-cast p3, Ljava/lang/Integer;

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_33  #00000000
        :pswitch_20  #00000001
    .end packed-switch
.end method
