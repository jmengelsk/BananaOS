.class public final Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPkg:Ljava/lang/String;

.field public final mUid:I

.field public final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    iput-object p2, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    iget v1, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    iget v3, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    if-ne v3, v1, :cond_27

    iget-object v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    return v0

    :cond_27
    return v2
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " windowToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
