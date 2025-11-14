.class public abstract Lcom/android/server/om/wallpapertheme/FotaPreferenceUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/overlays/wallpapertheme/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string/jumbo v2, "SWT_FotaPreferenceUtils"

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v1, 0x1ff

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    goto :goto_2f

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getPreferences: Unable to create dir: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/overlays/wallpapertheme/fota_preference.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3f} :catch_40

    goto :goto_57

    :catch_40
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getPreferences: Unable to create file, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
