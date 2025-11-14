.class public final Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;
.super Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAddedFiles:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;-><init>()V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Landroid/content/pm/InstallationFileParcel;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    iget-object v1, v1, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 1

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    sget-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "File name is not in the list of added files."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "incomingFd can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
