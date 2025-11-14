.class public final Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const-string p0, "Failed to base64 decode global settings config from "

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_14

    const/4 p2, 0x0

    :goto_12
    move-object v5, p2

    goto :goto_19

    :cond_14
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    goto :goto_12

    :goto_19
    if-nez v5, :cond_1d

    goto/16 :goto_d1

    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-wide/16 v3, 0x80

    const/16 v1, 0x3e8

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(IIJLjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    const-string/jumbo v0, "SignedConfig"

    if-nez p2, :cond_4c

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Got null PackageInfo for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4c
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p2, :cond_54

    goto/16 :goto_d1

    :cond_54
    const-string/jumbo v1, "android.settings.global"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d1

    const-string/jumbo v2, "android.settings.global.signature"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d1

    new-instance v3, Lcom/android/server/signedconfig/SignedConfigEvent;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    iput v4, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I

    iput v4, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    const/4 v4, 0x1

    :try_start_73
    iput v4, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    iput-object v5, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_a6

    :try_start_7f
    new-instance v2, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_8e} :catch_a9
    .catchall {:try_start_7f .. :try_end_8e} :catchall_a6

    :try_start_8e
    new-instance p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;

    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/signedconfig/SignedConfigEvent;)V

    invoke-virtual {p0, v2, p2}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->applyConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_a6

    iget v7, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    iget v8, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    iget v9, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I

    iget-object v10, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    iget v11, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    const/16 v6, 0x7b

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;I)V

    return-void

    :catchall_a6
    move-exception v0

    move-object p0, v0

    goto :goto_c1

    :catch_a9
    :try_start_a9
    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    iput v6, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_a6

    iget v5, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    iget v7, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I

    iget-object v8, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    const/16 v4, 0x7b

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;I)V

    goto :goto_d1

    :goto_c1
    iget v5, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    iget v6, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    iget v7, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I

    iget-object v8, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    const/16 v4, 0x7b

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;I)V

    throw p0

    :cond_d1
    :goto_d1
    return-void
.end method
