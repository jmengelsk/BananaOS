.class public final Lcom/samsung/android/camera/scpm/list/CameraCompatibilityList;
.super Lcom/samsung/android/camera/scpm/ScpmList;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/camera/scpm/ScpmList;-><init>()V

    sget-object v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_COMPATIBILITY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    const-string v0, "2025072200"

    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mVersion:Ljava/lang/String;

    const-string/jumbo v0, "cameracompatdisabledlist-a763"

    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mConfigurationName:Ljava/lang/String;

    const-string/jumbo v0, "value"

    const-string/jumbo v1, "extra"

    const-string/jumbo v2, "packageName"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mItemNames:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mNeedToSyncNative:Z

    return-void
.end method
