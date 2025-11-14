.class public final synthetic Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatResizeOverrides;

.field public final synthetic f$1:Landroid/content/pm/PackageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatResizeOverrides;Landroid/content/pm/PackageManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatResizeOverrides;

    iput-object p2, p0, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 7

    const-string/jumbo v0, "android.window.PROPERTY_COMPAT_ALLOW_RESTRICTED_RESIZABILITY"

    iget-object v1, p0, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatResizeOverrides;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManager;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_f
    invoke-virtual {p0, v0, v2, v5, v3}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v2
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    move v2, v4

    :goto_19
    if-eqz v2, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    :try_start_1d
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_33} :catch_34

    return p0

    :catch_34
    return v4
.end method
