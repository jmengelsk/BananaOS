.class public abstract Lcom/android/server/pm/SaferIntentUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_57

    :cond_9
    iget v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_57

    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/Computer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_1b
    if-ltz v1, :cond_57

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    const/4 v6, 0x0

    if-eqz v5, :cond_48

    check-cast v4, Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_2b

    goto :goto_57

    :cond_2b
    if-nez v3, :cond_31

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v3

    :cond_31
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    invoke-static {v4, v3, v5}, Lcom/android/server/pm/SaferIntentUtils;->infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    move-result-object v4

    if-eqz v4, :cond_4e

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_4c

    :cond_48
    instance-of v4, v4, Landroid/content/IntentFilter;

    if-eqz v4, :cond_4e

    :goto_4c
    move v4, v6

    goto :goto_4f

    :cond_4e
    move v4, v2

    :goto_4f
    if-nez v4, :cond_54

    invoke-virtual {p0, v2, v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    :cond_54
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    :cond_57
    :goto_57
    return-void
.end method

.method public static enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_17

    goto/16 :goto_1b0

    :cond_17
    iget v6, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-static {v6}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v6

    if-eqz v6, :cond_21

    goto/16 :goto_1b0

    :cond_21
    iget-object v6, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/Computer;

    invoke-interface {v6}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_2c
    if-ltz v7, :cond_1b0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v8

    iget-object v9, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v10, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-static {v10, v9}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-eqz v9, :cond_49

    :cond_44
    :goto_44
    move v3, v5

    :cond_45
    :goto_45
    const/16 v25, -0x1

    goto/16 :goto_1a9

    :cond_49
    iget-boolean v9, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    invoke-static {v8, v6, v9}, Lcom/android/server/pm/SaferIntentUtils;->infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    move-result-object v8

    if-eqz v8, :cond_44

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5c

    goto :goto_44

    :cond_5c
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntentMatchingFlags()I

    move-result v9

    if-eqz v9, :cond_6d

    and-int/lit8 v11, v9, 0x1

    if-eq v11, v5, :cond_6d

    and-int/lit8 v11, v9, 0x2

    if-nez v11, :cond_6b

    goto :goto_6d

    :cond_6b
    move v11, v5

    goto :goto_6e

    :cond_6d
    :goto_6d
    const/4 v11, 0x0

    :goto_6e
    and-int/2addr v9, v3

    if-ne v9, v3, :cond_73

    move v9, v5

    goto :goto_74

    :cond_73
    const/4 v9, 0x0

    :goto_74
    iget-object v12, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7e

    move v12, v5

    goto :goto_7f

    :cond_7e
    const/4 v12, 0x0

    :goto_7f
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_88
    const/4 v15, 0x3

    if-ge v14, v13, :cond_14d

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    iget-object v10, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    move/from16 v23, v5

    iget-object v5, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    sget-object v16, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Lcom/android/server/IntentResolver$1;

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v16

    and-int/lit8 v16, v16, 0x8

    if-eqz v16, :cond_ac

    move/from16 v24, v23

    goto :goto_ae

    :cond_ac
    const/16 v24, 0x0

    :goto_ae
    const-string v2, "IntentResolver"

    if-eqz v24, :cond_ba

    move-object/from16 v18, v5

    new-instance v5, Landroid/util/LogPrinter;

    invoke-direct {v5, v4, v2, v15}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    goto :goto_bd

    :cond_ba
    move-object/from16 v18, v5

    const/4 v5, 0x0

    :goto_bd
    if-eqz v24, :cond_e7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v15, "Intent: "

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Matching against filter: "

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "  "

    invoke-virtual {v3, v5, v4}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_e7
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual {v10}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v21

    const-string v22, "IntentResolver"

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v22}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_11b

    if-eqz v24, :cond_118

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Filter matched!  match=0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_118
    move/from16 v2, v23

    goto :goto_150

    :cond_11b
    if-eqz v24, :cond_145

    const/4 v4, -0x4

    if-eq v3, v4, :cond_139

    const/4 v4, -0x3

    if-eq v3, v4, :cond_135

    const/4 v4, -0x2

    if-eq v3, v4, :cond_131

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12d

    const-string/jumbo v3, "unknown reason"

    goto :goto_13c

    :cond_12d
    const-string/jumbo v3, "type"

    goto :goto_13c

    :cond_131
    const-string/jumbo v3, "data"

    goto :goto_13c

    :cond_135
    const-string/jumbo v3, "action"

    goto :goto_13c

    :cond_139
    const-string/jumbo v3, "category"

    :goto_13c
    const-string v4, "Filter did not match: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_145
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v23

    const/4 v3, 0x4

    const/4 v4, 0x2

    goto/16 :goto_88

    :cond_14d
    move/from16 v23, v5

    const/4 v2, 0x0

    :goto_150
    if-eqz v11, :cond_15b

    if-eqz v12, :cond_156

    if-eqz v9, :cond_158

    :cond_156
    if-nez v2, :cond_15b

    :cond_158
    move/from16 v10, v23

    goto :goto_15c

    :cond_15b
    const/4 v10, 0x0

    :goto_15c
    if-eqz v12, :cond_164

    move/from16 v3, v23

    invoke-virtual {v0, v3, v10}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    goto :goto_16a

    :cond_164
    if-nez v2, :cond_16a

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v10}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    :cond_16a
    :goto_16a
    if-nez v12, :cond_171

    if-nez v2, :cond_16f

    goto :goto_171

    :cond_16f
    const/4 v3, 0x1

    goto :goto_177

    :cond_171
    :goto_171
    iget-object v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    :goto_177
    if-eqz v10, :cond_45

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Intent does not match component\'s intent filter: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "PackageManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Access blocked: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_45

    :goto_1a9
    add-int/lit8 v7, v7, -0x1

    move v5, v3

    const/4 v3, 0x4

    const/4 v4, 0x2

    goto/16 :goto_2c

    :cond_1b0
    :goto_1b0
    return-void
