.class final Lcom/android/server/pm/ScanResult;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDynamicSharedLibraryInfos:Ljava/util/List;

.field public final mExistingSettingCopied:Z

.field public final mPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mRequest:Lcom/android/server/pm/ScanRequest;

.field public final mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

.field public final mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageSetting;ZLandroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iput-object p2, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-boolean p3, p0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    iput-object p4, p0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    iput-object p5, p0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    iput-object p6, p0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    return-void
.end method
