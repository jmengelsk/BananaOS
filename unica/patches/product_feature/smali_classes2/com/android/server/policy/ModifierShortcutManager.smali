.class public final Lcom/android/server/policy/ModifierShortcutManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppIntentCache:Ljava/util/Map;

.field public final mBookmarks:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:Landroid/os/UserHandle;

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final mRoleIntents:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/16 v2, 0x40

    const-string/jumbo v3, "android.app.role.BROWSER"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0x41

    const-string/jumbo v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xcf

    const-string/jumbo v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd0

    const-string/jumbo v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd1

    const-string/jumbo v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd2

    const-string/jumbo v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleIntents:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    const-class p3, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/role/RoleManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/ModifierShortcutManager;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p3, p1, v0, v1}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    iput-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const-class p0, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/InputManagerService$LocalService;

    return-void
.end method

.method public static getIntentCategoryLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_ae

    goto/16 :goto_70

    :sswitch_11
    const-string/jumbo v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_70

    :cond_1b
    const/4 v1, 0x7

    goto :goto_70

    :sswitch_1d
    const-string/jumbo v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_70

    :cond_27
    const/4 v1, 0x6

    goto :goto_70

    :sswitch_29
    const-string/jumbo v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_70

    :cond_33
    const/4 v1, 0x5

    goto :goto_70

    :sswitch_35
    const-string/jumbo v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_70

    :cond_3f
    const/4 v1, 0x4

    goto :goto_70

    :sswitch_41
    const-string/jumbo v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_70

    :cond_4b
    const/4 v1, 0x3

    goto :goto_70

    :sswitch_4d
    const-string/jumbo v2, "android.intent.category.APP_MESSAGING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_70

    :cond_57
    const/4 v1, 0x2

    goto :goto_70

    :sswitch_59
    const-string/jumbo v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_70

    :cond_63
    const/4 v1, 0x1

    goto :goto_70

    :sswitch_65
    const-string/jumbo v2, "android.intent.category.APP_MAPS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v1, 0x0

    :goto_70
    packed-switch v1, :pswitch_data_d0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "No label for app category "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ModifierShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :pswitch_8a  #0x7
    const p1, 0x104070b

    goto :goto_a9

    :pswitch_8e  #0x6
    const p1, 0x104070a

    goto :goto_a9

    :pswitch_92  #0x5
    const p1, 0x104070f

    goto :goto_a9

    :pswitch_96  #0x4
    const p1, 0x104070d

    goto :goto_a9

    :pswitch_9a  #0x3
    const p1, 0x104070c

    goto :goto_a9

    :pswitch_9e  #0x2
    const p1, 0x1040710

    goto :goto_a9

    :pswitch_a2  #0x1
    const p1, 0x1040709

    goto :goto_a9

    :pswitch_a6  #0x0
    const p1, 0x104070e

    :goto_a9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_ae
    .sparse-switch
        -0x7ae0672e -> :sswitch_65
        -0x70f45113 -> :sswitch_59
        -0x20da2677 -> :sswitch_4d
        0x19b1550e -> :sswitch_41
        0x1e6800a1 -> :sswitch_35
        0x1edca32a -> :sswitch_29
        0x267d18fd -> :sswitch_1d
        0x30e2eff9 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_a6  #00000000
        :pswitch_a2  #00000001
        :pswitch_9e  #00000002
        :pswitch_9a  #00000003
        :pswitch_96  #00000004
        :pswitch_92  #00000005
        :pswitch_8e  #00000006
        :pswitch_8a  #00000007
    .end packed-switch
.end method

.method public static getRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "ModifierShortcutManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_48

    invoke-virtual {v0, p1}, Landroid/app/role/RoleManager;->getDefaultApplication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_29

    const-string/jumbo v0, "com.android.server.policy.ModifierShortcutManager.EXTRA_ROLE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_29
    const-string/jumbo v0, "No launch intent for role "

    invoke-static {v0, p1, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_30
    const-string/jumbo v0, "No default application for role "

    const-string v1, " user="

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_48
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Role "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static resolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x40000

    :try_start_b
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_23

    :catch_f
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-direct {v2, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1f
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_22} :catch_35

    move-object v0, v2

    :goto_23
    new-instance p0, Landroid/content/Intent;

    const-string/jumbo p1, "android.intent.action.MAIN"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0

    :catch_35
    const-string/jumbo p0, "Unable to add bookmark: "

    const-string v0, "/"

    const-string v1, " not found."

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ModifierShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getIntentFromAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/content/Intent;
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_1c

    monitor-exit v1

    return-object v2

    :catchall_1a
    move-exception p0

    goto :goto_5d

    :cond_1c
    instance-of v3, p1, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v3, :cond_2f

    const-string/jumbo v0, "android.intent.action.MAIN"

    move-object v2, p1

    check-cast v2, Landroid/hardware/input/AppLaunchData$CategoryData;

    invoke-virtual {v2}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_52

    :cond_2f
    instance-of v3, p1, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v3, :cond_3f

    move-object v2, p1

    check-cast v2, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {v2}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_52

    :cond_3f
    instance-of v3, p1, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v3, :cond_52

    move-object v2, p1

    check-cast v2, Landroid/hardware/input/AppLaunchData$ComponentData;

    invoke-virtual {v2}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/android/server/policy/ModifierShortcutManager;->resolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    :cond_52
    :goto_52
    if-eqz v2, :cond_5b

    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    monitor-exit v1

    return-object v2

    :goto_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_c .. :try_end_5e} :catchall_1a

    throw p0
.end method

.method public shortcutInfoFromIntent(CLandroid/content/Intent;Z)Landroid/view/KeyboardShortcutInfo;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-nez v3, :cond_1a

    return-object v0

    :cond_1a
    const-class v4, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p0, p2}, Lcom/android/server/policy/ModifierShortcutManager;->getIntentCategoryLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_41

    return-object v0

    :cond_41
    const v0, 0x1080093

    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_57

    :cond_49
    invoke-virtual {v3, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object p0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    :goto_57
    if-eqz p3, :cond_5c

    const v2, 0x10001

    :cond_5c
    new-instance p3, Landroid/view/KeyboardShortcutInfo;

    invoke-direct {p3, p2, p0, p1, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;CI)V

    return-object p3
.end method
