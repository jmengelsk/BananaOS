.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/server/pm/StagingManager$StagedSession;

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isApexSession()Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_1
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
