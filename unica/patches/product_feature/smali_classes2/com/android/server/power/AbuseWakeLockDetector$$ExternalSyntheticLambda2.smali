.class public final synthetic Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/AbuseWakeLockDetector;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/AbuseWakeLockDetector;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/AbuseWakeLockDetector;

    iput-object p2, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/AbuseWakeLockDetector;

    iget-object p0, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->uid:I

    iget-object p1, p1, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v0, Lcom/android/server/power/AbuseWakeLockDetector;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    :try_start_1
    sget-object v5, Lcom/android/server/power/AbuseWakeLockDetector;->SEC_APP_PREFIX:[Ljava/lang/String;

    move v6, v3

    :goto_1
    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    aget-object v7, v5, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v7, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_2
    :try_start_2
    sget-object v6, Lcom/android/server/power/AbuseWakeLockDetector;->CTS_APP_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    iget-object v7, v0, Lcom/android/server/power/AbuseWakeLockDetector;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v7, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v7
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v8, 0x64

    if-le v7, v8, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    :try_start_4
    iget-object v0, v0, Lcom/android/server/power/AbuseWakeLockDetector;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v8, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v8, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    goto :goto_b

    :catch_0
    move v0, v3

    goto :goto_9

    :catch_1
    move v0, v3

    goto :goto_a

    :catch_2
    move v0, v3

    move v7, v0

    goto :goto_9

    :catch_3
    move v0, v3

    move v7, v0

    goto :goto_a

    :catch_4
    move v0, v3

    move v6, v0

    :goto_5
    move v7, v6

    goto :goto_9

    :catch_5
    move v0, v3

    move v6, v0

    :goto_6
    move v7, v6

    goto :goto_a

    :catch_6
    move v0, v3

    move v5, v0

    :goto_7
    move v6, v5

    goto :goto_5

    :catch_7
    move v0, v3

    move v5, v0

    :goto_8
    move v6, v5

    goto :goto_6

    :catch_8
    move v0, v3

    move v4, v0

    move v5, v4

    goto :goto_7

    :catch_9
    move v0, v3

    move v4, v0

    move v5, v4

    goto :goto_8

    :catch_a
    :goto_9
    move p0, v2

    goto :goto_b

    :catch_b
    :goto_a
    const-string/jumbo p0, "Process abuse wakelock; Failed to find "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbuseWakeLockDetector"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :goto_b
    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez p0, :cond_5

    if-nez v0, :cond_5

    goto :goto_c

    :cond_5
    move v2, v3

    :goto_c
    return v2
.end method
