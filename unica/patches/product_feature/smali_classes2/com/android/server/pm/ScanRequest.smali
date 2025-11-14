.class final Lcom/android/server/pm/ScanRequest;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCpuAbiOverride:Ljava/lang/String;

.field public final mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mIsPlatformPackage:Z

.field public final mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

.field public final mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

.field public final mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mParseFlags:I

.field public final mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

.field public final mPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mRealPkgName:Ljava/lang/String;

.field public final mScanFlags:I

.field public final mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iput-object p3, p0, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    iput-object p4, p0, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-object p2, p0, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iput-object p5, p0, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/server/pm/PackageSetting;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-object p6, p0, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-object p7, p0, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-object p8, p0, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    iput p9, p0, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    iput p10, p0, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    iput-boolean p11, p0, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    iput-object p12, p0, Lcom/android/server/pm/ScanRequest;->mUser:Landroid/os/UserHandle;

    iput-object p13, p0, Lcom/android/server/pm/ScanRequest;->mCpuAbiOverride:Ljava/lang/String;

    return-void
.end method
