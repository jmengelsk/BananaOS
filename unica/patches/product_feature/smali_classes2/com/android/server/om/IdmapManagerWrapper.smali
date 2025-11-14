.class public final Lcom/android/server/om/IdmapManagerWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

.field public final mIdmapManager:Lcom/android/server/om/IdmapManager;


# direct methods
.method public constructor <init>(Lcom/android/server/om/IdmapManager;Lcom/android/server/om/IdmapDaemon;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iput-object p2, p0, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    return-void
.end method


# virtual methods
.method public final createIdmap(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfoExt;I)I
    .registers 16

    const-string v1, "Couldnt verify idmap. Will create it - "

    const-string/jumbo v2, "OverlayManagerExt"

    const/4 v3, 0x0

    if-eqz p1, :cond_bf

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bf

    iget-object v0, p2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    if-eqz v0, :cond_bf

    iget-object v0, v0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    if-nez v0, :cond_18

    goto/16 :goto_bf

    :cond_18
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_63

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "resource-map"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "/data/overlays/remaps/"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    const-string v7, "."

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".map"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_63

    :cond_60
    invoke-static {p1}, Lcom/android/server/om/ResourceMapParser;->parseResourceMap(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_63
    :goto_63
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_65
    iget-object v4, p0, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object p1, p2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object v6, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    new-array v11, v3, [Landroid/os/OverlayConstraint;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6f} :catch_7b

    move v10, p3

    :try_start_70
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Z

    move-result p1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_78

    if-eqz p1, :cond_91

    const/4 p0, 0x1

    return p0

    :catch_78
    move-exception v0

    :goto_79
    move-object p1, v0

    goto :goto_7e

    :catch_7b
    move-exception v0

    move v10, p3

    goto :goto_79

    :goto_7e
    :try_start_7e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    iget-object v4, p0, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object p0, p2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object v6, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget-object v7, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    new-array v11, v3, [Landroid/os/OverlayConstraint;

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Ljava/lang/String;

    move-result-object p0
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_9f} :catch_a3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7e .. :try_end_9f} :catch_a3

    if-eqz p0, :cond_a2

    const/4 v3, 0x3

    :cond_a2
    return v3

    :catch_a3
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "failed to generate idmap for "

    const-string p3, " and "

    invoke-static {p1, v5, p3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object p2, p2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, 0x80

    return p0

    :cond_bf
    :goto_bf
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unable to create idmap for "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ov="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
