.class public final synthetic Lcom/android/server/wm/AppCompatSafeRegionPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatSafeRegionPolicy;

.field public final synthetic f$1:Landroid/content/pm/PackageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatSafeRegionPolicy;Landroid/content/pm/PackageManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    iput-object p2, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "android.window.PROPERTY_COMPAT_ALLOW_SAFE_REGION_LETTERBOXING"

    iget-object v0, v0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    :try_start_a
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v5, v4}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v3
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    move v3, v2

    :goto_19
    if-eqz v3, :cond_1c

    goto :goto_32

    :cond_1c
    :try_start_1c
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v1, v3, v4, v0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v2
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_32} :catch_32

    :catch_32
    :goto_32
    return v2
.end method
