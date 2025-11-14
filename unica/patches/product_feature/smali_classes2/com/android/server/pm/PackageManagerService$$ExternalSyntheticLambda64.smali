.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda64;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    sget-wide v0, Lcom/android/server/pm/PackageManagerService;->DEFERRED_NO_KILL_POST_DELETE_DELAY_MS_EXTENDED:J

    const-string/jumbo p0, "package_manager_service"

    const-string/jumbo v2, "deferred_no_kill_post_delete_delay_ms_extended"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
