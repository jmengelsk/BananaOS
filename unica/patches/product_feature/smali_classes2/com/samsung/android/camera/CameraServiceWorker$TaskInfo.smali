.class public final Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;
.super Ljava/lang/Record;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "frontTaskId",
        "isResizable",
        "isFixedOrientationLandscape",
        "isFixedOrientationPortrait",
        "displayId",
        "userId"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Z,
        Z,
        Z,
        I,
        I
    }
.end annotation


# instance fields
.field public final displayId:I

.field public final frontTaskId:I

.field public final isFixedOrientationLandscape:Z

.field public final isFixedOrientationPortrait:Z

.field public final isResizable:Z

.field public final userId:I


# direct methods
.method public constructor <init>(IIIZZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->frontTaskId:I

    iput-boolean p4, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isResizable:Z

    iput-boolean p5, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationLandscape:Z

    iput-boolean p6, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationPortrait:Z

    iput p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    iput p3, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->userId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isResizable:Z

    iget-boolean v1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isResizable:Z

    if-ne v0, v1, :cond_2c

    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationLandscape:Z

    iget-boolean v1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationLandscape:Z

    if-ne v0, v1, :cond_2c

    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationPortrait:Z

    iget-boolean v1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationPortrait:Z

    if-ne v0, v1, :cond_2c

    iget v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->frontTaskId:I

    iget v1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->frontTaskId:I

    if-ne v0, v1, :cond_2c

    iget v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    iget v1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    if-ne v0, v1, :cond_2c

    iget p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->userId:I

    iget p1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->userId:I

    if-ne p0, p1, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 6

    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isResizable:Z

    iget-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationLandscape:Z

    iget-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationPortrait:Z

    iget v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->frontTaskId:I

    iget v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    iget p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->userId:I

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->frontTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isResizable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationLandscape:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->isFixedOrientationPortrait:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v0

    aput-object v3, v7, v1

    const/4 v2, 0x2

    aput-object v4, v7, v2

    const/4 v2, 0x3

    aput-object v5, v7, v2

    const/4 v2, 0x4

    aput-object v6, v7, v2

    const/4 v2, 0x5

    aput-object p0, v7, v2

    const-class p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    const-string/jumbo v2, "frontTaskId;isResizable;isFixedOrientationLandscape;isFixedOrientationPortrait;displayId;userId"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_47

    new-array v2, v0, [Ljava/lang/String;

    goto :goto_4d

    :cond_47
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_4d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5f
    array-length p0, v2

    if-ge v0, p0, :cond_7c

    aget-object p0, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v7, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length p0, v2

    sub-int/2addr p0, v1

    if-eq v0, p0, :cond_7a

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7a
    add-int/2addr v0, v1

    goto :goto_5f

    :cond_7c
    const-string/jumbo p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
