.class public final Lcom/android/server/sepunion/cover/CoverManagerAllowLists;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAllowList:Ljava/util/HashMap;

.field public mPrefixPackage:Ljava/util/ArrayList;

.field public mSignaturesMap:Landroid/util/SparseArray;


# direct methods
.method public static getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_13

    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final isAllowedToUse(Landroid/content/Context;II)Z
    .registers 10

    const-string v0, "CoverManager_CoverManagerAllowLists"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_8c

    :cond_10
    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    :try_start_1c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_25} :catch_26

    goto :goto_2c

    :catch_26
    move-exception v4

    const-string v5, "Error creating user context"

    invoke-static {v0, v5, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    const/4 v4, 0x0

    :try_start_2d
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v5, 0x40

    invoke-virtual {p1, p3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p1, p3, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_3f} :catch_40

    goto :goto_58

    :catch_40
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Package "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found for user!"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    :goto_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    if-eq p1, p2, :cond_65

    const-string/jumbo p0, "isAllowedToUse : pkg does not match uid"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_65
    if-nez v4, :cond_6e

    const-string/jumbo p0, "isAllowedToUse : pkgInfo is null"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6e
    iget-object p1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_77

    goto :goto_8c

    :cond_77
    const-string/jumbo p1, "eng"

    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    goto :goto_8c

    :cond_83
    iget-object p1, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isMatchedSignature([Landroid/content/pm/Signature;I)Z

    move-result p2

    if-eqz p2, :cond_8e

    :goto_8c
    const/4 p0, 0x1

    return p0

    :cond_8e
    if-eqz p3, :cond_b8

    :try_start_90
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/4 v2, 0x2

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mPrefixPackage:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_a2
    if-ge v3, v2, :cond_b8

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b0} :catch_b4

    if-eqz v5, :cond_a2

    move-object p3, v4

    goto :goto_b8

    :catch_b4
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b8
    :goto_b8
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_d5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "isAllowedToUse : cover manager allow lists does not include this App : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isMatchedSignature([Landroid/content/pm/Signature;I)Z

    move-result p0

    return p0
.end method

.method public final isMatchedSignature([Landroid/content/pm/Signature;I)Z
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/16 v3, 0xe

    const/4 v4, 0x1

    if-ge v2, v3, :cond_20

    shl-int v3, v4, v2

    and-int v4, p2, v3

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_20
    if-eqz p1, :cond_43

    array-length p0, p1

    move p2, v1

    :goto_24
    if-ge p2, p0, :cond_43

    aget-object v2, p1, p2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    :cond_2d
    if-ge v5, v3, :cond_40

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/content/pm/Signature;

    if-eqz v6, :cond_2d

    invoke-virtual {v6, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    return v4

    :cond_40
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    :cond_43
    return v1
.end method
