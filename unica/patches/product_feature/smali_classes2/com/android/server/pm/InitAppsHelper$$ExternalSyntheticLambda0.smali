.class public final synthetic Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/nio/file/Path;

    :try_start_2
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1f9

    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    const-string/jumbo p1, "PackageManager"

    const-string v0, "Failed to fix an installed app dir mode"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
