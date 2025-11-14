.class public final synthetic Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppCategoryHintHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppCategoryHintHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AppCategoryHintHelper"

    const-string v0, "AppCategoryHintHelper is not initialized."

    invoke-static {p0, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->User:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppCategoryHintHelper;->writeAppCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V

    sget-object v0, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->Developer:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppCategoryHintHelper;->writeAppCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    :goto_0
    return-void
.end method
