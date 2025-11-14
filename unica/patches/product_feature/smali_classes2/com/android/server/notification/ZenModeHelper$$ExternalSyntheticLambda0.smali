.class public final synthetic Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/ZenModeHelper;

.field public final synthetic f$1:Landroid/service/notification/ZenModeConfig$ZenRule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ZenModeHelper;

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/ZenModeConfig$ZenRule;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_7
    iget-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    const-string/jumbo v0, "ZenModeHelper"

    const-string/jumbo v1, "Package not found when updating implicit zen rule name"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
