.class public final Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAddDisabledComponent:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

.field public final mGetPackagesLocked:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

.field public final mSetEnabled:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

.field public final mSetInstalled:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mGetPackagesLocked:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    iput-object p2, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetInstalled:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

    iput-object p3, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetEnabled:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

    iput-object p4, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mAddDisabledComponent:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

    return-void
.end method
