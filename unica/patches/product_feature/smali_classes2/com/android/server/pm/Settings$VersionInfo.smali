.class public final Lcom/android/server/pm/Settings$VersionInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public buildFingerprint:Ljava/lang/String;

.field public databaseVersion:I

.field public fingerprint:Ljava/lang/String;

.field public sdkVersion:I


# virtual methods
.method public final forceCurrent()V
    .locals 1

    const/16 v0, 0x24

    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    return-void
.end method
