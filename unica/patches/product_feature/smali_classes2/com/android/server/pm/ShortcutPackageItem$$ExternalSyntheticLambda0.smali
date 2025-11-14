.class public final synthetic Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackageItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ShortcutPackageItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ShortcutPackageItem;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getShortcutPackageItemFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackageItem;->saveToFileLocked(Ljava/io/File;)V

    monitor-exit v1

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw p0
.end method
