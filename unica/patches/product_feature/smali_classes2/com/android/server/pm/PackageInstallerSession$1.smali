.class public final Lcom/android/server/pm/PackageInstallerSession$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .registers 5

    const-string v0, ".removed"

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_a8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_20

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->artServiceV3()Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/art/ArtManagedInstallFileHelper;->isArtManaged(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    move v1, v2

    :cond_20
    return v1

    :pswitch_21  #0x2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_34

    :cond_28
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_34

    :cond_33
    move v1, v2

    :goto_34
    return v1

    :pswitch_35  #0x1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_48

    :cond_3c
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_47

    goto :goto_48

    :cond_47
    move v1, v2

    :goto_48
    return v1

    :pswitch_49  #0x0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_50

    goto :goto_a6

    :cond_50
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5b

    goto :goto_a6

    :cond_5b
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".idsig"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_68

    goto :goto_a6

    :cond_68
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "app.metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_76

    goto :goto_a6

    :cond_76
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->artServiceV3()Z

    move-result p0

    if-eqz p0, :cond_87

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/art/ArtManagedInstallFileHelper;->isArtManaged(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8e

    goto :goto_a6

    :cond_87
    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->isDexMetadataFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_8e

    goto :goto_a6

    :cond_8e
    sget p0, Lcom/android/server/pm/ApkChecksums;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".digests"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a6

    const-string p1, ".signature"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a5

    goto :goto_a6

    :cond_a5
    move v1, v2

    :cond_a6
    :goto_a6
    return v1

    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_49  #00000000
        :pswitch_35  #00000001
        :pswitch_21  #00000002
    .end packed-switch
.end method
