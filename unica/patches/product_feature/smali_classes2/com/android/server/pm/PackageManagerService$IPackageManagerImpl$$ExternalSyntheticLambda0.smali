.class public final synthetic Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;->f$0:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    or-int/lit16 p0, p0, 0x200

    invoke-virtual {p1, p0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    goto :goto_0

    :cond_0
    iget p0, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit16 p0, p0, -0x201

    invoke-virtual {p1, p0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
