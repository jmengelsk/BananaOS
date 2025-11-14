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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/AbuseWakeLockDetector;

    iput-object p2, p0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 11

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

    :try_start_13
    iget-object v4, v0, Lcom/android/server/power/AbuseWakeLockDetector;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1d} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_7b

    and-int/2addr v4, v2

    if-eqz v4, :cond_22

    move v4, v2

    goto :goto_23

    :cond_22
    move v4, v3

    :goto_23
    :try_start_23
    sget-object v5, Lcom/android/server/power/AbuseWakeLockDetector;->SEC_APP_PREFIX:[Ljava/lang/String;

    move v6, v3

    :goto_26
    const/4 v7, 0x2

    if-ge v6, v7, :cond_36

    aget-object v7, v5, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_2f} :catch_77
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_73

    if-eqz v7, :cond_33

    move v5, v2

    goto :goto_37

    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_36
    move v5, v3

    :goto_37
    :try_start_37
    sget-object v6, Lcom/android/server/power/AbuseWakeLockDetector;->CTS_APP_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_41} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_41} :catch_6b

    :try_start_41
    iget-object v7, v0, Lcom/android/server/power/AbuseWakeLockDetector;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v7, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v7
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_47} :catch_68
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_47} :catch_65

    const/16 v8, 0x64

    if-le v7, v8, :cond_4d

    move v7, v2

    goto :goto_4e

    :cond_4d
    move v7, v3

    :goto_4e
    :try_start_4e
    iget-object v0, v0, Lcom/android/server/power/AbuseWakeLockDetector;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v8, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v8, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4e .. :try_end_57} :catch_63
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_57} :catch_61

    if-nez v0, :cond_5b

    move v0, v2

    goto :goto_5c

    :cond_5b
    move v0, v3

    :goto_5c
    :try_start_5c
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_60
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_60} :catch_85
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_60} :catch_83

    goto :goto_92

    :catch_61
    move v0, v3

    goto :goto_83

    :catch_63
    move v0, v3

    goto :goto_85

    :catch_65
    move v0, v3

    move v7, v0

    goto :goto_83

    :catch_68
    move v0, v3

    move v7, v0

    goto :goto_85

    :catch_6b
    move v0, v3

    move v6, v0

    :goto_6d
    move v7, v6

    goto :goto_83

    :catch_6f
    move v0, v3

    move v6, v0

    :goto_71
    move v7, v6

    goto :goto_85

    :catch_73
    move v0, v3

    move v5, v0

    :goto_75
    move v6, v5

    goto :goto_6d

    :catch_77
    move v0, v3

    move v5, v0

    :goto_79
    move v6, v5

    goto :goto_71

    :catch_7b
    move v0, v3

    move v4, v0

    move v5, v4

    goto :goto_75

    :catch_7f
    move v0, v3

    move v4, v0

    move v5, v4

    goto :goto_79

    :catch_83
    :goto_83
    move p0, v2

    goto :goto_92

    :catch_85
    :goto_85
    const-string/jumbo p0, "Process abuse wakelock; Failed to find "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbuseWakeLockDetector"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :goto_92
    if-eqz v7, :cond_a1

    if-eqz v1, :cond_a1

    if-nez v4, :cond_a1

    if-nez v5, :cond_a1

    if-nez v6, :cond_a1

    if-nez p0, :cond_a1

    if-nez v0, :cond_a1

    goto :goto_a2

    :cond_a1
    move v2, v3

    :goto_a2
    return v2
.end method