.end method

.method public static filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .registers 14

    if-eqz p1, :cond_a5

    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_a5

    iget v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_a5

    :cond_1c
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6e

    iget-object v3, v0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    const-wide/32 v5, 0xdabca61

    if-eqz v3, :cond_51

    array-length v7, v3

    if-nez v7, :cond_37

    goto :goto_51

    :cond_37
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    array-length v8, v3

    move v9, v1

    move v10, v2

    :goto_3e
    if-ge v9, v8, :cond_69

    aget-object v11, v3, v9

    invoke-static {v11, v7}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v0, v11, v4}, Lcom/android/server/compat/PlatformCompat;->fixTargetSdk(Landroid/content/pm/ApplicationInfo;I)V

    invoke-virtual {v0, v5, v6, v11}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v11

    and-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    :cond_51
    :goto_51
    iget-object v0, v0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v0, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    if-nez v0, :cond_63

    move v10, v2

    goto :goto_69

    :cond_63
    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result v0

    xor-int/2addr v0, v2

    move v10, v0

    :cond_69
    :goto_69
    if-eqz v10, :cond_6c

    goto :goto_6e

    :cond_6c
    move v0, v1

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v0, v2

    :goto_6f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_74
    if-ltz v3, :cond_9e

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_89

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v4, :cond_94

    goto :goto_9b

    :cond_89
    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_9b

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    iget-boolean v4, v4, Lcom/android/server/am/BroadcastFilter;->exported:Z

    if-eqz v4, :cond_94

    goto :goto_9b

    :cond_94
    if-nez v0, :cond_97

    goto :goto_9f

    :cond_97
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v2

    :cond_9b
    :goto_9b
    add-int/lit8 v3, v3, -0x1

    goto :goto_74

    :cond_9e
    move v2, v1

    :goto_9f
    if-eqz v2, :cond_a5

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    :cond_a5
    :goto_a5
    return-void
.end method

.method public static infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .registers 4

    instance-of v0, p0, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_18

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    return-object p0

    :cond_18
    instance-of p2, p0, Landroid/content/pm/ServiceInfo;

    if-eqz p2, :cond_25

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object p0

    return-object p0

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unsupported component type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reportUnsafeIntentEvent(IIILandroid/content/Intent;Ljava/lang/String;Z)V
    .registers 17

    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_9
    move-object v7, v0

    goto :goto_1b

    :cond_b
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_9

    :goto_1b
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    :goto_22
    move-object v4, v0

    goto :goto_2d

    :cond_24
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :goto_2d
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0x23d

    move v2, p0

    move v3, p1

    move-object v8, p4

    move/from16 v10, p5

    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1, p2, p0, p3}, Landroid/app/ActivityManagerInternal;->triggerUnsafeIntentStrictMode(IILandroid/content/Intent;)V

    return-void
.end method
