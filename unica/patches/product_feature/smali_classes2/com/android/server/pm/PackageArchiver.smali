.class public final Lcom/android/server/pm/PackageArchiver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final FILE_PATH:Ljava/lang/String;

.field public static final OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

.field public final mArchiveVersionMap:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public mLauncherApps:Landroid/content/pm/LauncherApps;

.field public final mLauncherIntentSenders:Ljava/util/Map;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "package-version.dat"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageArchiver;->FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance p2, Lcom/android/server/pm/AppStateHelper;

    invoke-direct {p2, p1}, Lcom/android/server/pm/AppStateHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    monitor-enter v0

    :try_start_1d
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/android/server/pm/PackageArchiver;->FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_41

    :try_start_27
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_58
    .catchall {:try_start_27 .. :try_end_2c} :catchall_41

    :try_start_2c
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_43

    :try_start_31
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_45

    :try_start_3a
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_43

    :try_start_3d
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_58
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_61

    :catchall_41
    move-exception p0

    goto :goto_7d

    :catchall_43
    move-exception p1

    goto :goto_4f

    :catchall_45
    move-exception v1

    :try_start_46
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception p1

    :try_start_4b
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4e
    throw v1
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_43

    :goto_4f
    :try_start_4f
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception p2

    :try_start_54
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_57
    throw p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_58} :catch_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_41

    :catch_58
    :try_start_58
    const-string/jumbo p1, "PackageArchiverService"

    const-string/jumbo p2, "versionMap read error!"

    invoke-static {p1, p2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_7b

    const-string/jumbo p1, "PackageArchiverService"

    const-string/jumbo p2, "read readAppVersion"

    invoke-static {p1, p2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    new-instance p1, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_7b
    monitor-exit v0

    return-void

    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_58 .. :try_end_7e} :catchall_41

    throw p0
.end method

.method public static createArchivedActivities(ILjava/util/List;)[Landroid/content/pm/ArchivedActivityParcel;
    .registers 10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_58

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    if-nez v4, :cond_20

    goto :goto_55

    :cond_20
    new-instance v5, Landroid/content/pm/ArchivedActivityParcel;

    invoke-direct {v5}, Landroid/content/pm/ArchivedActivityParcel;-><init>()V

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_42

    move-object v4, v7

    goto :goto_4e

    :cond_42
    invoke-virtual {v4, v2}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    :goto_4e
    iput-object v4, v5, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    iput-object v7, v5, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_58
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/pm/ArchivedActivityParcel;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/ArchivedActivityParcel;

    return-object p0

    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to extract title and icon of main activities"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "No launcher activities"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createArchivedActivities(Lcom/android/server/pm/pkg/ArchiveState;)[Landroid/content/pm/ArchivedActivityParcel;
    .registers 8

    iget-object p0, p0, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    if-eqz p0, :cond_7b

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_60

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    if-nez v3, :cond_25

    goto :goto_5d

    :cond_25
    new-instance v4, Landroid/content/pm/ArchivedActivityParcel;

    invoke-direct {v4}, Landroid/content/pm/ArchivedActivityParcel;-><init>()V

    iget-object v5, v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    iput-object v5, v4, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mIconBitmap:Ljava/nio/file/Path;

    const/4 v6, 0x0

    if-nez v5, :cond_39

    move-object v5, v6

    goto :goto_45

    :cond_39
    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    :goto_45
    iput-object v5, v4, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    iget-object v3, v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mMonochromeIconBitmap:Ljava/nio/file/Path;

    if-nez v3, :cond_4c

    goto :goto_58

    :cond_4c
    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    :goto_58
    iput-object v6, v4, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_73

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/content/pm/ArchivedActivityParcel;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/ArchivedActivityParcel;

    return-object p0

    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to extract title and icon of main activities"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "No activities in archive state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 4

    invoke-interface {p2, p0, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string/jumbo p1, "Package %s not found."

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    return-object p0

    :cond_b
    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z
    .registers 2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static storeAdaptiveDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_15

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Lcom/android/server/pm/PackageArchiver$FixedSizeBitmapDrawable;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v3, v1

    goto :goto_16

    :cond_15
    move-object v3, p1

    :goto_16
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v0, v1

    div-float v4, p1, v0

    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    invoke-direct {p1, v0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageArchiver;->storeDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static storeDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;
    .registers 8

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p2

    const-string/jumbo v2, "package_archiver"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const-string/jumbo p2, "PackageArchiverService"

    if-nez p0, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_40

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Created icons directory at "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_40
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "Unable to create directory "

    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    :goto_4d
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    new-instance p0, Ljava/io/File;

    const-string v1, ".png"

    invoke-static {p3, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, p4}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_64
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p1, p4, v0, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_97

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_71
    .catchall {:try_start_64 .. :try_end_71} :catchall_95

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_90

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Stored icon at "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :catchall_95
    move-exception p0

    goto :goto_ab

    :cond_97
    :try_start_97
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failure to store icon file %s"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_ab
    .catchall {:try_start_97 .. :try_end_ab} :catchall_95

    :goto_ab
    :try_start_ab
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_b3

    :catchall_af
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b3
    throw p0
.end method


# virtual methods
.method public final attachListenerToSession(Landroid/content/IntentSender;II)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p2

    iget v0, p2, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalStatus:I

    if-nez v0, :cond_24

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move v9, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/PackageArchiver;->notifyUnarchivalListener(ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/util/Set;I)V

    return-void

    :cond_24
    const/4 p0, -0x1

    if-ne v0, p0, :cond_37

    iget-object p0, p2, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2a
    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->mUnarchivalListeners:Ljava/util/Set;

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_33

    throw p1

    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Session %s has unarchive status%s but is still active."

    iget p2, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V
    .registers 6

    const-string v0, "Clearing archive states for "

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p0

    if-eqz p1, :cond_9c

    :try_start_b
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v1

    if-nez v1, :cond_17

    goto/16 :goto_9c

    :cond_17
    const-string/jumbo v1, "PackageArchiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_9a

    iget-object p0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p2

    const-string/jumbo v2, "package_archiver"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_6b

    const-string/jumbo p0, "PackageArchiverService"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Icons are already deleted at "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6b
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_81

    const-string/jumbo p0, "PackageArchiverService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to clean up archive files for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_81
    const-string/jumbo p0, "PackageArchiverService"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Deleted icons at "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_9a
    move-exception p1

    goto :goto_9e

    :cond_9c
    :goto_9c
    :try_start_9c
    monitor-exit p0

    return-void

    :goto_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_9a

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p1
.end method

.method public final createAndStoreArchiveState(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .registers 15

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2, p1, v1, p2}, Lcom/android/server/pm/PackageArchiver;->getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_a6

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_a6

    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v1, v7, p1}, Lcom/android/server/pm/PackageArchiver;->verifyInstaller(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    new-instance v3, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageArchiver;ILjava/lang/String;)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_80

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/pm/PackageArchiver;->isProtectivePackage(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageArchiver;->getLauncherActivityInfos(ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v11}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v4, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;

    move-object v5, p0

    move v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/PackageArchiver;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/concurrent/CompletableFuture;)V

    iget-object p0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v11

    :cond_6e
    move-object v9, p2

    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string/jumbo p1, "Protected package %s cannot be archived."

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_80
    move-object v9, p2

    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string/jumbo p1, "The app %s is opted out of archiving."

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_92
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s is not installed."

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a6
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string/jumbo p1, "System apps cannot be archived."

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createArchiveStateInternal(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/android/server/pm/pkg/ArchiveState;
    .registers 14

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v1, 0x0

    move v8, v1

    :goto_1d
    if-ge v8, v7, :cond_4a

    invoke-interface {p4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    mul-int/lit8 v5, v8, 0x2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageArchiver;->storeIcon(Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;III)Ljava/nio/file/Path;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p1, p3, v3, p0, v5}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object p0, v1

    move-object p1, v2

    move p3, v4

    goto :goto_1d

    :cond_4a
    new-instance p0, Lcom/android/server/pm/pkg/ArchiveState;

    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/pkg/ArchiveState;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public decodeIcon(Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;)Landroid/graphics/Bitmap;
    .registers 4

    iget-object p0, p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mIconBitmap:Ljava/nio/file/Path;

    const/4 p1, 0x0

    if-nez p0, :cond_6

    return-object p1

    :cond_6
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Archived icon cannot be decoded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "PackageArchiverService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_29
    return-object v0
.end method

.method public final getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public final getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Z)Landroid/graphics/Bitmap;
    .registers 9

    const-string/jumbo v0, "PackageArchiverService"

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const/4 v3, 0x0

    :try_start_18
    invoke-static {v2, p2, v1, p1}, Lcom/android/server/pm/PackageArchiver;->getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1c} :catch_d7

    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p1

    goto :goto_50

    :cond_2c
    move p2, v2

    :goto_2d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p2, v1, :cond_4f

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-static {v1}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p1

    goto :goto_50

    :cond_4c
    add-int/lit8 p2, p2, 0x1

    goto :goto_2d

    :cond_4f
    move-object p1, v3

    :goto_50
    if-eqz p1, :cond_d6

    iget-object p2, p1, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_5d

    goto :goto_d6

    :cond_5d
    iget-object p1, p1, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageArchiver;->decodeIcon(Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_d5

    if-eqz p3, :cond_d5

    iget-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v1, 0x108014e

    invoke-virtual {p2, v1, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_8b

    const-string/jumbo p0, "Unable to locate cloud overlay for archived app!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_8b
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x210

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/ActivityManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p0

    invoke-static {v0, p0}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_d5
    return-object p1

    :cond_d6
    :goto_d6
    return-object v3

    :catch_d7
    move-exception p0

    const-string/jumbo p2, "Package %s couldn\'t be found."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method public final getLauncherActivityInfos(ILjava/lang/String;)Ljava/util/List;
    .registers 5

    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/Object;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    return-object p0

    :cond_13
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string/jumbo p1, "The app %s does not have a main activity."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getOrCreateLauncherListener(ILjava/lang/String;)Landroid/content/IntentSender;
    .registers 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    monitor-enter p2

    :try_start_b
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    if-eqz v0, :cond_1b

    monitor-exit p2

    return-object v0

    :catchall_19
    move-exception p0

    goto :goto_2e

    :cond_1b
    new-instance v0, Landroid/content/IntentSender;

    new-instance v1, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;-><init>(Lcom/android/server/pm/PackageArchiver;)V

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    return-object v0

    :goto_2e
    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_19

    throw p0
.end method

.method public final isProtectivePackage(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;I)Z
    .registers 12

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    const/4 v5, 0x1

    if-ge v4, v2, :cond_33

    aget v6, v1, v4

    invoke-virtual {v0, v6}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda2;

    invoke-direct {v7, p2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_30

    return v5

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_33
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_36
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x24

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_70

    goto :goto_58

    :catchall_55
    move-exception p0

    goto/16 :goto_16c

    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14e

    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_70

    goto/16 :goto_14e

    :cond_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_36 .. :try_end_71} :catchall_55

    move v0, v3

    move v1, v0

    :goto_73
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_c6

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v6, v2, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_a4
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v6

    if-nez v2, :cond_b4

    move v2, v5

    goto :goto_b5

    :catchall_b1
    move-exception p0

    monitor-exit v6
    :try_end_b3
    .catchall {:try_start_a4 .. :try_end_b3} :catchall_b1

    throw p0

    :cond_b4
    move v2, v3

    :goto_b5
    add-int/2addr v1, v2

    if-le v1, v5, :cond_c3

    const-string/jumbo p0, "PackageArchiverService"

    const-string p1, "Can not archive package. "

    const-string p3, " is installed on multi user."

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_c3
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_c6
    const-string/jumbo p0, "PackageArchiverService"

    const/4 v0, 0x0

    :try_start_ca
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Landroid/content/pm/IPackageManager;->getAppMetadataFd(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d2} :catch_d3

    goto :goto_eb

    :catch_d3
    move-exception p3

    const-string v1, "Failed to get "

    const-string v2, " metadata fd: "

    invoke-static {v1, p2, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v0

    :goto_eb
    if-eqz p3, :cond_11c

    :try_start_ed
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f2} :catch_fa

    :try_start_f2
    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_f6
    .catchall {:try_start_f2 .. :try_end_f6} :catchall_fc

    :try_start_f6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fa

    goto :goto_11c

    :catch_fa
    move-exception p3

    goto :goto_106

    :catchall_fc
    move-exception p3

    :try_start_fd
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_101

    goto :goto_105

    :catchall_101
    move-exception v1

    :try_start_102
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_105
    throw p3
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_106} :catch_fa

    :goto_106
    const-string v1, "Failed to read "

    const-string v2, " metadata: "

    invoke-static {v1, p2, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    :goto_11c
    if-eqz v0, :cond_11f

    goto :goto_124

    :cond_11f
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_124
    const-string/jumbo p0, "com.samsung.android.archiving.disallow_archive"

    invoke-virtual {v0, p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_138

    const-string/jumbo p0, "PackageArchiverService"

    const-string p1, "Can not archive package. "

    const-string p3, " is not allowed by meta data."

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_138
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    if-eqz p0, :cond_14d

    const-string/jumbo p0, "PackageArchiverService"

    const-string p1, "Can not archive package. "

    const-string p3, " is installed on external storage"

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_14d
    return v3

    :cond_14e
    :goto_14e
    :try_start_14e
    const-string/jumbo p0, "PackageArchiverService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not archive package. "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed by SDK version."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v5

    :goto_16c
    monitor-exit v0
    :try_end_16d
    .catchall {:try_start_14e .. :try_end_16d} :catchall_55

    throw p0
.end method

.method public final notifyUnarchivalListener(ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/util/Set;I)V
    .registers 23

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move/from16 v5, p8

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v9, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "android.content.pm.extra.UNARCHIVE_STATUS"

    invoke-virtual {v9, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_aa

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.android.intent.action.UNARCHIVE_ERROR_DIALOG"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "android.content.pm.extra.UNARCHIVE_STATUS"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.USER"

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-lez v0, :cond_3f

    const-string/jumbo v0, "com.android.content.pm.extra.UNARCHIVE_EXTRA_REQUIRED_BYTES"

    invoke-virtual {v6, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3f
    if-eqz v4, :cond_47

    const-string/jumbo v0, "android.intent.extra.INTENT"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_47
    const-string/jumbo v0, "com.android.content.pm.extra.UNARCHIVE_INSTALLER_PACKAGE_NAME"

    move-object/from16 v2, p2

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "PackageArchiverService"

    const/4 v3, 0x0

    :try_start_53
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/16 v4, 0x3e8

    invoke-static {v4, v5, v0, v1}, Lcom/android/server/pm/PackageArchiver;->getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0
    :try_end_5f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_5f} :catch_7c

    invoke-interface {v0, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v0

    if-nez v0, :cond_79

    const-string/jumbo v0, "notifyUnarchivalListener: App not archived %s."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_77
    move-object v0, v3

    goto :goto_8c

    :cond_79
    iget-object v0, v0, Lcom/android/server/pm/pkg/ArchiveState;->mInstallerTitle:Ljava/lang/String;

    goto :goto_8c

    :catch_7c
    move-exception v0

    const-string/jumbo v4, "notifyUnarchivalListener: Couldn\'t fetch package state for %s."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    :goto_8c
    if-nez v0, :cond_90

    move-object v6, v3

    goto :goto_96

    :cond_90
    const-string/jumbo v2, "com.android.content.pm.extra.UNARCHIVE_INSTALLER_TITLE"

    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_96
    if-nez v6, :cond_9a

    goto/16 :goto_12a

    :cond_9a
    const-string/jumbo v0, "android.intent.extra.INTENT"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.USER"

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_aa
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    invoke-interface/range {p7 .. p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/IntentSender;

    :try_start_c3
    iget-object v7, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_d0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c3 .. :try_end_d0} :catch_ea
    .catchall {:try_start_c3 .. :try_end_d0} :catchall_e8

    iget-object v4, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    monitor-enter v4

    :try_start_d3
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_b6

    :catchall_e4
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_e7
    .catchall {:try_start_d3 .. :try_end_e7} :catchall_e4

    throw p0

    :catchall_e8
    move-exception v0

    goto :goto_112

    :catch_ea
    move-exception v0

    :try_start_eb
    const-string/jumbo v4, "PackageArchiverService"

    const-string v6, "Failed to send unarchive intent"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fa
    .catchall {:try_start_eb .. :try_end_fa} :catchall_e8

    iget-object v4, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    monitor-enter v4

    :try_start_fd
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_b6

    :catchall_10e
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_111
    .catchall {:try_start_fd .. :try_end_111} :catchall_10e

    throw p0

    :goto_112
    iget-object v2, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    monitor-enter v2

    :try_start_115
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mLauncherIntentSenders:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_125
    .catchall {:try_start_115 .. :try_end_125} :catchall_126

    throw v0

    :catchall_126
    move-exception v0

    move-object p0, v0

    :try_start_128
    monitor-exit v2
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_126

    throw p0

    :cond_12a
    :goto_12a
    return-void
.end method

.method public final requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Requested archival of package %s for user %s."

    invoke-static {v3, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "PackageArchiverService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v5

    if-nez v5, :cond_65

    const-wide/16 v7, 0x0

    move-object/from16 v12, p2

    invoke-interface {v4, v12, v7, v8, v10}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    if-ne v5, v6, :cond_4c

    goto :goto_67

    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "The UID %s of callerPackageName set by the caller doesn\'t match the caller\'s actual UID %s."

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    move-object/from16 v12, p2

    :goto_67
    const/4 v13, 0x2

    and-int/lit8 v5, p3, 0x2

    const/4 v7, 0x1

    const/4 v14, 0x0

    if-eqz v5, :cond_70

    move v15, v7

    goto :goto_71

    :cond_70
    move v15, v14

    :goto_71
    if-eqz v15, :cond_82

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    goto :goto_86

    :cond_82
    new-array v0, v7, [I

    aput v10, v0, v14

    :goto_86
    array-length v5, v0

    move v7, v14

    :goto_88
    if-ge v7, v5, :cond_9f

    move v8, v7

    aget v7, v0, v8

    move v9, v5

    const-string/jumbo v5, "archiveApp"

    move/from16 v16, v8

    const/4 v8, 0x1

    move/from16 v17, v9

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    add-int/lit8 v7, v16, 0x1

    move/from16 v5, v17

    goto :goto_88

    :cond_9f
    iget-object v4, v1, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_bf

    iget-object v4, v1, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b6

    goto :goto_bf

    :cond_b6
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You need the com.android.permission.DELETE_PACKAGES or com.android.permission.REQUEST_DELETE_PACKAGES permission to request an archival."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    :goto_bf
    array-length v4, v0

    new-array v4, v4, [Ljava/util/concurrent/CompletableFuture;

    :try_start_c2
    array-length v5, v0

    move v7, v14

    :goto_c4
    if-ge v7, v5, :cond_d3

    aget v8, v0, v7

    invoke-virtual {v1, v8, v2}, Lcom/android/server/pm/PackageArchiver;->createAndStoreArchiveState(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v8

    aput-object v8, v4, v7
    :try_end_ce
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c2 .. :try_end_ce} :catch_d1

    add-int/lit8 v7, v7, 0x1

    goto :goto_c4

    :catch_d1
    move-exception v0

    goto :goto_f6

    :cond_d3
    if-eqz v15, :cond_d6

    goto :goto_d7

    :cond_d6
    move v13, v14

    :goto_d7
    or-int/lit8 v0, v13, 0x11

    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v9

    move v4, v0

    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;

    move-object/from16 v5, p4

    move v7, v6

    move v6, v10

    move v8, v11

    move-object v3, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;III)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v3, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, v2, v5}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :goto_f6
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Failed to archive %s with message %s"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestArchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageArchiver;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;Z)V
    .registers 15

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_42

    const-wide/16 v5, 0x0

    invoke-interface {v1, p2, v5, v6, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne v2, v3, :cond_29

    goto :goto_42

    :cond_29
    new-instance p0, Ljava/lang/SecurityException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "The UID %s of callerPackageName set by the caller doesn\'t match the caller\'s actual UID %s."

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    :goto_42
    const-string/jumbo v2, "unarchiveApp"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    :try_start_4a
    invoke-static {v3, v4, v1, p1}, Lcom/android/server/pm/PackageArchiver;->getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    invoke-static {v3, v4, v1, p2}, Lcom/android/server/pm/PackageArchiver;->getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    invoke-interface {v2, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v3
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4a .. :try_end_5a} :catch_137

    if-eqz v3, :cond_122

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10b

    iget-object v2, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_73

    const/4 v2, 0x1

    goto :goto_74

    :cond_73
    const/4 v2, 0x0

    :goto_74
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v2, :cond_91

    if-eqz v1, :cond_88

    goto :goto_91

    :cond_88
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need the com.android.permission.INSTALL_PACKAGES or com.android.permission.REQUEST_INSTALL_PACKAGES permission to request an unarchival."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_91
    :goto_91
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_97

    if-eqz p5, :cond_9c

    :cond_97
    move-object p2, p1

    move-object v7, p3

    move-object p3, p4

    move-object p1, p0

    goto :goto_d3

    :cond_9c
    :try_start_9c
    new-instance v2, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    move v8, v4

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;I)V

    move-object p1, v3

    move-object p2, v4

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p5
    :try_end_b2
    .catch Ljava/lang/RuntimeException; {:try_start_9c .. :try_end_b2} :catch_bd

    new-instance p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;

    move-object p3, p4

    move-object p4, v5

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_bd
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_d2

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_d2
    throw p0

    :goto_d3
    new-instance p0, Landroid/content/Intent;

    const-string/jumbo p4, "com.android.intent.action.UNARCHIVE_DIALOG"

    invoke-direct {p0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p4, "android.content.pm.extra.UNARCHIVE_INTENT_SENDER"

    invoke-virtual {p0, p4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p4, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p5, Landroid/content/Intent;

    invoke-direct {p5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p5, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p4, "android.content.pm.extra.UNARCHIVE_STATUS"

    const/4 v1, -0x1

    invoke-virtual {p5, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p4, "android.intent.extra.INTENT"

    invoke-virtual {p5, p4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p0, "android.intent.extra.USER"

    invoke-virtual {p5, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda13;

    invoke-direct {p0, p1, v7, p2, p5}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/PackageArchiver;Landroid/content/IntentSender;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_10b
    move-object p2, p1

    new-instance p0, Landroid/os/ParcelableException;

    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string/jumbo p3, "No installer found to unarchive app %s."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_122
    :try_start_122
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "Package %s is not currently archived."

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_137
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_122 .. :try_end_137} :catch_137

    :catch_137
    move-exception v0

    move-object p0, v0

    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final requestUnarchiveOnActivityStart(Landroid/content/Intent;Ljava/lang/String;II)I
    .registers 19

    move-object/from16 v2, p2

    move/from16 v8, p3

    move/from16 v0, p4

    const/4 v1, 0x0

    if-nez p1, :cond_b

    :cond_9
    move-object v9, v1

    goto :goto_27

    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    :goto_15
    move-object v9, v1

    move-object v1, v3

    goto :goto_27

    :cond_18
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :goto_27
    const/16 v3, -0x5c

    const-string/jumbo v10, "PackageArchiverService"

    if-nez v1, :cond_35

    const-string/jumbo p0, "packageName cannot be null for unarchival!"

    invoke-static {v10, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_35
    if-nez v2, :cond_3e

    const-string/jumbo p0, "callerPackageName cannot be null for unarchival!"

    invoke-static {v10, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3e
    const/16 v3, 0x7d0

    iget-object v11, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-ne v0, v3, :cond_45

    goto :goto_ac

    :cond_45
    iget-object v3, p0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    if-nez v3, :cond_55

    iget-object v3, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    :cond_55
    iget-object v3, p0, Lcom/android/server/pm/PackageArchiver;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v8}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_5f

    move v3, v8

    goto :goto_61

    :cond_5f
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    :goto_61
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_70

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_71

    :cond_70
    move-object v3, v9

    :goto_71
    if-eqz v3, :cond_7a

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7a

    goto :goto_ac

    :cond_7a
    const-string/jumbo v4, "Requester of unarchival: %s is not the default launcher package: %s."

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-eqz v4, :cond_137

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_137

    invoke-interface {v3}, Lcom/android/server/pm/Computer;->getHomeIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_137

    :goto_ac
    const/16 v6, 0x66

    :try_start_ae
    invoke-virtual {p0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x92

    invoke-virtual {v3, v4, v0, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_fd

    iget-object v3, v11, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v3, v8}, Lcom/android/server/pm/PackageInstallerService;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    move v7, v5

    :goto_c6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_ec

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInstaller$SessionInfo;

    iget-object v13, v12, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    invoke-static {v13, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e9

    iget v13, v12, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    if-ne v13, v8, :cond_e9

    iget-boolean v13, v12, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    if-eqz v13, :cond_e9

    invoke-virtual {v12}, Landroid/content/pm/PackageInstaller$SessionInfo;->isUnarchival()Z

    move-result v13

    if-eqz v13, :cond_e9

    goto :goto_ed

    :cond_e9
    add-int/lit8 v7, v7, 0x1

    goto :goto_c6

    :cond_ec
    move-object v12, v9

    :goto_ed
    if-eqz v12, :cond_fd

    iget-object v0, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v1, v12}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v6

    :catchall_fa
    move-exception v0

    move-object p0, v0

    goto :goto_124

    :cond_fd
    const-string/jumbo v3, "Unarchival is starting for: %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/pm/PackageArchiver;->getOrCreateLauncherListener(ILjava/lang/String;)Landroid/content/IntentSender;

    move-result-object v3

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v8

    invoke-virtual {v8, v4, v0, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11e

    const/4 v5, 0x1

    :cond_11e
    move-object v0, p0

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageArchiver;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;Z)V
    :try_end_123
    .catchall {:try_start_ae .. :try_end_123} :catchall_fa

    return v6

    :goto_124
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "Unexpected error occurred while unarchiving package %s: %s."

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_137
    const-string/jumbo p0, "callerPackageName: %s does not qualify for unarchival of package: %s!"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x5e

    return p0
.end method

.method public final sendIntent(Landroid/content/IntentSender;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 15

    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    iget-object v3, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v5, p4

    invoke-virtual/range {v2 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_17
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    move-object p0, v0

    const-string p1, "Failed to send status for %s with message %s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "PackageArchiverService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_34

    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_31

    iget-object p1, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/PackageArchiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/PackageArchiver;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_31
    move-exception p0

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0

    :cond_34
    :goto_34
    const-string/jumbo p0, "PackageArchiverService"

    const-string/jumbo p1, "packageName is null or empty!"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final storeArchiveState(Ljava/lang/String;Lcom/android/server/pm/pkg/ArchiveState;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p0

    iput-object p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    goto :goto_39

    :cond_28
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string/jumbo p2, "Package %s not found."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_26

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public storeIcon(Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;III)Ljava/nio/file/Path;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/content/pm/LauncherActivityInfo;->getUnthemedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1, p0, p3, p4, p5}, Lcom/android/server/pm/PackageArchiver;->storeDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public final verifyInstaller(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1d

    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/PackageArchiver;->verifySupportsUnarchival(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_1d

    :cond_15
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p1, "Installer does not support unarchival"

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    return-object p0

    :cond_26
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p1, "Failed to obtain Installer info"

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string/jumbo p1, "No installer found"

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifySupportsUnarchival(ILjava/lang/String;)Z
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2d

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.UNARCHIVE_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    new-instance v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/Object;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ParceledListSlice;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x0

    return p0
.end method
