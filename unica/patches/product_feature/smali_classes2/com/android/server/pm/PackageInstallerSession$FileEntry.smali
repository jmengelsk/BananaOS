.class public final Lcom/android/server/pm/PackageInstallerSession$FileEntry;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mFile:Landroid/content/pm/InstallationFile;

.field public final mIndex:I


# direct methods
.method public constructor <init>(ILandroid/content/pm/InstallationFile;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mIndex:I

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v0}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v0

    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v2

    if-ne v0, v2, :cond_2a

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {p0}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {p1}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v0}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {p0}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
